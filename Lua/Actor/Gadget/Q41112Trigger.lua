require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41112Trigger = class("Q41112Trigger", GadgetActorProxy)
Q41112Trigger.defaultAlias = "Q41112Trigger"
local Q41112ClientConfig = require("Quest/Client/Q41112ClientConfig")

local subIDs = Q41112ClientConfig.SubIDs
local npcs = Q41112ClientConfig.Npcs
local amborData = npcs.AmborData
local npc10013Data = npcs.Npc10013Data
local npc220201Data = npcs.Npc220201Data
local v = npcs.AmborData
local npc10095Data = npcs.Npc10095Data
local npc1531Data = npcs.Npc1531Data
local npc30012Data = npcs.Npc30012Data
local npc10011Data = npcs.Npc10011Data
local npc10011Data2 = npcs.Npc10011Data2
local gadgets = Q41112ClientConfig.Gadgets
local q4111206Meteorite = gadgets.Q4111206Meteorite
local q4111207Meteorite = gadgets.Q4111207Meteorite
local q4111216Target = gadgets.Q4111216Target
local q4111217Target = gadgets.Q4111217Target
local points = Q41112ClientConfig.Points
local q41112Trigger = Q41112ClientConfig.Datas.Q41112Trigger_

function Q41112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41112Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q41112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111202)
    end

    self:DestroySelf()
end

function Q41112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41112Trigger
