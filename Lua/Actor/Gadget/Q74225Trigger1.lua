require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74225Trigger1 = class("Q74225Trigger1", GadgetActorProxy)
Q74225Trigger1.defaultAlias = "Q74225Trigger1"
local Q74225ClientConfig = require("Quest/Client/Q74225ClientConfig")

local this
local subIDs = Q74225ClientConfig.SubIDs
local npcs = Q74225ClientConfig.Npcs
local points = Q74225ClientConfig.Points

function Q74225Trigger1:OnPostDataPrepare()
    print("[MainId: 74225][Trigger: Q74225Trigger1] OnPostDataPrepare")
    this = self
end

function Q74225Trigger1:OnPostComponentPrepare()
    print("[MainId: 74225][Trigger: Q74225Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74225)
end

function Q74225Trigger1:TriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger1] TriggerIn")
    actorMgr:GetActor("74225"):RequestInteraction(npcs.Npc5353Data.alias, "", true)
    this:DestroySelf()
end

function Q74225Trigger1:PreTriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger1] PreTriggerIn")
end

function Q74225Trigger1:LightUpTriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger1] LightUpTriggerIn")
end

function Q74225Trigger1:TriggerOut()
    print("[MainId: 74225][Trigger: Q74225Trigger1] TriggerOut")
end

return Q74225Trigger1
