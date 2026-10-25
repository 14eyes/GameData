require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501731Trigger = class("Q7501731Trigger", GadgetActorProxy)
Q7501731Trigger.defaultAlias = "Q7501731Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501731Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501731Trigger] OnPostDataPrepare")
    this = self
end

function Q7501731Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501731Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501731Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501731Trigger] TriggerIn")
    actorMgr:GetActor("75017"):RequestInteraction(npcs.Npc21533Data.alias, "", true)
end

function Q7501731Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501731Trigger] PreTriggerIn")
end

function Q7501731Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501731Trigger] LightUpTriggerIn")
end

function Q7501731Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501731Trigger] TriggerOut")
end

return Q7501731Trigger
