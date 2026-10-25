require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7416602TriggerIn = class("Q7416602TriggerIn", GadgetActorProxy)
Q7416602TriggerIn.defaultAlias = "Q7416602TriggerIn"
local Q74166ClientConfig = require("Quest/Client/Q74166ClientConfig")

local this
local subIDs = Q74166ClientConfig.SubIDs
local npcs = Q74166ClientConfig.Npcs
local points = Q74166ClientConfig.Points
local datas = Q74166ClientConfig.Datas

function Q7416602TriggerIn:OnPostDataPrepare()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] OnPostDataPrepare")
    this = self
end

function Q7416602TriggerIn:OnPostComponentPrepare()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7416602TriggerIn:TriggerIn()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] TriggerIn")
    actorMgr:GetActor("74166"):RequestInteraction(npcs.Npc13650Data.alias, "", true)
    this:DestroySelf()
end

function Q7416602TriggerIn:PreTriggerIn()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] PreTriggerIn")
end

function Q7416602TriggerIn:LightUpTriggerIn()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] LightUpTriggerIn")
end

function Q7416602TriggerIn:TriggerOut()
    print("[MainId: 74166][Trigger: Q7416602TriggerIn] TriggerOut")
end

return Q7416602TriggerIn
