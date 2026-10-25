require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011908guer = class("Q4011908guer", GadgetActorProxy)
Q4011908guer.defaultAlias = "Q4011908guer"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011908guer:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011908guer] OnPostDataPrepare")
    this = self
end

function Q4011908guer:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011908guer] OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011908guer:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011908guer] TriggerIn")
end

function Q4011908guer:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908guer] PreTriggerIn")
end

function Q4011908guer:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908guer] LightUpTriggerIn")
end

function Q4011908guer:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011908guer] TriggerOut")
    actorMgr:GetActor("40119"):DestroyQuestNpcActor(npcs.Npc13247Data.alias, 10)
    this:DestroySelf()
end

return Q4011908guer
