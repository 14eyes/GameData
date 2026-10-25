require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74501Trigger2 = class("Q74501Trigger2", GadgetActorProxy)
Q74501Trigger2.defaultAlias = "Q74501Trigger2"
local Q74501ClientConfig = require("Quest/Client/Q74501ClientConfig")

local this
local subIDs = Q74501ClientConfig.SubIDs
local npcs = Q74501ClientConfig.Npcs
local points = Q74501ClientConfig.Points

function Q74501Trigger2:OnPostDataPrepare()
    print("[MainId: 74501][Trigger: Q74501Trigger2] OnPostDataPrepare")
    this = self
end

function Q74501Trigger2:OnPostComponentPrepare()
    print("[MainId: 74501][Trigger: Q74501Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74501Trigger2:TriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger2] TriggerIn")
    actorMgr:GetActor("74501"):RequestInteraction(npcs.Npc30411Data.alias)
    this:DestroySelf()
end

function Q74501Trigger2:PreTriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger2] PreTriggerIn")
end

function Q74501Trigger2:LightUpTriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger2] LightUpTriggerIn")
end

function Q74501Trigger2:TriggerOut()
    print("[MainId: 74501][Trigger: Q74501Trigger2] TriggerOut")
end

return Q74501Trigger2
