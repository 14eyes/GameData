require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609929Trigger = class("Q7609929Trigger", GadgetActorProxy)
Q7609929Trigger.defaultAlias = "Q7609929Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609929Trigger:OnPostDataPrepare()
    print("Q7609929Trigger - OnPostDataPrepare")
    this = self
end

function Q7609929Trigger:OnPostComponentPrepare()
    print("Q7609929Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "6_3_YZT_Enterwq", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609929Trigger:TriggerIn()
    print("Q7609929Trigger - TriggerIn")
end

function Q7609929Trigger:PreTriggerIn()
    print("Q7609929Trigger - PreTriggerIn")
end

function Q7609929Trigger:LightUpTriggerIn()
    print("Q7609929Trigger - LightUpTriggerIn")
end

function Q7609929Trigger:TriggerOut()
    print("Q7609929Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7609929)
    this:DestroySelf()
end

return Q7609929Trigger
