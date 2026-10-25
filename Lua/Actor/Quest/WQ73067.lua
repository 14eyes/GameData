require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73067 = class("Quest73067", QuestActorProxy)
Quest73067.defaultAlias = "Quest73067"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73067:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306701"] = self.OnSubStart7306701,
        ["7306702"] = self.OnSubStart7306702,
        ["7306715"] = self.OnSubStart7306715,
        ["7306703"] = self.OnSubStart7306703,
        ["7306704"] = self.OnSubStart7306704,
        ["7306705"] = self.OnSubStart7306705,
        ["7306714"] = self.OnSubStart7306714,
        ["7306706"] = self.OnSubStart7306706,
        ["7306707"] = self.OnSubStart7306707,
        ["7306713"] = self.OnSubStart7306713,
        ["7306712"] = self.OnSubStart7306712,
        ["7306708"] = self.OnSubStart7306708,
        ["7306709"] = self.OnSubStart7306709,
        ["7306710"] = self.OnSubStart7306710,
        ["7306711"] = self.OnSubStart7306711
    }
end

function Quest73067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306701"] = self.OnSubFinish7306701,
        ["7306702"] = self.OnSubFinish7306702,
        ["7306715"] = self.OnSubFinish7306715,
        ["7306703"] = self.OnSubFinish7306703,
        ["7306704"] = self.OnSubFinish7306704,
        ["7306705"] = self.OnSubFinish7306705,
        ["7306714"] = self.OnSubFinish7306714,
        ["7306706"] = self.OnSubFinish7306706,
        ["7306707"] = self.OnSubFinish7306707,
        ["7306713"] = self.OnSubFinish7306713,
        ["7306712"] = self.OnSubFinish7306712,
        ["7306708"] = self.OnSubFinish7306708,
        ["7306709"] = self.OnSubFinish7306709,
        ["7306710"] = self.OnSubFinish7306710,
        ["7306711"] = self.OnSubFinish7306711
    }
end

function Quest73067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73067:Start()
    print("Start")
end

function Quest73067:OnDestroy()
    print("OnDestroy")
end

function Quest73067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73067:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73067:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73067:OnSubStart7306701(arg1)
    print("OnSubStart7306701")
    actorMgr:CreateActorWithPos("Q73067Trigger01", "Actor/Gadget/Q73067Trigger01", 70900002, 0, {x = 119.08, y = 249.666, z = 2479.591}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73067:OnSubFinish7306701(arg1)
    print("OnSubFinish7306701")
end

function Quest73067:OnSubStart7306702(arg1)
    print("OnSubStart7306702")
end

function Quest73067:OnSubFinish7306702(arg1)
    print("OnSubFinish7306702")
end

function Quest73067:OnSubStart7306715(arg1)
    print("OnSubStart7306715")
end

function Quest73067:OnSubFinish7306715(arg1)
    print("OnSubFinish7306715")
end

function Quest73067:OnSubStart7306703(arg1)
    print("OnSubStart7306703")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7306703, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.5, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest73067:OnSubFinish7306703(arg1)
    print("OnSubFinish7306703")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73067:OnSubStart7306704(arg1)
    print("OnSubStart7306704")
    actorMgr:CreateActorWithPos("Q73067Trigger04", "Actor/Gadget/Q73067Trigger04", 70900002, 0, {x = 121.415, y = 255.404, z = 2476.575}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73067:OnSubFinish7306704(arg1)
    print("OnSubFinish7306704")
end

function Quest73067:OnSubStart7306705(arg1)
    print("OnSubStart7306705")
    self:CreateQuestNpc(arg1, npcs.Npc20770Data.id, 1)
end

function Quest73067:OnSubFinish7306705(arg1)
    print("OnSubFinish7306705")
end

function Quest73067:OnSubStart7306714(arg1)
    print("OnSubStart7306714")
    self:NpcCreate(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest73067:OnSubFinish7306714(arg1)
    print("OnSubFinish7306714")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73067:OnSubStart7306706(arg1)
    print("OnSubStart7306706")
    self:CreateQuestNpc(arg1, npcs.Npc20852Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20852Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q73067Trigger06", "Actor/Gadget/Q73067Trigger06", 70900002, 0, {x = 149.718, y = 234.762, z = 2392.357}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73067:OnSubFinish7306706(arg1)
    print("OnSubFinish7306706")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest73067:OnSubStart7306707(arg1)
    print("OnSubStart7306707")
end

function Quest73067:OnSubFinish7306707(arg1)
    print("OnSubFinish7306707")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20852Data.id, 1)
end

function Quest73067:OnSubStart7306713(arg1)
    print("OnSubStart7306713")
end

function Quest73067:OnSubFinish7306713(arg1)
    print("OnSubFinish7306713")
end

function Quest73067:OnSubStart7306712(arg1)
    print("OnSubStart7306712")
    self:RequestInteraction(npcs.Npc20852Data.alias)
end

function Quest73067:OnSubFinish7306712(arg1)
    print("OnSubFinish7306712")
    self:SafeDestroyQuestNpc(npcs.Npc20852Data.alias, 3)
end

function Quest73067:OnSubStart7306708(arg1)
    print("OnSubStart7306708")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20745Data.id, 1)
    self:RequestInteraction(npcs.Npc20745Data.alias)
end

function Quest73067:OnSubFinish7306708(arg1)
    print("OnSubFinish7306708")
end

function Quest73067:OnSubStart7306709(arg1)
    print("OnSubStart7306709")
    self:CreateQuestNpc(arg1, npcs.Npc20745Data.id, 1)
    actorMgr:CreateActorWithPos("Q73067Trigger09", "Actor/Gadget/Q73067Trigger09", 70900002, 0, {x = 242.847, y = 253.902, z = 2487.546}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73067:OnSubFinish7306709(arg1)
    print("OnSubFinish7306709")
end

function Quest73067:OnSubStart7306710(arg1)
    print("OnSubStart7306710")
    self:NarratorOnlyTask(datas.NarratorTable03, nil, "")
end

function Quest73067:OnSubFinish7306710(arg1)
    print("OnSubFinish7306710")
end

function Quest73067:OnSubStart7306711(arg1)
    print("OnSubStart7306711")
    self:RequestInteraction(npcs.Npc20745Data.alias)
end

function Quest73067:OnSubFinish7306711(arg1)
    print("OnSubFinish7306711")
    self:GetQuestNpcActor(npcs.Npc20745Data.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc20770Data.alias, 3)
end

return Quest73067
