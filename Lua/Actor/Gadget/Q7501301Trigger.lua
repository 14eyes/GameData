require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501301Trigger = class("Q7501301Trigger", GadgetActorProxy)
Q7501301Trigger.defaultAlias = "Q7501301Trigger"
local Q75013ClientConfig = require("Quest/Client/Q75013ClientConfig")

local this
local subIDs = Q75013ClientConfig.SubIDs
local npcs = Q75013ClientConfig.Npcs
local points = Q75013ClientConfig.Points

function Q7501301Trigger:OnPostDataPrepare()
    print("[MainId: 75013][Trigger: Q7501301Trigger] OnPostDataPrepare")
    this = self
end

function Q7501301Trigger:OnPostComponentPrepare()
    print("[MainId: 75013][Trigger: Q7501301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75013)
end

function Q7501301Trigger:TriggerIn()
    print("[MainId: 75013][Trigger: Q7501301Trigger] TriggerIn")
    actorMgr:GetActor("75013"):RequestInteraction(npcs.Npc21519Data.alias, "", true)
    this:DestroySelf()
end

function Q7501301Trigger:PreTriggerIn()
    print("[MainId: 75013][Trigger: Q7501301Trigger] PreTriggerIn")
end

function Q7501301Trigger:LightUpTriggerIn()
    print("[MainId: 75013][Trigger: Q7501301Trigger] LightUpTriggerIn")
end

function Q7501301Trigger:TriggerOut()
    print("[MainId: 75013][Trigger: Q7501301Trigger] TriggerOut")
end

return Q7501301Trigger
