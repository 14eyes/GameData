require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13020 = class("Quest13020", QuestActorProxy)
Quest13020.defaultAlias = "Quest13020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302001"] = self.OnSubStart1302001,
        ["1302002"] = self.OnSubStart1302002,
        ["1302003"] = self.OnSubStart1302003,
        ["1302004"] = self.OnSubStart1302004,
        ["1302005"] = self.OnSubStart1302005,
        ["1302011"] = self.OnSubStart1302011,
        ["1302012"] = self.OnSubStart1302012,
        ["1302013"] = self.OnSubStart1302013,
        ["1302006"] = self.OnSubStart1302006,
        ["1302007"] = self.OnSubStart1302007,
        ["1302008"] = self.OnSubStart1302008,
        ["1302009"] = self.OnSubStart1302009,
        ["1302010"] = self.OnSubStart1302010
    }
end

function Quest13020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302001"] = self.OnSubFinish1302001,
        ["1302002"] = self.OnSubFinish1302002,
        ["1302003"] = self.OnSubFinish1302003,
        ["1302004"] = self.OnSubFinish1302004,
        ["1302005"] = self.OnSubFinish1302005,
        ["1302011"] = self.OnSubFinish1302011,
        ["1302012"] = self.OnSubFinish1302012,
        ["1302013"] = self.OnSubFinish1302013,
        ["1302006"] = self.OnSubFinish1302006,
        ["1302007"] = self.OnSubFinish1302007,
        ["1302008"] = self.OnSubFinish1302008,
        ["1302009"] = self.OnSubFinish1302009,
        ["1302010"] = self.OnSubFinish1302010
    }
end

function Quest13020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13020:Start()
    print("Start")
end

function Quest13020:OnDestroy()
    print("OnDestroy")
end

function Quest13020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13020:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest13020:OnSubStart1302001(arg1)
    print("OnSubStart1302001")
    this:CreateQuestNpc(arg1, npcs.Npc13030Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13031Data.id, 0)
    if self:GetQuestVar(1302001, 1) == 0 then
        self:NarratorOnlyTaskByData(datas.Narrator1302001, nil, 13020)
        self:SetQuestVarByMainId(1, 3)
    end

    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1302001Talk", "Actor/Gadget/Q1302001Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q13020_guide_T1302001_N13003").pos, sceneData:GetDummyPoint(3, "Q13020_guide_T1302001_N13003").rot, true, false, 3)
    end)
end

function Quest13020:OnSubFinish1302001(arg1)
    print("OnSubFinish1302001")
    this:SafeDestroyQuestNpc(npcs.Npc13030Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13031Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator1302002)
    end)
end

function Quest13020:OnSubStart1302002(arg1)
    print("OnSubStart1302002")
    this:CreateQuestNpc(arg1, npcs.Npc13091Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302002Finish", "Actor/Gadget/Q1302002Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302002_T1302003_N12772_guide").pos, sceneData:GetDummyPoint(3, "Q1302002_T1302003_N12772_guide").rot, true, false, 3)
    this:NotifyTo(npcs.Npc4086Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4002Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13030Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13031Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13030Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13031Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13020:OnSubFinish1302002(arg1)
    print("OnSubFinish1302002")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest13020:OnSubStart1302003(arg1)
    print("OnSubStart1302003")
    this:RequestInteraction(npcs.Npc13091Data.alias)
end

function Quest13020:OnSubFinish1302003(arg1)
    print("OnSubFinish1302003")
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc4086Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4002Data.alias, 0, true)
        this:DestroyQuestNpcActor(npcs.Npc13030Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13031Data.alias, 3)
    end)
end

function Quest13020:OnSubStart1302004(arg1)
    print("OnSubStart1302004")
    actorMgr:CreateActorWithPos("Q1302004Finish", "Actor/Gadget/Q1302004Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302004_Q1302005_N1053").pos, sceneData:GetDummyPoint(3, "Q1302004_Q1302005_N1053").rot, true, false, 3)
end

function Quest13020:OnSubFinish1302004(arg1)
    print("OnSubFinish1302004")
end

function Quest13020:OnSubStart1302005(arg1)
    print("OnSubStart1302005")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1053Data.id, 0, npcs.Npc1053Data.alias)
end

function Quest13020:OnSubFinish1302005(arg1)
    print("OnSubFinish1302005")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest13020:OnSubStart1302011(arg1)
    print("OnSubStart1302011")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
        actorMgr:CreateActorWithPos("Q1302011Finish", "Actor/Gadget/Q1302011Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302011_Q1302012_T1302012_N1053").pos, sceneData:GetDummyPoint(3, "Q1302011_Q1302012_T1302012_N1053").rot, true, false, 3)
        this:NotifyTo(npcs.Npc4021Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    end)
end

function Quest13020:OnSubFinish1302011(arg1)
    print("OnSubFinish1302011")
end

function Quest13020:OnSubStart1302012(arg1)
    print("OnSubStart1302012")
    this:RequestInteraction(npcs.Npc1053Data.alias)
end

function Quest13020:OnSubFinish1302012(arg1)
    print("OnSubFinish1302012")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc4021Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4020Data.alias, 0, true)
    end)
end

function Quest13020:OnSubStart1302013(arg1)
    print("OnSubStart1302013")
    this:CreateQuestNpc(arg1, npcs.Npc13003Data.id, 0)
end

function Quest13020:OnSubFinish1302013(arg1)
    print("OnSubFinish1302013")
end

function Quest13020:OnSubStart1302006(arg1)
    print("OnSubStart1302006")
    this:CreateQuestNpc(arg1, npcs.Npc13008Data.id, 0)
    this:CreateQuestNpc(arg1, nil, 2)
    this:CreateQuestNpc(arg1, nil, 3)
end

function Quest13020:OnSubFinish1302006(arg1)
    print("OnSubFinish1302006")
end

function Quest13020:OnSubStart1302007(arg1)
    print("OnSubStart1302007")
end

function Quest13020:OnSubFinish1302007(arg1)
    print("OnSubFinish1302007")
end

function Quest13020:OnSubStart1302008(arg1)
    print("OnSubStart1302008")
end

function Quest13020:OnSubFinish1302008(arg1)
    print("OnSubFinish1302008")
end

function Quest13020:OnSubStart1302009(arg1)
    print("OnSubStart1302009")
end

function Quest13020:OnSubFinish1302009(arg1)
    print("OnSubFinish1302009")
end

function Quest13020:OnSubStart1302010(arg1)
    print("OnSubStart1302010")
end

function Quest13020:OnSubFinish1302010(arg1)
    print("OnSubFinish1302010")
end

return Quest13020
