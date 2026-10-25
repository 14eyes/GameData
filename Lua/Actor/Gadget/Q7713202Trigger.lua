require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713202Trigger = class("Q7713202Trigger", GadgetActorProxy)
Q7713202Trigger.defaultAlias = "Q7713202Trigger"
local Q77132ClientConfig = require("Quest/Client/Q77132ClientConfig")

local this
local subIDs = Q77132ClientConfig.SubIDs
local datas = Q77132ClientConfig.Datas
local npcs = Q77132ClientConfig.Npcs
local points = Q77132ClientConfig.Points

function Q7713202Trigger:OnPostDataPrepare()
    print("Q7713202Trigger - OnPostDataPrepare")
    this = self
end

function Q7713202Trigger:OnPostComponentPrepare()
    print("Q7713202Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8.721468, 8, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77132)
end

function Q7713202Trigger:TriggerIn()
    print("Q7713202Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713202})
    this:DestroySelf()
end

function Q7713202Trigger:PreTriggerIn()
    print("Q7713202Trigger - PreTriggerIn")
end

function Q7713202Trigger:LightUpTriggerIn()
    print("Q7713202Trigger - LightUpTriggerIn")
end

function Q7713202Trigger:TriggerOut()
    print("Q7713202Trigger - TriggerOut")
end

return Q7713202Trigger
