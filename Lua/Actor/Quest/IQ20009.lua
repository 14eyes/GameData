require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20009 = class("Quest20009", QuestActorProxy)
Quest20009.defaultAlias = "Quest20009"
local clientData
local npcData
local hiliData
local playerData

function Quest20009:OnDataLoaded()
    clientData = self.clientData
    npcData = clientData.NPCData
    hiliData = clientData.HiliData
    playerData = clientData.PlayerData
end

function Quest20009:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000901"] = self.OnSubStart2000901
    self.subStartHandlers["2000902"] = self.OnSubStart2000902
    self.subStartHandlers["2000903"] = self.OnSubStart2000903
    self.subStartHandlers["2000904"] = self.OnSubStart2000904
    self.subStartHandlers["2000905"] = self.OnSubStart2000905
    self.subStartHandlers["2000906"] = self.OnSubStart2000906
    self.subStartHandlers["2000907"] = self.OnSubStart2000907
    self.subStartHandlers["2000908"] = self.OnSubStart2000908
    self.subStartHandlers["2000909"] = self.OnSubStart2000909
    self.subStartHandlers["2000910"] = self.OnSubStart2000910
    self.subStartHandlers["2000911"] = self.OnSubStart2000911
    self.subStartHandlers["2000912"] = self.OnSubStart2000912
    self.subStartHandlers["2000913"] = self.OnSubStart2000913
    self.subStartHandlers["2000914"] = self.OnSubStart2000914
    self.subStartHandlers["2000915"] = self.OnSubStart2000915
end

function Quest20009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000901"] = self.OnSubFinish2000901
    self.subFinishHandlers["2000902"] = self.OnSubFinish2000902
    self.subFinishHandlers["2000903"] = self.OnSubFinish2000903
    self.subFinishHandlers["2000904"] = self.OnSubFinish2000904
    self.subFinishHandlers["2000905"] = self.OnSubFinish2000905
    self.subFinishHandlers["2000906"] = self.OnSubFinish2000906
    self.subFinishHandlers["2000907"] = self.OnSubFinish2000907
    self.subFinishHandlers["2000908"] = self.OnSubFinish2000908
    self.subFinishHandlers["2000909"] = self.OnSubFinish2000909
    self.subFinishHandlers["2000910"] = self.OnSubFinish2000910
    self.subFinishHandlers["2000911"] = self.OnSubFinish2000911
    self.subFinishHandlers["2000912"] = self.OnSubFinish2000912
    self.subFinishHandlers["2000913"] = self.OnSubFinish2000913
    self.subFinishHandlers["2000914"] = self.OnSubFinish2000914
    self.subFinishHandlers["2000915"] = self.OnSubFinish2000915
end

function Quest20009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000901"] = self.OnSubFailed2000901
    self.subFailedHandlers["2000902"] = self.OnSubFailed2000902
    self.subFailedHandlers["2000903"] = self.OnSubFailed2000903
    self.subFailedHandlers["2000904"] = self.OnSubFailed2000904
    self.subFailedHandlers["2000905"] = self.OnSubFailed2000905
    self.subFailedHandlers["2000906"] = self.OnSubFailed2000906
    self.subFailedHandlers["2000907"] = self.OnSubFailed2000907
    self.subFailedHandlers["2000908"] = self.OnSubFailed2000908
    self.subFailedHandlers["2000909"] = self.OnSubFailed2000909
    self.subFailedHandlers["2000910"] = self.OnSubFailed2000910
    self.subFailedHandlers["2000911"] = self.OnSubFailed2000911
    self.subFailedHandlers["2000912"] = self.OnSubFailed2000912
    self.subFailedHandlers["2000913"] = self.OnSubFailed2000913
    self.subFailedHandlers["2000914"] = self.OnSubFailed2000914
    self.subFailedHandlers["2000915"] = self.OnSubFailed2000915
end

function Quest20009:FinishQuest02(arg1, arg2)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2000902)
    end

    local questNpcActor = actorMgr:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
end

function Quest20009:FinishQuest07(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2000907)
    end
end

function Quest20009:CreateNPC()
    self:TransmitPlayer(3, playerData.PlayerPos, playerData.PlayerDir)
    self:CreateQuestNpc(quest, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    self:RequestInteraction(questNpcActor)
    print("force dialogue")
end

function Quest20009:DestroyHili()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1, arg2)
        local questNpcActor = arg2:GetQuestNpcActor(hiliData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20009:OnSubStart2000909(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:CreateQuestNpc(arg1, hiliData.NpcID, 2)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    local v = self:GetQuestNpcActor(hiliData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    v:Standby()
    v:DoFreeStateTrigger()
end

function Quest20009:OnSubStart2000901(arg1) end
function Quest20009:OnSubFinish2000901(arg1) end
function Quest20009:OnSubFailed2000901(arg1) end

function Quest20009:OnSubStart2000902(arg1)
    actorMgr:CreateActorWithPos("Q20009trigger01", "Actor/Gadget/Q20009Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q20009Region").pos, sceneData:GetDummyPoint(3, "Q20009Region").rot, true, false)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.RunToRouteTask(questNpcActor, clientData.RoutePoints, function(arg1, arg2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2000902)
        end

        questNpcActor:Standby()
        questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
    end)
end

function Quest20009:OnSubFinish2000902(arg1) end

function Quest20009:OnSubFailed2000902(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest20009:OnSubStart2000903(arg1) end
function Quest20009:OnSubFinish2000903(arg1) end
function Quest20009:OnSubFailed2000903(arg1) end

function Quest20009:OnSubStart2000908(arg1)
    local n = math.random(1, 100)
    if 1 <= n and n <= 50 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2000912)
            actor:FinishQuestID(true, 2000913)
        end
    elseif 50 < n and n <= 100 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2000913)
            actor:FinishQuestID(true, 2000912)
        end
    end
end

function Quest20009:OnSubFinish2000908(arg1)
    print("08 finish")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:TransmitPlayerById(arg1, 1)
        self:CreateQuestNpc(arg1, npcData.NpcID, 1)
        self:RequestInteractionForceAlias("Npc2002520009")
        print("force dialogue")
    end)
end

function Quest20009:OnSubStart2000904(arg1) end

function Quest20009:OnSubFinish2000904(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end
        end)
    end)
end

function Quest20009:OnSubFailed2000904(arg1) end

function Quest20009:OnSubStart2000907(arg1)
    self:CallDelay(0.8, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2000907)
        end
    end)
end

function Quest20009:OnSubFinish2000907(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end
        end)
    end)

    print("destroy hili npc")
end

function Quest20009:OnSubFinish2000910(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2000908)
    end

    local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    print("destroy hili npc")
end

function Quest20009:OnSubStart2000905(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2000910)
    end

    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1070)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20009:OnSubFinish2000905(arg1) end

function Quest20009:OnSubStart2000906(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    self:ClearSpeechBubbleTask()
end

function Quest20009:OnSubFinish2000906(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        questNpcActor:Destroy(false)
    end, nil, nil, "")
end

function Quest20009:OnSubStart2000915(arg1)
    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
end

function Quest20009:OnSubFinish2000915(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        questNpcActor:Destroy(false)
    end, nil, nil, "")
end

function Quest20009:OnMainCanceled(arg1)
    self:GetQuestNpcActor(hiliData.Npc):Destroy(false)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

return Quest20009
