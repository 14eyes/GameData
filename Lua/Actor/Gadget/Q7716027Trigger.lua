require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716027Trigger = class("Q7716027Trigger", GadgetActorProxy)
Q7716027Trigger.defaultAlias = "Q7716027Trigger"
local Q77160ClientConfig = require("Quest/Client/Q77160ClientConfig")

local this
local subIDs = Q77160ClientConfig.SubIDs
local datas = Q77160ClientConfig.Datas
local npcs = Q77160ClientConfig.Npcs
local points = Q77160ClientConfig.Points

function Q7716027Trigger:OnPostDataPrepare()
    print("Q7716027Trigger - OnPostDataPrepare")
    this = self
end

function Q7716027Trigger:OnPostComponentPrepare()
    print("Q7716027Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(11.85723, 5.128137, 15.357312, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77160)
end

function Q7716027Trigger:TriggerIn()
    print("Q7716027Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7716027})
    this:DestroySelf()
end

function Q7716027Trigger:PreTriggerIn()
    print("Q7716027Trigger - PreTriggerIn")
end

function Q7716027Trigger:LightUpTriggerIn()
    print("Q7716027Trigger - LightUpTriggerIn")
end

function Q7716027Trigger:TriggerOut()
    print("Q7716027Trigger - TriggerOut")
end

return Q7716027Trigger
