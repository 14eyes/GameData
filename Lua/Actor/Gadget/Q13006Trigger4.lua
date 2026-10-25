require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13006Trigger4 = class("Q13006Trigger4", GadgetActorProxy)
Q13006Trigger4.defaultAlias = "Q13006Trigger4"
local Q13006ClientConfig = require("Quest/Client/Q13006ClientConfig")

local this
local subIDs = Q13006ClientConfig.SubIDs
local npcs = Q13006ClientConfig.Npcs
local datas = Q13006ClientConfig.Datas

function Q13006Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13006Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13006Trigger4:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("13006"):GetQuestNpcActor(npcs.Npc12713Data.alias)
    questNpcActor:UnSpawnAttach("Embroidery_PelvisCtrl")
    questNpcActor:SpawnAttach("Embroidery_PelvisCtrl")
end

function Q13006Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q13006Trigger4
