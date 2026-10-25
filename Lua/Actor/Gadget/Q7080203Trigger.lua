require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7080203Trigger = class("Q7080203Trigger", GadgetActorProxy)
Q7080203Trigger.defaultAlias = "Q7080203Trigger"
local Q70802ClientConfig = require("Quest/Client/Q70802ClientConfig")

local subIDs = Q70802ClientConfig.SubIDs
local npcs = Q70802ClientConfig.Npcs
local datas = Q70802ClientConfig.Datas

function Q7080203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7080203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7080203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70802"):RequestInteraction(npcs.Npc1409Data.alias)
    self:DestroySelf()
end

function Q7080203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7080203Trigger
