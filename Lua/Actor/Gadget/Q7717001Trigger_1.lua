require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7717001Trigger_1 = class("Q7717001Trigger_1", GadgetActorProxy)
Q7717001Trigger_1.defaultAlias = "Q7717001Trigger_1"
local Q77170ClientConfig = require("Quest/Client/Q77170ClientConfig")

local this
local subIDs = Q77170ClientConfig.SubIDs
local npcs = Q77170ClientConfig.Npcs

function Q7717001Trigger_1:OnPostDataPrepare()
    print("Q7717001Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7717001Trigger_1:OnPostComponentPrepare()
    print("Q7717001Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77170)
end

function Q7717001Trigger_1:TriggerIn()
    print("Q7717001Trigger_1 - TriggerIn")
    this:DestroySelf()
end

function Q7717001Trigger_1:PreTriggerIn()
    print("Q7717001Trigger_1 - PreTriggerIn")
end

function Q7717001Trigger_1:LightUpTriggerIn()
    print("Q7717001Trigger_1 - LightUpTriggerIn")
end

function Q7717001Trigger_1:TriggerOut()
    print("Q7717001Trigger_1 - TriggerOut")
end

return Q7717001Trigger_1
