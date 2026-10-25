require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500222Trigger = class("Q7500222Trigger", GadgetActorProxy)
Q7500222Trigger.defaultAlias = "Q7500222Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500222Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500222Trigger] OnPostDataPrepare")
    this = self
end

function Q7500222Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500222Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500222Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500222Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500222)
    this:DestroySelf()
end

function Q7500222Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500222Trigger] PreTriggerIn")
end

function Q7500222Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500222Trigger] LightUpTriggerIn")
end

function Q7500222Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500222Trigger] TriggerOut")
end

return Q7500222Trigger
