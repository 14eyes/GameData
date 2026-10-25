require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500210Trigger = class("Q7500210Trigger", GadgetActorProxy)
Q7500210Trigger.defaultAlias = "Q7500210Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500210Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500210Trigger] OnPostDataPrepare")
    this = self
end

function Q7500210Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500210Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500210Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500210Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500210)
    this:DestroySelf()
end

function Q7500210Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500210Trigger] PreTriggerIn")
end

function Q7500210Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500210Trigger] LightUpTriggerIn")
end

function Q7500210Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500210Trigger] TriggerOut")
end

return Q7500210Trigger
