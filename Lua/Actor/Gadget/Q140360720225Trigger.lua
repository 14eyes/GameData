require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q140360720225Trigger = class("Q140360720225Trigger", GadgetActorProxy)
Q140360720225Trigger.defaultAlias = "Q140360720225Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q140360720225Trigger:OnPostDataPrepare()
    print("Q140360720225Trigger - OnPostDataPrepare")
    this = self
end

function Q140360720225Trigger:OnPostComponentPrepare()
    print("Q140360720225Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "MirrorWorld_LimitRegion_TRPGGame3", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q140360720225Trigger:TriggerIn()
    print("Q140360720225Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403607)
    this:DestroySelf()
end

function Q140360720225Trigger:PreTriggerIn()
    print("Q140360720225Trigger - PreTriggerIn")
end

function Q140360720225Trigger:LightUpTriggerIn()
    print("Q140360720225Trigger - LightUpTriggerIn")
end

function Q140360720225Trigger:TriggerOut()
    print("Q140360720225Trigger - TriggerOut")
end

return Q140360720225Trigger
