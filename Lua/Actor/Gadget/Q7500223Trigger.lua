require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500223Trigger = class("Q7500223Trigger", GadgetActorProxy)
Q7500223Trigger.defaultAlias = "Q7500223Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500223Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500223Trigger] OnPostDataPrepare")
    this = self
end

function Q7500223Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500223Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500223Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500223Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500223)
    this:DestroySelf()
end

function Q7500223Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500223Trigger] PreTriggerIn")
end

function Q7500223Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500223Trigger] LightUpTriggerIn")
end

function Q7500223Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500223Trigger] TriggerOut")
end

return Q7500223Trigger
