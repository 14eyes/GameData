require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11015TriggerPortAdded = class("Q11015TriggerPortAdded", GadgetActorProxy)
Q11015TriggerPortAdded.defaultAlias = "Q11015TriggerPortAdded"
local Q11015ClientConfig = require("Quest/Client/Q11015ClientConfig")

local subIDs = Q11015ClientConfig.SubIDs
local npcs = Q11015ClientConfig.Npcs
local datas = Q11015ClientConfig.Datas

function Q11015TriggerPortAdded:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11015TriggerPortAdded:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11015TriggerPortAdded:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11015"):RequestInteraction(npcs.Npc10211Data.alias)
    self:DestroySelf()
end

function Q11015TriggerPortAdded:TriggerOut()
    print("TriggerOut")
end

return Q11015TriggerPortAdded
