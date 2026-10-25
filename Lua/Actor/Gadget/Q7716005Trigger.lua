require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716005Trigger = class("Q7716005Trigger", GadgetActorProxy)
Q7716005Trigger.defaultAlias = "Q7716005Trigger"
local Q77160ClientConfig = require("Quest/Client/Q77160ClientConfig")

local this
local subIDs = Q77160ClientConfig.SubIDs
local datas = Q77160ClientConfig.Datas
local npcs = Q77160ClientConfig.Npcs
local points = Q77160ClientConfig.Points

function Q7716005Trigger:OnPostDataPrepare()
    print("Q7716005Trigger - OnPostDataPrepare")
    this = self
end

function Q7716005Trigger:OnPostComponentPrepare()
    print("Q7716005Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(120, 35, 40.487705, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77160)
end

function Q7716005Trigger:TriggerIn()
    print("Q7716005Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7716005)
    this:DestroySelf()
end

function Q7716005Trigger:PreTriggerIn()
    print("Q7716005Trigger - PreTriggerIn")
end

function Q7716005Trigger:LightUpTriggerIn()
    print("Q7716005Trigger - LightUpTriggerIn")
end

function Q7716005Trigger:TriggerOut()
    print("Q7716005Trigger - TriggerOut")
end

return Q7716005Trigger
