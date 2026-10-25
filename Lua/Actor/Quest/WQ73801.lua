require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73801 = class("Quest73801", QuestActorProxy)
Quest73801.defaultAlias = "Quest73801"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73801:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73801:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7380101"] = self.OnSubStart7380101,
        ["7380102"] = self.OnSubStart7380102,
        ["7380103"] = self.OnSubStart7380103,
        ["7380104"] = self.OnSubStart7380104,
        ["7380105"] = self.OnSubStart7380105,
        ["7380106"] = self.OnSubStart7380106,
        ["7380107"] = self.OnSubStart7380107,
        ["7380108"] = self.OnSubStart7380108,
        ["7380109"] = self.OnSubStart7380109,
        ["7380110"] = self.OnSubStart7380110
    }
end

function Quest73801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7380101"] = self.OnSubFinish7380101,
        ["7380102"] = self.OnSubFinish7380102,
        ["7380103"] = self.OnSubFinish7380103,
        ["7380104"] = self.OnSubFinish7380104,
        ["7380105"] = self.OnSubFinish7380105,
        ["7380106"] = self.OnSubFinish7380106,
        ["7380107"] = self.OnSubFinish7380107,
        ["7380108"] = self.OnSubFinish7380108,
        ["7380109"] = self.OnSubFinish7380109,
        ["7380110"] = self.OnSubFinish7380110
    }
end

function Quest73801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73801:Start()
    print("Start")
end

function Quest73801:OnDestroy()
    print("OnDestroy")
end

function Quest73801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73801:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4138Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4137Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4174Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4121Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20862Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73801Trigger", 3, false)
end

function Quest73801:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest73801:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73801:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73801:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73801:OnSubStart7380101(arg1)
    print("OnSubStart7380101")
end

function Quest73801:OnSubFinish7380101(arg1)
    print("OnSubFinish7380101")
end

function Quest73801:OnSubStart7380102(arg1)
    print("OnSubStart7380102")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7380102, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4138Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4137Data.id, 0, false, 0)
end

function Quest73801:OnSubFinish7380102(arg1)
    print("OnSubFinish7380102")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73801:OnSubStart7380103(arg1)
    print("OnSubStart7380103")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7380103, 1)
end

function Quest73801:OnSubFinish7380103(arg1)
    print("OnSubFinish7380103")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73801:OnSubStart7380104(arg1)
    print("OnSubStart7380104")
    this:CreateQuestNpc(arg1, npcs.Npc4138Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4137Data.id, 2)
end

function Quest73801:OnSubFinish7380104(arg1)
    print("OnSubFinish7380104")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4138Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4137Data.alias)
end

function Quest73801:OnSubStart7380105(arg1)
    print("OnSubStart7380105")
    this:NpcCreateWithTriggerBlack(npcs.Npc4137Data.id, 7380105, 1)
end

function Quest73801:OnSubFinish7380105(arg1)
    print("OnSubFinish7380105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4137Data.alias)
end

function Quest73801:OnSubStart7380106(arg1)
    print("OnSubStart7380106")
    this:CreateQuestNpc(arg1, npcs.Npc4138Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4174Data.id, 2)
    actorMgr:CreateActorWithPos("Q73801Trigger", "Actor/Gadget/Q73801Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q73801_WILD04_YALISHANDELA").pos, sceneData:GetDummyPoint(3, "Q73801_WILD04_YALISHANDELA").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc4138Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4174Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest73801:OnSubFinish7380106(arg1)
    print("OnSubFinish7380106")
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73801:OnSubStart7380107(arg1)
    print("OnSubStart7380107")
    this:GetQuestNpcActor(npcs.Npc4138Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc4174Data.alias):DoFreeStyle(1070, true, nil, true, true, false)
end

function Quest73801:OnSubFinish7380107(arg1)
    print("OnSubFinish7380107")
end

function Quest73801:OnSubStart7380108(arg1)
    print("OnSubStart7380108")
    this:GetQuestNpcActor(npcs.Npc4138Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc4174Data.alias):DoFreeStyle(5030, true, nil, true, true, false)
end

function Quest73801:OnSubFinish7380108(arg1)
    print("OnSubFinish7380108")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4174Data.alias)
end

function Quest73801:OnSubStart7380109(arg1)
    print("OnSubStart7380109")
    this:CreateQuestNpc(arg1, npcs.Npc4137Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4121Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20862Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc4138Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc4137Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest73801:OnSubFinish7380109(arg1)
    print("OnSubFinish7380109")
    this:SafeDestroyQuestNpc(npcs.Npc4138Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4137Data.alias, 3)
end

function Quest73801:OnSubStart7380110(arg1)
    print("OnSubStart7380110")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7380110, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4174Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4121Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc4121Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest73801:OnSubFinish7380110(arg1)
    print("OnSubFinish7380110")
    this:NpcDestroyWithDither(npcs.PaimonData.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4174Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4121Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc20862Data.alias, 3)
end

return Quest73801
