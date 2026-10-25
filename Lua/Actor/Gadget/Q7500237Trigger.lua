require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500227Trigger = class("Q7500227Trigger", GadgetActorProxy)
Q7500227Trigger.defaultAlias = "Q7500227Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local v
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500237Trigger.OnPostDataPrepare(arg1)
    print("[MainId: 75002][Trigger: Q7500227Trigger] OnPostDataPrepare")
    v = arg1
end

function Q7500237Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500227Trigger] OnPostComponentPrepare")
    v:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500237Trigger.TriggerIn(arg1)
    print("[MainId: 75002][Trigger: Q7500227Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500237)
    v:DestroySelf()
end

function Q7500237Trigger.PreTriggerIn(arg1)
    print("[MainId: 75002][Trigger: Q7500227Trigger] PreTriggerIn")
end

function Q7500237Trigger.LightUpTriggerIn(arg1)
    print("[MainId: 75002][Trigger: Q7500227Trigger] LightUpTriggerIn")
end

function Q7500237Trigger.TriggerOut(arg1)
    print("[MainId: 75002][Trigger: Q7500227Trigger] TriggerOut")
end

return Q7500227Trigger
