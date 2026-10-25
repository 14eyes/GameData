require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102207Trigger = class("Q1102207Trigger", GadgetActorProxy)
Q1102207Trigger.defaultAlias = "Q1102207Trigger"
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

function Q1102207Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102207Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102207Trigger:TriggerIn()
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(Q11022ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:CreateQuestNpcById(1102207, 10232)
            actor:RequestInteraction("Npc10232")
        end

        arg1:DestroySelf()
    end)
end

function Q1102207Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102207Trigger
