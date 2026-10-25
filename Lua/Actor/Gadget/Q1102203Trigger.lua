require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102203Trigger = class("Q1102203Trigger", GadgetActorProxy)
Q1102203Trigger.defaultAlias = "Q1102203Trigger"
local Q11022ClientConfig = require("Quest/Client/Q11022ClientConfig")

local subIDs = Q11022ClientConfig.SubIDs
local npcs = Q11022ClientConfig.Npcs
local npc10232Data = npcs.Npc10232Data
local npc10303Data = npcs.Npc10303Data
local npc10302Data = npcs.Npc10302Data
local gadgetData = Q11022ClientConfig.Gadgets.GadgetData
local points = Q11022ClientConfig.Points
local datas = Q11022ClientConfig.Datas
local narratorWithId01 = datas.NarratorWithId01
local narratorWithId02 = datas.NarratorWithId02
local q1102207Trigger = datas.Q1102207Trigger_
local q1102203Trigger = datas.Q1102203Trigger_
local narratorWithId03 = datas.NarratorWithId03

function Q1102203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102203Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11022ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(narratorWithId01, nil, 11022)
    end

    print("11022 narrator 01")
    local v = actorMgr:GetActor(Q11022ClientConfig.ActorAlias)
    if v ~= nil then
        v:FinishQuestID(false, 1102208)
    end

    self:DestroySelf()
end

function Q1102203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102203Trigger
