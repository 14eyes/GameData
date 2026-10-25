require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11015TriggerStart = class("Q11015TriggerStart", GadgetActorProxy)
Q11015TriggerStart.defaultAlias = "Q11015TriggerStart"
local Q11015ClientConfig = require("Quest/Client/Q11015ClientConfig")

local subIDs = Q11015ClientConfig.SubIDs
local npcs = Q11015ClientConfig.Npcs
local datas = Q11015ClientConfig.Datas

function Q11015TriggerStart:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11015TriggerStart:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11015TriggerStart:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11015"):RequestInteraction(npcs.Npc2143Data.alias)
    self:DestroySelf()
end

function Q11015TriggerStart:TriggerOut()
    print("TriggerOut")
end

return Q11015TriggerStart
