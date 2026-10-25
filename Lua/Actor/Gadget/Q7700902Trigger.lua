require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700902Trigger = class("Q7700902Trigger", GadgetActorProxy)
Q7700902Trigger.defaultAlias = "Q7700902Trigger"
local Q77009ClientConfig = require("Quest/Client/Q77009ClientConfig")

local this
local subIDs = Q77009ClientConfig.SubIDs
local datas = Q77009ClientConfig.Datas
local npcs = Q77009ClientConfig.Npcs

function Q7700902Trigger:OnPostDataPrepare()
    print("Q7700902Trigger - OnPostDataPrepare")
    this = self
end

function Q7700902Trigger:OnPostComponentPrepare()
    print("Q7700902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77009)
end

function Q7700902Trigger:TriggerIn()
    print("Q7700902Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700902})
    this:DestroySelf()
end

function Q7700902Trigger:PreTriggerIn()
    print("Q7700902Trigger - PreTriggerIn")
end

function Q7700902Trigger:LightUpTriggerIn()
    print("Q7700902Trigger - LightUpTriggerIn")
end

function Q7700902Trigger:TriggerOut()
    print("Q7700902Trigger - TriggerOut")
end

return Q7700902Trigger
