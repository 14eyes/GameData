require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19044Trigger = class("Q19044Trigger", GadgetActorProxy)
Q19044Trigger.defaultAlias = "Q19044Trigger"
local Q19044ClientConfig = require("Quest/Client/Q19044ClientConfig")

local subIDs = Q19044ClientConfig.SubIDs
local npcs = Q19044ClientConfig.Npcs
local datas = Q19044ClientConfig.Datas

function Q19044Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19044Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(0, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19044Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19044")
    actor:NarratorTask(datas.NarratorWithId07, 0, 0, nil, "")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(20035, "Q19044NpcBorn").pos, 1, 2, true, true)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):EnableInteraction(false)
end

function Q19044Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19044Trigger
