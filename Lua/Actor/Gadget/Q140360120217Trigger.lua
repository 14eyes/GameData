require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q140360120217Trigger = class("Q140360120217Trigger", GadgetActorProxy)
Q140360120217Trigger.defaultAlias = "Q140360120217Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q140360120217Trigger:OnPostDataPrepare()
    print("Q140360120217Trigger - OnPostDataPrepare")
    this = self
end

function Q140360120217Trigger:OnPostComponentPrepare()
    print("Q140360120217Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "MirrorWorld_LimitRegion_TRPGGame1", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q140360120217Trigger:TriggerIn()
    print("Q140360120217Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403601)
    this:DestroySelf()
end

function Q140360120217Trigger:PreTriggerIn()
    print("Q140360120217Trigger - PreTriggerIn")
end

function Q140360120217Trigger:LightUpTriggerIn()
    print("Q140360120217Trigger - LightUpTriggerIn")
end

function Q140360120217Trigger:TriggerOut()
    print("Q140360120217Trigger - TriggerOut")
end

return Q140360120217Trigger
