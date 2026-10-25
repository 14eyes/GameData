require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20058 = class("Quest20058", QuestActorProxy)
Quest20058.defaultAlias = "Quest20058"
local posData
local npcData01
local npcData03
local npcData04
local clientData

function Quest20058:OnDataLoaded()
    clientData = self.clientData
    posData = clientData.PosData
    npcData01 = clientData.NPCData01
    npcData03 = clientData.NPCData03
    npcData04 = clientData.NPCData04
end

function Quest20058:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2005801"] = self.OnSubStart2005801
    self.subStartHandlers["2005802"] = self.OnSubStart2005802
    self.subStartHandlers["2005803"] = self.OnSubStart2005803
    self.subStartHandlers["2005804"] = self.OnSubStart2005804
    self.subStartHandlers["2005805"] = self.OnSubStart2005805
    self.subStartHandlers["2005806"] = self.OnSubStart2005806
    self.subStartHandlers["2005807"] = self.OnSubStart2005807
    self.subStartHandlers["2005808"] = self.OnSubStart2005808
    self.subStartHandlers["2005809"] = self.OnSubStart2005809
end

function Quest20058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2005801"] = self.OnSubFinish2005801
    self.subFinishHandlers["2005802"] = self.OnSubFinish2005802
    self.subFinishHandlers["2005803"] = self.OnSubFinish2005803
    self.subFinishHandlers["2005804"] = self.OnSubFinish2005804
    self.subFinishHandlers["2005805"] = self.OnSubFinish2005805
    self.subFinishHandlers["2005806"] = self.OnSubFinish2005806
    self.subFinishHandlers["2005807"] = self.OnSubFinish2005807
    self.subFinishHandlers["2005808"] = self.OnSubFinish2005808
    self.subFinishHandlers["2005809"] = self.OnSubFinish2005809
end

function Quest20058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2005801"] = self.OnSubFailed2005801
    self.subFailedHandlers["2005802"] = self.OnSubFailed2005802
    self.subFailedHandlers["2005803"] = self.OnSubFailed2005803
    self.subFailedHandlers["2005804"] = self.OnSubFailed2005804
    self.subFailedHandlers["2005805"] = self.OnSubFailed2005805
    self.subFailedHandlers["2005806"] = self.OnSubFailed2005806
    self.subFailedHandlers["2005807"] = self.OnSubFailed2005807
    self.subFailedHandlers["2005808"] = self.OnSubFailed2005808
    self.subFailedHandlers["2005809"] = self.OnSubFailed2005809
end

function Quest20058:StartTransmit(arg1)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(arg1, 1, self.TransmitCallback)
    end)
end

function Quest20058:TransmitCallback(arg1)
    self:CallDelay(0.5, self.StartCount)
end

function Quest20058:StartCount()
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest20058:CountDown()
    self:EnablePlayerInput(true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2005809)
    end
end

function Quest20058:FinishTransmit(arg1)
    self:CallDelay(8, self.Transmit(arg1))
end

function Quest20058:FailTransmit(arg1)
    self:CallDelay(4, self.Transmit(arg1))
end

function Quest20058:Transmit(arg1)
    self:TransmitPlayerByQuestId(arg1, 1, self.TransmitCallback)
end

