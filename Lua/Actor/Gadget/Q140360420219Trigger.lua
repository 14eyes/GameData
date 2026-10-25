require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q140360420219Trigger = class("Q140360420219Trigger", GadgetActorProxy)
Q140360420219Trigger.defaultAlias = "Q140360420219Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q140360420219Trigger:OnPostDataPrepare()
    print("Q140360420219Trigger - OnPostDataPrepare")
    this = self
end

function Q140360420219Trigger:OnPostComponentPrepare()
    print("Q140360420219Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "MirrorWorld_LimitRegion_TRPGGame2", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q140360420219Trigger:TriggerIn()
    print("Q140360420219Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403604)
    this:DestroySelf()
end

function Q140360420219Trigger:PreTriggerIn()
    print("Q140360420219Trigger - PreTriggerIn")
end

function Q140360420219Trigger:LightUpTriggerIn()
    print("Q140360420219Trigger - LightUpTriggerIn")
end

function Q140360420219Trigger:TriggerOut()
    print("Q140360420219Trigger - TriggerOut")
end

return Q140360420219Trigger
