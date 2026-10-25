require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger10 = class("Q14008Trigger10", GadgetActorProxy)
Q14008Trigger10.defaultAlias = "Q14008Trigger10"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger10:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger10] OnPostDataPrepare")
    this = self
end

function Q14008Trigger10:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger10] OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger10:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger10] TriggerIn")
    actorMgr:GetActor("14008"):RequestInteraction(npcs.Npc13840Data.alias, "", true)
    this:DestroySelf()
end

function Q14008Trigger10:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger10] PreTriggerIn")
end

function Q14008Trigger10:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger10] LightUpTriggerIn")
end

function Q14008Trigger10:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger10] TriggerOut")
end

return Q14008Trigger10
