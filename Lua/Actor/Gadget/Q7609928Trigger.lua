require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609928Trigger = class("Q7609928Trigger", GadgetActorProxy)
Q7609928Trigger.defaultAlias = "Q7609928Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609928Trigger:OnPostDataPrepare()
    print("Q7609928Trigger - OnPostDataPrepare")
    this = self
end

function Q7609928Trigger:OnPostComponentPrepare()
    print("Q7609928Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "6_3_YZT_Enterwq", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609928Trigger:TriggerIn()
    print("Q7609928Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609928)
    this:DestroySelf()
end

function Q7609928Trigger:PreTriggerIn()
    print("Q7609928Trigger - PreTriggerIn")
end

function Q7609928Trigger:LightUpTriggerIn()
    print("Q7609928Trigger - LightUpTriggerIn")
end

function Q7609928Trigger:TriggerOut()
    print("Q7609928Trigger - TriggerOut")
end

return Q7609928Trigger
