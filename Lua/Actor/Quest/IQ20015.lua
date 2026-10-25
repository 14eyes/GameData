require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20015 = class("Quest20015", QuestActorProxy)
Quest20015.defaultAlias = "Quest20015"
local clientData
local npcData
local hiliData
local playerData

function Quest20015:OnDataLoaded()
    clientData = self.clientData
    npcData = clientData.NPCData
    hiliData = clientData.HiliData
    playerData = clientData.PlayerData
end

function Quest20015:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001501"] = self.OnSubStart2001501
    self.subStartHandlers["2001502"] = self.OnSubStart2001502
    self.subStartHandlers["2001503"] = self.OnSubStart2001503
    self.subStartHandlers["2001504"] = self.OnSubStart2001504
    self.subStartHandlers["2001505"] = self.OnSubStart2001505
    self.subStartHandlers["2001506"] = self.OnSubStart2001506
    self.subStartHandlers["2001507"] = self.OnSubStart2001507
    self.subStartHandlers["2001508"] = self.OnSubStart2001508
    self.subStartHandlers["2001509"] = self.OnSubStart2001509
    self.subStartHandlers["2001510"] = self.OnSubStart2001510
    self.subStartHandlers["2001511"] = self.OnSubStart2001511
    self.subStartHandlers["2001512"] = self.OnSubStart2001512
    self.subStartHandlers["2001513"] = self.OnSubStart2001513
    self.subStartHandlers["2001514"] = self.OnSubStart2001514
    self.subStartHandlers["2001515"] = self.OnSubStart2001515
end

function Quest20015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001501"] = self.OnSubFinish2001501
    self.subFinishHandlers["2001502"] = self.OnSubFinish2001502
    self.subFinishHandlers["2001503"] = self.OnSubFinish2001503
    self.subFinishHandlers["2001504"] = self.OnSubFinish2001504
    self.subFinishHandlers["2001505"] = self.OnSubFinish2001505
    self.subFinishHandlers["2001506"] = self.OnSubFinish2001506
    self.subFinishHandlers["2001507"] = self.OnSubFinish2001507
    self.subFinishHandlers["2001508"] = self.OnSubFinish2001508
    self.subFinishHandlers["2001509"] = self.OnSubFinish2001509
    self.subFinishHandlers["2001510"] = self.OnSubFinish2001510
    self.subFinishHandlers["2001511"] = self.OnSubFinish2001511
    self.subFinishHandlers["2001512"] = self.OnSubFinish2001512
    self.subFinishHandlers["2001513"] = self.OnSubFinish2001513
    self.subFinishHandlers["2001514"] = self.OnSubFinish2001514
    self.subFinishHandlers["2001515"] = self.OnSubFinish2001515
end

function Quest20015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001501"] = self.OnSubFailed2001501
    self.subFailedHandlers["2001502"] = self.OnSubFailed2001502
    self.subFailedHandlers["2001503"] = self.OnSubFailed2001503
    self.subFailedHandlers["2001504"] = self.OnSubFailed2001504
    self.subFailedHandlers["2001505"] = self.OnSubFailed2001505
    self.subFailedHandlers["2001506"] = self.OnSubFailed2001506
    self.subFailedHandlers["2001507"] = self.OnSubFailed2001507
    self.subFailedHandlers["2001508"] = self.OnSubFailed2001508
    self.subFailedHandlers["2001509"] = self.OnSubFailed2001509
    self.subFailedHandlers["2001510"] = self.OnSubFailed2001510
    self.subFailedHandlers["2001511"] = self.OnSubFailed2001511
    self.subFailedHandlers["2001512"] = self.OnSubFailed2001512
    self.subFailedHandlers["2001513"] = self.OnSubFailed2001513
    self.subFailedHandlers["2001514"] = self.OnSubFailed2001514
    self.subFailedHandlers["2001515"] = self.OnSubFailed2001515
end

function Quest20015:FinishQuest02(arg1, arg2)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2001502)
    end

    local questNpcActor = actorMgr:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
end

function Quest20015:FinishQuest07(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2001507)
    end
end

function Quest20015:CreateNPC()
    self:TransmitPlayer(3, playerData.PlayerPos, playerData.PlayerDir)
    self:CreateQuestNpc(quest, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    self:RequestInteraction(questNpcActor)
    print("force dialogue")
end

function Quest20015:DestroyHili()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1, arg2)
        local questNpcActor = arg2:GetQuestNpcActor(hiliData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20015:OnSubStart2001509(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:CreateQuestNpc(arg1, hiliData.NpcID, 2)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    local v = self:GetQuestNpcActor(hiliData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    v:Standby()
    v:DoFreeStateTrigger()
end

function Quest20015:OnSubStart2001501(arg1) end
function Quest20015:OnSubFinish2001501(arg1) end
function Quest20015:OnSubFailed2001501(arg1) end

function Quest20015:OnSubStart2001502(arg1)
    actorMgr:CreateActorWithPos("Q20015trigger01", "Actor/Gadget/Q20015Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q20015Region").pos, sceneData:GetDummyPoint(3, "Q20015Region").rot, true, false)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.RunToRouteTask(questNpcActor, clientData.RoutePoints, function(arg1, arg2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001502)
        end

        questNpcActor:Standby()
        questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
    end)
end

function Quest20015:OnSubFinish2001502(arg1) end

function Quest20015:OnSubFailed2001502(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest20015:OnSubStart2001503(arg1) end
function Quest20015:OnSubFinish2001503(arg1) end
function Quest20015:OnSubFailed2001503(arg1) end

function Quest20015:OnSubStart2001508(arg1)
    local n = math.random(1, 100)
    if 1 <= n and n <= 50 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001512)
            actor:FinishQuestID(true, 2001513)
        end
    elseif 50 < n and n <= 100 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001513)
            actor:FinishQuestID(true, 2001512)
        end
    end
end

function Quest20015:OnSubFinish2001508(arg1)
    print("08 finish")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:TransmitPlayerById(arg1, 1)
        self:CreateQuestNpc(arg1, npcData.NpcID, 1)
        self:RequestInteractionForceAlias("Npc2002520015")
        print("force dialogue")
    end)
end

function Quest20015:OnSubStart2001504(arg1) end

function Quest20015:OnSubFinish2001504(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end
        end)
    end)
end

function Quest20015:OnSubFailed2001504(arg1) end

function Quest20015:OnSubStart2001507(arg1)
    self:CallDelay(0.8, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001507)
        end
    end)
end

function Quest20015:OnSubFinish2001507(arg1)
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

function Quest20015:OnSubFinish2001510(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2001508)
    end

    local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    print("destroy hili npc")
end

function Quest20015:OnSubStart2001505(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2001510)
    end

    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1070)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20015:OnSubFinish2001505(arg1) end

function Quest20015:OnSubStart2001506(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    self:ClearSpeechBubbleTask()
end

function Quest20015:OnSubFinish2001506(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)
end

function Quest20015:OnSubStart2001515(arg1)
    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
end

function Quest20015:OnSubFinish2001515(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
end

function Quest20015:OnMainCanceled(arg1)
    self:GetQuestNpcActor(hiliData.Npc):Destroy(false)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

return Quest20015
