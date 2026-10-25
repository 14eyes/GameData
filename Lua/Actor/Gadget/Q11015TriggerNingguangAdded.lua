require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11015TriggerNingguangAdded = class("Q11015TriggerNingguangAdded", GadgetActorProxy)
Q11015TriggerNingguangAdded.defaultAlias = "Q11015TriggerNingguangAdded"
local Q11015ClientConfig = require("Quest/Client/Q11015ClientConfig")

local subIDs = Q11015ClientConfig.SubIDs
local npcs = Q11015ClientConfig.Npcs
local datas = Q11015ClientConfig.Datas

function Q11015TriggerNingguangAdded:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11015TriggerNingguangAdded:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11015TriggerNingguangAdded:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11015"):RequestInteraction(npcs.Npc10211Data.alias)
    self:DestroySelf()
end

function Q11015TriggerNingguangAdded:TriggerOut()
    print("TriggerOut")
end

return Q11015TriggerNingguangAdded
