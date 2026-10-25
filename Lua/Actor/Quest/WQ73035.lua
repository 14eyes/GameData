require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73035 = class("Quest73035", QuestActorProxy)
Quest73035.defaultAlias = "Quest73035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303501"] = self.OnSubStart7303501,
        ["7303512"] = self.OnSubStart7303512,
        ["7303502"] = self.OnSubStart7303502,
        ["7303509"] = self.OnSubStart7303509,
        ["7303504"] = self.OnSubStart7303504,
        ["7303513"] = self.OnSubStart7303513,
        ["7303505"] = self.OnSubStart7303505,
        ["7303506"] = self.OnSubStart7303506,
        ["7303514"] = self.OnSubStart7303514,
        ["7303507"] = self.OnSubStart7303507,
        ["7303515"] = self.OnSubStart7303515,
        ["7303511"] = self.OnSubStart7303511,
        ["7303508"] = self.OnSubStart7303508,
        ["7303510"] = self.OnSubStart7303510,
        ["7303503"] = self.OnSubStart7303503
    }
end

function Quest73035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303501"] = self.OnSubFinish7303501,
        ["7303512"] = self.OnSubFinish7303512,
        ["7303502"] = self.OnSubFinish7303502,
        ["7303509"] = self.OnSubFinish7303509,
        ["7303504"] = self.OnSubFinish7303504,
        ["7303513"] = self.OnSubFinish7303513,
        ["7303505"] = self.OnSubFinish7303505,
        ["7303506"] = self.OnSubFinish7303506,
        ["7303514"] = self.OnSubFinish7303514,
        ["7303507"] = self.OnSubFinish7303507,
        ["7303515"] = self.OnSubFinish7303515,
        ["7303511"] = self.OnSubFinish7303511,
        ["7303508"] = self.OnSubFinish7303508,
        ["7303510"] = self.OnSubFinish7303510,
        ["7303503"] = self.OnSubFinish7303503
    }
end

function Quest73035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73035:Start()
    print("Start")
end

function Quest73035:OnDestroy()
    print("OnDestroy")
end

function Quest73035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73035:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73035:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7303509)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7303509)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7303504)
    end
end

function Quest73035:OnSubStart7303501(arg1)
    print("OnSubStart7303501")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20646Data.alias):ShowNpcWithLevelTagId(39, false)
end

function Quest73035:OnSubFinish7303501(arg1)
    print("OnSubFinish7303501")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73035:OnSubStart7303512(arg1)
    print("OnSubStart7303512")
    actorMgr:CreateActorWithPos("Q73035Trigger_7303512", "Actor/Gadget/Q73035Trigger_7303512", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303512_guide").pos, sceneData:GetDummyPoint(3, "Q7303512_guide").rot, true, false, 3)
end

function Quest73035:OnSubFinish7303512(arg1)
    print("OnSubFinish7303512")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest73035:OnSubStart7303502(arg1)
    print("OnSubStart7303502")
    actorMgr:CreateActorWithPos("Q73035Trigger_7303502", "Actor/Gadget/Q73035Trigger_7303502", 70900002, 0, {x = -618.657, y = 120.2, z = 3592.563}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73035:OnSubFinish7303502(arg1)
    print("OnSubFinish7303502")
end

function Quest73035:OnSubStart7303509(arg1)
    print("OnSubStart7303509")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73035:OnSubFinish7303509(arg1)
    print("OnSubFinish7303509")
    globalActor:PlayerEnterDungeon(591, 1154, false, nil, 0)
end

function Quest73035:OnSubStart7303504(arg1)
    print("OnSubStart7303504")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73035:OnSubFinish7303504(arg1)
    print("OnSubFinish7303504")
    globalActor:PlayerEnterDungeon(591, 1154, false, nil, 0)
end

function Quest73035:OnSubStart7303513(arg1)
    print("OnSubStart7303513")
end

function Quest73035:OnSubFinish7303513(arg1)
    print("OnSubFinish7303513")
end

function Quest73035:OnSubStart7303505(arg1)
    print("OnSubStart7303505")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73035:OnSubFinish7303505(arg1)
    print("OnSubFinish7303505")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 20148)
    self:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73035:OnSubStart7303506(arg1)
    print("OnSubStart7303506")
end

function Quest73035:OnSubFinish7303506(arg1)
    print("OnSubFinish7303506")
end

function Quest73035:OnSubStart7303514(arg1)
    print("OnSubStart7303514")
    self:PlayCutsceneIndex(7303514, function(arg1)
        actorUtils.FinishQuestID(false, 7303514)
    end, nil, nil, false)
end

function Quest73035:OnSubFinish7303514(arg1)
    print("OnSubFinish7303514")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest73035:OnSubStart7303507(arg1)
    print("OnSubStart7303507")
    actorMgr:CreateActorWithPos("Q73035Trigger_7303507", "Actor/Gadget/Q73035Trigger_7303507", 70900002, 0, {x = 517.641, y = 78.438, z = 504.655}, {x = 0.0, y = 359.608, z = 0.0}, true, false, 20148)
end

function Quest73035:OnSubFinish7303507(arg1)
    print("OnSubFinish7303507")
end

function Quest73035:OnSubStart7303515(arg1)
    print("OnSubStart7303515")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73035:OnSubFinish7303515(arg1)
    print("OnSubFinish7303515")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 3)
    end, nil, nil, "", false, true)
end

function Quest73035:OnSubStart7303511(arg1)
    print("OnSubStart7303511")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73035:OnSubFinish7303511(arg1)
    print("OnSubFinish7303511")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 20148)
    self:NarratorOnlyTask(datas.NarratorTable6, nil, "")
end

function Quest73035:OnSubStart7303508(arg1)
    print("OnSubStart7303508")
    actorMgr:CreateActorWithPos("Q73035Trigger_7303508", "Actor/Gadget/Q73035Trigger_7303508", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303508_guide").pos, sceneData:GetDummyPoint(3, "Q7303508_guide").rot, true, false, 3)
end

function Quest73035:OnSubFinish7303508(arg1)
    print("OnSubFinish7303508")
end

function Quest73035:OnSubStart7303510(arg1)
    print("OnSubStart7303510")
    self:PlayCutsceneIndex(7303510, function(arg1)
        actorUtils.FinishQuestID(false, 7303510)
    end, nil, nil, false)
end

function Quest73035:OnSubFinish7303510(arg1)
    print("OnSubFinish7303510")
end

function Quest73035:OnSubStart7303503(arg1)
    print("OnSubStart7303503")
end

function Quest73035:OnSubFinish7303503(arg1)
    print("OnSubFinish7303503")
end

return Quest73035
