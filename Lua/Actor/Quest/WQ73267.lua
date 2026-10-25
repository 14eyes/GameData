require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73267 = class("Quest73267", QuestActorProxy)
Quest73267.defaultAlias = "Quest73267"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73267:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73267:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326701"] = self.OnSubStart7326701,
        ["7326702"] = self.OnSubStart7326702,
        ["7326703"] = self.OnSubStart7326703,
        ["7326705"] = self.OnSubStart7326705,
        ["7326706"] = self.OnSubStart7326706,
        ["7326707"] = self.OnSubStart7326707,
        ["7326708"] = self.OnSubStart7326708,
        ["7326709"] = self.OnSubStart7326709,
        ["7326710"] = self.OnSubStart7326710
    }
end

function Quest73267:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326701"] = self.OnSubFinish7326701,
        ["7326702"] = self.OnSubFinish7326702,
        ["7326703"] = self.OnSubFinish7326703,
        ["7326705"] = self.OnSubFinish7326705,
        ["7326706"] = self.OnSubFinish7326706,
        ["7326707"] = self.OnSubFinish7326707,
        ["7326708"] = self.OnSubFinish7326708,
        ["7326709"] = self.OnSubFinish7326709,
        ["7326710"] = self.OnSubFinish7326710
    }
end

function Quest73267:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73267:Start()
    print("Start")
end

function Quest73267:OnDestroy()
    print("OnDestroy")
end

function Quest73267:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73267:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73267:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73267:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73267:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73267:OnSubStart7326701(arg1)
    print("OnSubStart7326701")
    this:CreateQuestNpc(arg1, npcs.Npc4408Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
end

function Quest73267:OnSubFinish7326701(arg1)
    print("OnSubFinish7326701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4408Data.alias)
end

function Quest73267:OnSubStart7326702(arg1)
    print("OnSubStart7326702")
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    this:CallDelay(2, function(arg1)
        this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    end)
end

function Quest73267:OnSubFinish7326702(arg1)
    print("OnSubFinish7326702")
end

function Quest73267:OnSubStart7326703(arg1)
    print("OnSubStart7326703")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4407Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4407Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4320Data.alias, 1, true)
end

function Quest73267:OnSubFinish7326703(arg1)
    print("OnSubFinish7326703")
    this:SafeDestroyQuestNpc(npcs.Npc4408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4407Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4320Data.alias, 0, true)
end

function Quest73267:OnSubStart7326705(arg1)
    print("OnSubStart7326705")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4403Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
end

function Quest73267:OnSubFinish7326705(arg1)
    print("OnSubFinish7326705")
    this:SafeDestroyQuestNpc(npcs.Npc4408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4403Data.alias, 3)
end

function Quest73267:OnSubStart7326706(arg1)
    print("OnSubStart7326706")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4410Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4411Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7326706Trigger", "Actor/Gadget/Q7326706Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326706_N4410").pos, sceneData:GetDummyPoint(3, "Q7326706_N4410").rot, true, false, 3)
end

function Quest73267:OnSubFinish7326706(arg1)
    print("OnSubFinish7326706")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7326701)
    end)
end

function Quest73267:OnSubStart7326707(arg1)
    print("OnSubStart7326707")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
end

function Quest73267:OnSubFinish7326707(arg1)
    print("OnSubFinish7326707")
end

function Quest73267:OnSubStart7326708(arg1)
    print("OnSubStart7326708")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
end

function Quest73267:OnSubFinish7326708(arg1)
    print("OnSubFinish7326708")
    this:SafeDestroyQuestNpc(npcs.Npc4408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4410Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4411Data.alias, 3)
end

function Quest73267:OnSubStart7326709(arg1)
    print("OnSubStart7326709")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7326709Trigger", "Actor/Gadget/Q7326709Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326710_N4408").pos, sceneData:GetDummyPoint(3, "Q7326710_N4408").rot, true, false, 3)
end

function Quest73267:OnSubFinish7326709(arg1)
    print("OnSubFinish7326709")
end

function Quest73267:OnSubStart7326710(arg1)
    print("OnSubStart7326710")
    this:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    if this:GetQuestVar(7326710, 0) == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc4408Data.id, 1)
        actorMgr:CreateActorWithPos("Q7326710Trigger", "Actor/Gadget/Q7326710Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326710_N4408").pos, sceneData:GetDummyPoint(3, "Q7326710_N4408").rot, true, false, 3)
    else
        this:ShowBlackScreen(1.5, 1, 0.5, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc4408Data.id, 1)
            actorMgr:CreateActorWithPos("Q7326710Trigger", "Actor/Gadget/Q7326710Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326710_N4408").pos, sceneData:GetDummyPoint(3, "Q7326710_N4408").rot, true, false, 3)
            this:SetQuestVarByMainId(0, 1)
        end, nil, nil, "", false, true)
    end
end

function Quest73267:OnSubFinish7326710(arg1)
    print("OnSubFinish7326710")
    this:SafeDestroyQuestNpc(npcs.Npc4408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4410Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4411Data.alias, 3)
end

return Quest73267
