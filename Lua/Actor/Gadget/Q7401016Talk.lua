require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401016Talk = class("Q7401016Talk", GadgetActorProxy)
Q7401016Talk.defaultAlias = "Q7401016Talk"
local Q74010ClientConfig = require("Quest/Client/Q74010ClientConfig")

local this
local subIDs = Q74010ClientConfig.SubIDs
local npcs = Q74010ClientConfig.Npcs
local points = Q74010ClientConfig.Points

function Q7401016Talk:OnPostDataPrepare()
    print("[MainId: 74010][Trigger: Q7401016Talk] OnPostDataPrepare")
    this = self
end

function Q7401016Talk:OnPostComponentPrepare()
    print("[MainId: 74010][Trigger: Q7401016Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(9.045734, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401016Talk:TriggerIn()
    print("[MainId: 74010][Trigger: Q7401016Talk] TriggerIn")
    actorMgr:GetActor("74010"):RequestInteraction(npcs.Npc5315Data.alias)
    this:DestroySelf()
end

function Q7401016Talk:PreTriggerIn()
    print("[MainId: 74010][Trigger: Q7401016Talk] PreTriggerIn")
end

function Q7401016Talk:LightUpTriggerIn()
    print("[MainId: 74010][Trigger: Q7401016Talk] LightUpTriggerIn")
end

function Q7401016Talk:TriggerOut()
    print("[MainId: 74010][Trigger: Q7401016Talk] TriggerOut")
end

return Q7401016Talk
