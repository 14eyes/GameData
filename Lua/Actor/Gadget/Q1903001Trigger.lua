require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1903001Trigger = class("Q1903001Trigger", GadgetActorProxy)
Q1903001Trigger.defaultAlias = "Q1903001Trigger"
local Q19030ClientConfig = require("Quest/Client/Q19030ClientConfig")

local mainID = Q19030ClientConfig.MainID
local actorAlias = Q19030ClientConfig.ActorAlias
local subIDs = Q19030ClientConfig.SubIDs
local npcs = Q19030ClientConfig.Npcs
local datas = Q19030ClientConfig.Datas

function Q1903001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1903001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1903001Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    self:CallDelay(1, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            actor:CreateQuestNpcById(1903001, npcs.Npc1023Data.id, 0)
            actor:RequestInteraction("Npc1023")
            actorMgr:DestroyEntityActor(datas.Q1903001Trigger_.alias, 3, false)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1110003")
    end)
end

function Q1903001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1903001Trigger
