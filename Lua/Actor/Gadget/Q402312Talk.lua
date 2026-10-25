require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402312Talk = class("Q402312Talk", GadgetActorProxy)
Q402312Talk.defaultAlias = "Q402312Talk"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402312Talk:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402312Talk] OnPostDataPrepare")
    this = self
end

function Q402312Talk:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402312Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402312Talk:TriggerIn()
    print("[MainId: 4023][Trigger: Q402312Talk] TriggerIn")
    actorMgr:GetActor("4023"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q402312Talk:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402312Talk] PreTriggerIn")
end

function Q402312Talk:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402312Talk] LightUpTriggerIn")
end

function Q402312Talk:TriggerOut()
    print("[MainId: 4023][Trigger: Q402312Talk] TriggerOut")
end

return Q402312Talk
