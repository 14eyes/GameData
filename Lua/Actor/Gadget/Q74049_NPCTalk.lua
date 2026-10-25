require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74049_NPCTalk = class("Q74049_NPCTalk", GadgetActorProxy)
Q74049_NPCTalk.defaultAlias = "Q74049_NPCTalk"
local Q74049ClientConfig = require("Quest/Client/Q74049ClientConfig")

local this
local subIDs = Q74049ClientConfig.SubIDs
local npcs = Q74049ClientConfig.Npcs
local points = Q74049ClientConfig.Points

function Q74049_NPCTalk:OnPostDataPrepare()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] OnPostDataPrepare")
    this = self
end

function Q74049_NPCTalk:OnPostComponentPrepare()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74049_NPCTalk:TriggerIn()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] TriggerIn")
    actorMgr:GetActor("74049"):RequestInteraction(npcs.Npc5315Data.alias)
    this:DestroySelf()
end

function Q74049_NPCTalk:PreTriggerIn()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] PreTriggerIn")
end

function Q74049_NPCTalk:LightUpTriggerIn()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] LightUpTriggerIn")
end

function Q74049_NPCTalk:TriggerOut()
    print("[MainId: 74049][Trigger: Q74049_NPCTalk] TriggerOut")
end

return Q74049_NPCTalk
