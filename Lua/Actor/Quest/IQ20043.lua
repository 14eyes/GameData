require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20043 = class("Quest20043", QuestActorProxy)
Quest20043.defaultAlias = "Quest20043"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local michelleData
local quinnData
local paimonData

function Quest20043:OnDataLoaded()
    clientData = self.clientData
    michelleData = clientData.MichelleData
    quinnData = clientData.QuinnData
    paimonData = clientData.PaimonData
end

function Quest20043:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004301"] = self.OnSubStart2004301
    self.subStartHandlers["2004302"] = self.OnSubStart2004302
    self.subStartHandlers["2004303"] = self.OnSubStart2004303
    self.subStartHandlers["2004304"] = self.OnSubStart2004304
    self.subStartHandlers["2004305"] = self.OnSubStart2004305
    self.subStartHandlers["2004306"] = self.OnSubStart2004306
    self.subStartHandlers["2004307"] = self.OnSubStart2004307
end

function Quest20043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004301"] = self.OnSubFinish2004301
    self.subFinishHandlers["2004302"] = self.OnSubFinish2004302
    self.subFinishHandlers["2004303"] = self.OnSubFinish2004303
    self.subFinishHandlers["2004304"] = self.OnSubFinish2004304
    self.subFinishHandlers["2004305"] = self.OnSubFinish2004305
    self.subFinishHandlers["2004306"] = self.OnSubFinish2004306
    self.subFinishHandlers["2004307"] = self.OnSubFinish2004307
end

function Quest20043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004301"] = self.OnSubFailed2004301
    self.subFailedHandlers["2004302"] = self.OnSubFailed2004302
    self.subFailedHandlers["2004303"] = self.OnSubFailed2004303
    self.subFailedHandlers["2004304"] = self.OnSubFailed2004304
    self.subFailedHandlers["2004305"] = self.OnSubFailed2004305
    self.subFailedHandlers["2004306"] = self.OnSubFailed2004306
    self.subFailedHandlers["2004307"] = self.OnSubFailed2004307
end

function Quest20043:OnSubStart2004301(arg1)
    self:CreateQuestNpc(arg1, michelleData.NpcID, 1)
    self:CreateQuestNpc(arg1, quinnData.NpcID, 2)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(michelleData.Npc)
    local v = self:GetQuestNpcActor(quinnData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    v:Standby()
    v:DoFreeStateTrigger()
end

function Quest20043:OnSubFinish2004301(arg1)
    self:GetQuestNpcActor(paimonData.Npc):DestroyWithDisappear()
    local questNpcActor = self:GetQuestNpcActor(quinnData.Npc)
    self:CreateSpeechBubbleTask(questNpcActor, 200430701, 2, true, 3, 2)
end

function Quest20043:OnSubStart2004306(arg1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20043:OnSubFinish2004306(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + 1
    avatarPos.z = avatarPos.z - 0.5
    self:CreateQuestNpcByIdWithPos(2004306, 1005, 3, avatarPos, M.Dir2Euler(avatarForward))
    self:RequestInteractionForceAlias("Paimon20043")
end

function Quest20043:OnSubFinish2004307(arg1)
    self:GetQuestNpcActor(paimonData.Npc):DestroyWithDisappear()
end

function Quest20043:OnSubFailed2004301(arg1) end

function Quest20043:OnSubStart2004302(arg1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20043:OnSubFinish2004302(arg1)
    self:GetQuestNpcActor(paimonData.Npc):DestroyWithDisappear()
end

function Quest20043:OnSubFailed2004302(arg1) end

function Quest20043:OnSubStart2004303(arg1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20043:OnSubFinish2004303(arg1) end
function Quest20043:OnSubFailed2004303(arg1) end

function Quest20043:OnSubStart2004304(arg1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20043:OnSubFinish2004304(arg1)
    self:GetQuestNpcActor(paimonData.Npc):DestroyWithDisappear()
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
end

function Quest20043:OnSubFailed2004304(arg1) end

function Quest20043:OnSubStart2004305(arg1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20043:OnSubFinish2004305(arg1)
    self:GetQuestNpcActor(paimonData.Npc):DestroyWithDisappear()
    self:GetQuestNpcActor(michelleData.Npc):WalkToTask(michelleData.NPCLeavePos, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end)

    self:GetQuestNpcActor(quinnData.Npc):DestroyWithDither(false, 1)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest20043:OnSubFailed2004305(arg1) end

function Quest20043:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("paimon create")
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = michelleData.NPCPos.x - avatarPos.x
        avatarForward.z = michelleData.NPCPos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + michelleData.NPCPos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + michelleData.NPCPos.z) + avatarForward.z * 1
        avatarForward.x = michelleData.NPCPos.x - avatarPos.x
        avatarForward.z = michelleData.NPCPos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2004301, 1005, 3, avatarPos, M.Dir2Euler(avatarForward))
        print("paimon created")
    elseif arg1 == 2 then
        self:ClearSpeechBubbleTask()
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = quinnData.NPCPos.x - avatarPos.x
        avatarForward.z = quinnData.NPCPos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + quinnData.NPCPos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + quinnData.NPCPos.z) + avatarForward.z * 1
        avatarForward.x = quinnData.NPCPos.x - avatarPos.x
        avatarForward.z = quinnData.NPCPos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2004306, 1005, 3, avatarPos, M.Dir2Euler(avatarForward))
        print("paimon create")
    elseif arg1 == 3 then
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = quinnData.NPCPos.x - avatarPos.x
        avatarForward.z = quinnData.NPCPos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + quinnData.NPCPos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + quinnData.NPCPos.z) + avatarForward.z * 1
        avatarForward.x = quinnData.NPCPos.x - avatarPos.x
        avatarForward.z = quinnData.NPCPos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2004306, 1005, 3, avatarPos, M.Dir2Euler(avatarForward))
        print("paimon created")
    elseif arg1 == 4 then
        print("paimon create")
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = michelleData.NPCPos.x - avatarPos.x
        avatarForward.z = michelleData.NPCPos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + michelleData.NPCPos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + michelleData.NPCPos.z) + avatarForward.z * 1
        avatarForward.x = michelleData.NPCPos.x - avatarPos.x
        avatarForward.z = michelleData.NPCPos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2004306, 1005, 3, avatarPos, M.Dir2Euler(avatarForward))
        print("paimon created")
    end
end

function Quest20043:OnMainCanceled(arg1)
    local questNpcActor = self:GetQuestNpcActor(michelleData.Npc)
    local v = self:GetQuestNpcActor(quinnData.Npc)
    questNpcActor:Destroy(false)
    v:Destroy(false)
    self:NotifyTo("Npc1421", DailyNPCManager.NpcEventType.STARTDAILY, false)
    self:NotifyTo("Npc1403", DailyNPCManager.NpcEventType.STARTDAILY, false)
end

function Quest20043:Start() end
function Quest20043:OnDestroy() end
return Quest20043
