require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1903002Trigger = class("Q1903002Trigger", GadgetActorProxy)
Q1903002Trigger.defaultAlias = "Q1903002Trigger"
local Q19030ClientConfig = require("Quest/Client/Q19030ClientConfig")

local mainID = Q19030ClientConfig.MainID
local actorAlias = Q19030ClientConfig.ActorAlias
local subIDs = Q19030ClientConfig.SubIDs
local npcs = Q19030ClientConfig.Npcs
local datas = Q19030ClientConfig.Datas

function Q1903002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1903002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1903002Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    self:CallDelay(1, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            actor:CreateQuestNpcById(1903002, npcs.Npc1023Data1.id, 0)
            actor:RequestInteraction("Npc1023")
            actorMgr:DestroyEntityActor(datas.Q1903002Trigger_.alias, 3, false)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1110003")
    end)
end

function Q1903002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1903002Trigger
