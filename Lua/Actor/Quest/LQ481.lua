require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest481 = class("Quest481", QuestActorProxy)
Quest481.defaultAlias = "Quest481"
local clientData
local subIDs
local amborData
local paimonData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest481:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    amborData = clientData.AmborData
    paimonData = clientData.PaimonData
end

function Quest481:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48101"] = self.OnSubStart48101
    self.subStartHandlers["48102"] = self.OnSubStart48102
    self.subStartHandlers["48103"] = self.OnSubStart48103
    self.subStartHandlers["48104"] = self.OnSubStart48104
    self.subStartHandlers["48105"] = self.OnSubStart48105
    self.subStartHandlers["48106"] = self.OnSubStart48106
end

function Quest481:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48101"] = self.OnSubFinish48101
    self.subFinishHandlers["48102"] = self.OnSubFinish48102
    self.subFinishHandlers["48103"] = self.OnSubFinish48103
    self.subFinishHandlers["48104"] = self.OnSubFinish48104
    self.subFinishHandlers["48105"] = self.OnSubFinish48105
    self.subFinishHandlers["48106"] = self.OnSubFinish48106
end

function Quest481:OnSubStart48101(arg1)
    print("48101 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
    end)
end

function Quest481:OnSubStart48102(arg1)
    print("48102 start:...")
end

function Quest481:OnSubStart48103(arg1)
    print("48103 start:...")
    self:AdvanceQuest()
end

function Quest481:OnSubStart48104(arg1)
    print("48104 start:...")
    globalActor:StopLocalAvatar()
end

function Quest481:RequestPaimon(arg1)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest481:OnSubStart48105(arg1)
    print("48105 start:...")
    self:ActionSafeCall(function(arg1) end)
end

function Quest481:AdvanceQuest()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest481:OnSubStart48106(arg1)
    print("48106 start:...")
end

function Quest481:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local questNpcActor = self:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(amborData.desPos, Quest481.amborVanish)
        end
    elseif arg1 == 11 then
        print("messahe start:...")
        self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "QUEST_Message_Q48101")
    end
end

function Quest481:amborVanish(arg1) end

function Quest481:OnSubFinish48101(arg1)
    print("OnFinished 48101")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest481:OnSubFinish48102(arg1)
    print("OnFinished 48102")
end

function Quest481:OnSubFinish48103(arg1)
    print("OnFinished 48103")
end

function Quest481:OnSubFinish48104(arg1)
    print("OnFinished 48104")
    globalActor:EnablePlayerInput(true)
end

function Quest481:OnSubFinish48105(arg1)
    print("OnFinished 48105")
end

function Quest481:OnSubFinish48106(arg1)
    print("OnFinished 48103")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest481:Start() end
function Quest481:OnDestroy() end
return Quest481
