require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701257Trigger = class("Q701257Trigger", GadgetActorProxy)
Q701257Trigger.defaultAlias = "Q701257Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701257Trigger:OnPostDataPrepare()
    print("Q701257Trigger - OnPostDataPrepare")
    this = self
end

function Q701257Trigger:OnPostComponentPrepare()
    print("Q701257Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "7_0_AQ701257_RollbackRegeion_01", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701257Trigger:TriggerIn()
    print("Q701257Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701257})
    this:DestroySelf()
end

function Q701257Trigger:PreTriggerIn()
    print("Q701257Trigger - PreTriggerIn")
end

function Q701257Trigger:LightUpTriggerIn()
    print("Q701257Trigger - LightUpTriggerIn")
end

function Q701257Trigger:TriggerOut()
    print("Q701257Trigger - TriggerOut")
end

return Q701257Trigger