function Quest20058:OnSubStart2005801(arg1)
    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1429", NpcUtil.NpcEventType.HIDESELF, true)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest20058:OnSubFinish2005801(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData04.Npc)
    self:ShowBlackScreen(1, 1, 0.5, function(arg1)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20058:OnSubFailed2005801(arg1) end

function Quest20058:OnSubStart2005802(arg1)
    self:NotifyTo("Npc1429", NpcUtil.NpcEventType.STARTDAILY, true)
    if self:GetQuestVar(arg1.QuestConfigId, 2) < 2 then
        self.uActor:RequestInteraction("Npc1601")
        self:SetQuestVar(arg1.QuestConfigId, 2, 2)
    end
end

function Quest20058:OnSubFinish2005802(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005802(arg1) end
function Quest20058:OnSubStart2005803(arg1) end
function Quest20058:OnSubFinish2005803(arg1) end
function Quest20058:OnSubFailed2005803(arg1) end

function Quest20058:OnSubStart2005804(arg1)
    if self:GetQuestNpcActorNoDummy(npcData01.Npc) == nil then
        self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)
        self:CreateQuestNpc(arg1, npcData03.NpcID)
    end

    local challengeRecordCurrValue = globalActor:GetChallengeRecordCurrValue(10)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    print(challengeRecordCurrValue)
    if challengeRecordCurrValue == nil then
        print("nochallengevalue")
    elseif challengeRecordCurrValue <= 120000 then
        if actor ~= nil then
            actor:FinishQuestID(false, 2005810)
        end
    elseif actor ~= nil then
        actor:FinishQuestID(false, 2005811)
    end
end

function Quest20058:OnSubFinish2005804(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData01.Npc)
    self:ShowBlackScreen(1, 1, 0.5, function(arg1)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true)
    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005804(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData01.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest20058:OnSubStart2005805(arg1)
    if self:GetQuestNpcActorNoDummy(npcData01.Npc) == nil then
        self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)
        self:CreateQuestNpc(arg1, npcData03.NpcID)
    end
end

function Quest20058:OnSubFinish2005805(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest20058:OnSubFailed2005805(arg1) end

function Quest20058:OnSubStart2005806(arg1)
    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20058:OnSubFinish2005806(arg1)
    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20058:OnSubFailed2005806(arg1) end

function Quest20058:OnSubStart2005807(arg1)
    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20058:OnSubFinish2005807(arg1) end
function Quest20058:OnSubFailed2005807(arg1) end

function Quest20058:OnSubStart2005808(arg1)
    if self:GetQuestVar(arg1.QuestConfigId, 1) == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005808)
            self:SetQuestVar(actor.QuestConfigId, 1, 0)
        end
    end
end

function Quest20058:OnSubFinish2005808(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005808(arg1) end

function Quest20058:OnSubStart2005809(arg1)
    self:StartTransmit(2005809)
end

function Quest20058:OnSubFinish2005809(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData01.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData03.NpcID)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
end

function Quest20058:OnSubFailed2005809(arg1) end

function Quest20058:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local questNpcActor = self:GetQuestNpcActor("NPC1601")
        local npcData04 = self.clientData.NPCData04
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local cameraEuler = self:GetCameraEuler()
        local v = avatarForward
        local dist = M.Dist(questNpcActor, avatarPos)
        v.x = (pos.x - avatarPos.x) / dist
        v.z = (pos.z - avatarPos.z) / dist
        print(v.x .. "," .. v.y .. "," .. v.z)
        local v2 = avatarPos
        local n = 0.5
        local n2 = 5
        local n3 = -4
        v2.x = v2.x + v.x * n
        v2.z = v2.z + v.z * n
        local v3 = avatarForward
        v3.z = -M.Euler2DirXZ(cameraEuler).z
        v3.x = -M.Euler2DirXZ(cameraEuler).x
        print(v3.x .. "," .. v3.y .. "," .. v3.z)
        v2.x = v2.x + v3.x * n2
        v2.z = v2.z + v3.z * n2
        print(v2.x .. "," .. v2.y .. "," .. v2.z)
        self:CreateQuestNpcByIdWithPos(2005801, npcData04.NpcID, 1, v2, M.Dir2Euler(v3))
        print(v2.x .. "," .. v2.y .. "," .. v2.z)
        v2.x = v2.x + v3.x * n3
        v2.z = v2.z + v3.z * n3
        self:GetQuestNpcActor(npcData04.Npc):WalkToTask(v2)
    end
end

function Quest20058:OnMainCanceled()
    local questNpcActor = self:GetQuestNpcActor(npcData01.Npc)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDither(false, 5)
    end

    self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true)
    local v = self:GetQuestNpcActor(npcData04.Npc)
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest20058:Start() end
function Quest20058:OnDestroy() end
return Quest20058
