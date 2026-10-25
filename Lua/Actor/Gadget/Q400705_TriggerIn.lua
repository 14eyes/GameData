require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400705_TriggerIn = class("Q400705_TriggerIn", GadgetActorProxy)
Q400705_TriggerIn.defaultAlias = "Q400705_TriggerIn"
local Q4007ClientConfig = require("Quest/Client/Q4007ClientConfig")

local this
local subIDs = Q4007ClientConfig.SubIDs
local npcs = Q4007ClientConfig.Npcs
local points = Q4007ClientConfig.Points
local datas = Q4007ClientConfig.Datas

function Q400705_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400705_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400705_TriggerIn:TriggerIn()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] TriggerIn")
    actorMgr:GetActor("4007"):RequestInteraction(npcs.Npc13537Data.alias)
    this:DestroySelf()
end

function Q400705_TriggerIn:PreTriggerIn()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] PreTriggerIn")
end

function Q400705_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] LightUpTriggerIn")
end

function Q400705_TriggerIn:TriggerOut()
    print("[MainId: 4007][Trigger: Q400705_TriggerIn] TriggerOut")
end

return Q400705_TriggerIn
