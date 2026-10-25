require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20010 = class("Quest20010", QuestActorProxy)
Quest20010.defaultAlias = "Quest20010"
local clientData
local npcData
local hiliData
local playerData

function Quest20010:OnDataLoaded()
    clientData = self.clientData
    npcData = clientData.NPCData
    hiliData = clientData.HiliData
    playerData = clientData.PlayerData
end

function Quest20010:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001001"] = self.OnSubStart2001001
    self.subStartHandlers["2001002"] = self.OnSubStart2001002
    self.subStartHandlers["2001003"] = self.OnSubStart2001003
    self.subStartHandlers["2001004"] = self.OnSubStart2001004
    self.subStartHandlers["2001005"] = self.OnSubStart2001005
    self.subStartHandlers["2001006"] = self.OnSubStart2001006
    self.subStartHandlers["2001007"] = self.OnSubStart2001007
    self.subStartHandlers["2001008"] = self.OnSubStart2001008
    self.subStartHandlers["2001009"] = self.OnSubStart2001009
    self.subStartHandlers["2001010"] = self.OnSubStart2001010
    self.subStartHandlers["2001011"] = self.OnSubStart2001011
    self.subStartHandlers["2001012"] = self.OnSubStart2001012
    self.subStartHandlers["2001013"] = self.OnSubStart2001013
    self.subStartHandlers["2001014"] = self.OnSubStart2001014
    self.subStartHandlers["2001015"] = self.OnSubStart2001015
end

function Quest20010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001001"] = self.OnSubFinish2001001
    self.subFinishHandlers["2001002"] = self.OnSubFinish2001002
    self.subFinishHandlers["2001003"] = self.OnSubFinish2001003
    self.subFinishHandlers["2001004"] = self.OnSubFinish2001004
    self.subFinishHandlers["2001005"] = self.OnSubFinish2001005
    self.subFinishHandlers["2001006"] = self.OnSubFinish2001006
    self.subFinishHandlers["2001007"] = self.OnSubFinish2001007
    self.subFinishHandlers["2001008"] = self.OnSubFinish2001008
    self.subFinishHandlers["2001009"] = self.OnSubFinish2001009
    self.subFinishHandlers["2001010"] = self.OnSubFinish2001010
    self.subFinishHandlers["2001011"] = self.OnSubFinish2001011
    self.subFinishHandlers["2001012"] = self.OnSubFinish2001012
    self.subFinishHandlers["2001013"] = self.OnSubFinish2001013
    self.subFinishHandlers["2001014"] = self.OnSubFinish2001014
    self.subFinishHandlers["2001015"] = self.OnSubFinish2001015
end

function Quest20010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001001"] = self.OnSubFailed2001001
    self.subFailedHandlers["2001002"] = self.OnSubFailed2001002
    self.subFailedHandlers["2001003"] = self.OnSubFailed2001003
    self.subFailedHandlers["2001004"] = self.OnSubFailed2001004
    self.subFailedHandlers["2001005"] = self.OnSubFailed2001005
    self.subFailedHandlers["2001006"] = self.OnSubFailed2001006
    self.subFailedHandlers["2001007"] = self.OnSubFailed2001007
    self.subFailedHandlers["2001008"] = self.OnSubFailed2001008
    self.subFailedHandlers["2001009"] = self.OnSubFailed2001009
    self.subFailedHandlers["2001010"] = self.OnSubFailed2001010
    self.subFailedHandlers["2001011"] = self.OnSubFailed2001011
    self.subFailedHandlers["2001012"] = self.OnSubFailed2001012
    self.subFailedHandlers["2001013"] = self.OnSubFailed2001013
    self.subFailedHandlers["2001014"] = self.OnSubFailed2001014
    self.subFailedHandlers["2001015"] = self.OnSubFailed2001015
end

function Quest20010:FinishQuest02(arg1, arg2)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2001002)
    end

    local questNpcActor = actorMgr:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
end

function Quest20010:FinishQuest07(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2001007)
    end
end

function Quest20010:CreateNPC()
    self:TransmitPlayer(3, playerData.PlayerPos, playerData.PlayerDir)
    self:CreateQuestNpc(quest, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    self:RequestInteraction(questNpcActor)
    print("force dialogue")
end

function Quest20010:DestroyHili()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1, arg2)
        local questNpcActor = arg2:GetQuestNpcActor(hiliData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20010:OnSubStart2001009(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:CreateQuestNpc(arg1, hiliData.NpcID, 2)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    local v = self:GetQuestNpcActor(hiliData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    v:Standby()
    v:DoFreeStateTrigger()
end

function Quest20010:OnSubStart2001001(arg1) end
function Quest20010:OnSubFinish2001001(arg1) end
function Quest20010:OnSubFailed2001001(arg1) end

function Quest20010:OnSubStart2001002(arg1)
    actorMgr:CreateActorWithPos("Q20010trigger01", "Actor/Gadget/Q20010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q20010Region").pos, sceneData:GetDummyPoint(3, "Q20010Region").rot, true, false)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.RunToRouteTask(questNpcActor, clientData.RoutePoints, function(arg1, arg2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001002)
        end

        questNpcActor:Standby()
        questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCDir3))
    end)
end

function Quest20010:OnSubFinish2001002(arg1) end

function Quest20010:OnSubFailed2001002(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest20010:OnSubStart2001003(arg1) end
function Quest20010:OnSubFinish2001003(arg1) end
function Quest20010:OnSubFailed2001003(arg1) end

function Quest20010:OnSubStart2001008(arg1)
    local n = math.random(1, 100)
    if 1 <= n and n <= 50 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001012)
            actor:FinishQuestID(true, 2001013)
        end
    elseif 50 < n and n <= 100 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001013)
            actor:FinishQuestID(true, 2001012)
        end
    end
end

function Quest20010:OnSubFinish2001008(arg1)
    print("08 finish")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:TransmitPlayerById(arg1, 1)
        self:CreateQuestNpc(arg1, npcData.NpcID, 1)
        self:RequestInteractionForceAlias("Npc2002520010")
        print("force dialogue")
    end)
end

function Quest20010:OnSubStart2001004(arg1) end

function Quest20010:OnSubFinish2001004(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end
        end)
    end)
end

function Quest20010:OnSubFailed2001004(arg1) end

function Quest20010:OnSubStart2001007(arg1)
    self:CallDelay(0.8, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2001007)
        end
    end)
end

function Quest20010:OnSubFinish2001007(arg1)
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

function Quest20010:OnSubFinish2001010(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2001008)
    end

    local questNpcActor = self:GetQuestNpcActor(hiliData.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    print("destroy hili npc")
end

function Quest20010:OnSubStart2001005(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2001010)
    end

    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1070)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20010:OnSubFinish2001005(arg1) end

function Quest20010:OnSubStart2001006(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    self:ClearSpeechBubbleTask()
end

function Quest20010:OnSubFinish2001006(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)
end

function Quest20010:OnSubStart2001015(arg1)
    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
end

function Quest20010:OnSubFinish2001015(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    self:GetQuestNpcActor(hiliData.Npc):DoFreeStyle(1)
end

function Quest20010:OnMainCanceled(arg1)
    self:GetQuestNpcActor(hiliData.Npc):Destroy(false)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

return Quest20010
