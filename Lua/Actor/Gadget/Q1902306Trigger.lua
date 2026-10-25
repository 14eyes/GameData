require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1902306Trigger = class("Q1902306Trigger", GadgetActorProxy)
Q1902306Trigger.defaultAlias = "Q1902306Trigger"
local Q19023ClientConfig = require("Quest/Client/Q19023ClientConfig")

local mainID = Q19023ClientConfig.MainID
local actorAlias = Q19023ClientConfig.ActorAlias
local subIDs = Q19023ClientConfig.SubIDs
local npcs = Q19023ClientConfig.Npcs
local datas = Q19023ClientConfig.Datas

function Q1902306Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1902306Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1902306Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    self:CallDelay(1, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            actor:CreateQuestNpcById(1902306, npcs.Npc1023Data3.id, 0)
            actor:RequestInteraction(npcs.Npc1023Data3.alias)
            actorMgr:DestroyEntityActor(datas.Q1902306Trigger_.alias, 3, false)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1110003")
    end)
end

function Q1902306Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1902306Trigger
