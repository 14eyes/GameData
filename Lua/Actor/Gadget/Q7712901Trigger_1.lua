require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712901Trigger_1 = class("Q7712901Trigger_1", GadgetActorProxy)
Q7712901Trigger_1.defaultAlias = "Q7712901Trigger_1"
local Q77129ClientConfig = require("Quest/Client/Q77129ClientConfig")

local this
local subIDs = Q77129ClientConfig.SubIDs
local datas = Q77129ClientConfig.Datas
local npcs = Q77129ClientConfig.Npcs
local points = Q77129ClientConfig.Points

function Q7712901Trigger_1:OnPostDataPrepare()
    print("Q7712901Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7712901Trigger_1:OnPostComponentPrepare()
    print("Q7712901Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(105, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77129)
end

function Q7712901Trigger_1:TriggerIn()
    print("Q7712901Trigger_1 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712901})
    this:DestroySelf()
end

function Q7712901Trigger_1:PreTriggerIn()
    print("Q7712901Trigger_1 - PreTriggerIn")
end

function Q7712901Trigger_1:LightUpTriggerIn()
    print("Q7712901Trigger_1 - LightUpTriggerIn")
end

function Q7712901Trigger_1:TriggerOut()
    print("Q7712901Trigger_1 - TriggerOut")
end

return Q7712901Trigger_1
