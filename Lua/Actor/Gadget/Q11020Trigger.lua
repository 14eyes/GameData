require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11020Trigger = class("Q11020Trigger", GadgetActorProxy)
Q11020Trigger.defaultAlias = "Q11020Trigger"
local Q11020ClientConfig = require("Quest/Client/Q11020ClientConfig")

local subIDs = Q11020ClientConfig.SubIDs
local npcs = Q11020ClientConfig.Npcs
local npc10232Data = npcs.Npc10232Data
local npc10280Data = npcs.Npc10280Data
local npc10281Data = npcs.Npc10281Data
local gadgets = Q11020ClientConfig.Gadgets
local points = Q11020ClientConfig.Points
local q11020Trigger = Q11020ClientConfig.Datas.Q11020Trigger_

function Q11020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11020Trigger:TriggerIn()
    print("TriggerIn")
end

function Q11020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11020Trigger
