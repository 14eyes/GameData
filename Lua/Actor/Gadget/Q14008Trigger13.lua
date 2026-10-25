require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger13 = class("Q14008Trigger13", GadgetActorProxy)
Q14008Trigger13.defaultAlias = "Q14008Trigger13"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger13:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger13] OnPostDataPrepare")
    this = self
end

function Q14008Trigger13:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger13] OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger13:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger13] TriggerIn")
    actorMgr:GetActor("14008"):RequestInteraction(npcs.Npc13840Data.alias, "", true)
    this:DestroySelf()
end

function Q14008Trigger13:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger13] PreTriggerIn")
end

function Q14008Trigger13:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger13] LightUpTriggerIn")
end

function Q14008Trigger13:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger13] TriggerOut")
end

return Q14008Trigger13
