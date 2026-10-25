require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74507Trigger1 = class("Q74507Trigger1", GadgetActorProxy)
Q74507Trigger1.defaultAlias = "Q74507Trigger1"
local Q74507ClientConfig = require("Quest/Client/Q74507ClientConfig")

local this
local subIDs = Q74507ClientConfig.SubIDs
local npcs = Q74507ClientConfig.Npcs

function Q74507Trigger1:OnPostDataPrepare()
    print("[MainId: 74507][Trigger: Q74507Trigger1] OnPostDataPrepare")
    this = self
end

function Q74507Trigger1:OnPostComponentPrepare()
    print("[MainId: 74507][Trigger: Q74507Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74507Trigger1:TriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger1] TriggerIn")
    actorMgr:GetActor("74507"):RequestInteraction(npcs.Npc30422Data.alias, "", true)
    this:DestroySelf()
end

function Q74507Trigger1:PreTriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger1] PreTriggerIn")
end

function Q74507Trigger1:LightUpTriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger1] LightUpTriggerIn")
end

function Q74507Trigger1:TriggerOut()
    print("[MainId: 74507][Trigger: Q74507Trigger1] TriggerOut")
end

return Q74507Trigger1
