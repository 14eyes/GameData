require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11014Trigger3VillageAdded = class("Q11014Trigger3VillageAdded", GadgetActorProxy)
Q11014Trigger3VillageAdded.defaultAlias = "Q11014Trigger3VillageAdded"
local Q11014ClientConfig = require("Quest/Client/Q11014ClientConfig")

local subIDs = Q11014ClientConfig.SubIDs
local npcs = Q11014ClientConfig.Npcs
local datas = Q11014ClientConfig.Datas

function Q11014Trigger3VillageAdded:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11014Trigger3VillageAdded:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11014Trigger3VillageAdded:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11014"):RequestInteraction(npcs.Npc12333Data.alias)
    self:DestroySelf()
end

function Q11014Trigger3VillageAdded:TriggerOut()
    print("TriggerOut")
end

return Q11014Trigger3VillageAdded
