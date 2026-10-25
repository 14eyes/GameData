require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422502TriggerTalk = class("Q7422502TriggerTalk", GadgetActorProxy)
Q7422502TriggerTalk.defaultAlias = "Q7422502TriggerTalk"
local Q74225ClientConfig = require("Quest/Client/Q74225ClientConfig")

local this
local subIDs = Q74225ClientConfig.SubIDs
local npcs = Q74225ClientConfig.Npcs
local points = Q74225ClientConfig.Points

function Q7422502TriggerTalk:OnPostDataPrepare()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] OnPostDataPrepare")
    this = self
end

function Q7422502TriggerTalk:OnPostComponentPrepare()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74225)
end

function Q7422502TriggerTalk:TriggerIn()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] TriggerIn")
    actorMgr:GetActor("74225"):RequestInteraction(npcs.Npc5353Data.alias, "", true)
    this:DestroySelf()
end

function Q7422502TriggerTalk:PreTriggerIn()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] PreTriggerIn")
end

function Q7422502TriggerTalk:LightUpTriggerIn()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] LightUpTriggerIn")
end

function Q7422502TriggerTalk:TriggerOut()
    print("[MainId: 74225][Trigger: Q7422502TriggerTalk] TriggerOut")
end

return Q7422502TriggerTalk
