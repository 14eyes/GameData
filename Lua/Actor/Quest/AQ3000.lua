require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3000 = class("Quest3000", QuestActorProxy)
Quest3000.defaultAlias = "Quest3000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300011"] = self.OnSubStart300011,
        ["300001"] = self.OnSubStart300001,
        ["300002"] = self.OnSubStart300002,
        ["300003"] = self.OnSubStart300003,
        ["300004"] = self.OnSubStart300004,
        ["300005"] = self.OnSubStart300005,
        ["300006"] = self.OnSubStart300006,
        ["300007"] = self.OnSubStart300007,
        ["300008"] = self.OnSubStart300008,
        ["300009"] = self.OnSubStart300009,
        ["300010"] = self.OnSubStart300010
    }
end

function Quest3000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300011"] = self.OnSubFinish300011,
        ["300001"] = self.OnSubFinish300001,
        ["300002"] = self.OnSubFinish300002,
        ["300003"] = self.OnSubFinish300003,
        ["300004"] = self.OnSubFinish300004,
        ["300005"] = self.OnSubFinish300005,
        ["300006"] = self.OnSubFinish300006,
        ["300007"] = self.OnSubFinish300007,
        ["300008"] = self.OnSubFinish300008,
        ["300009"] = self.OnSubFinish300009,
        ["300010"] = self.OnSubFinish300010
    }
end

function Quest3000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3000:Start()
    print("Start")
end

function Quest3000:OnDestroy()
    print("OnDestroy")
end

function Quest3000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3000:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 30001001 then
        self:GetQuestNpcActor(npcs.Npc1050Data.alias):SpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
    elseif arg1 == 30001001 then
        self:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
    end
end

function Quest3000:OnSubStart300011(arg1)
    print("OnSubStart300011")
    self:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300011Trigger", "Actor/Gadget/Q300011Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300011_guide").pos, sceneData:GetDummyPoint(3, "Q300011_guide").rot, true, false, 3)
end

function Quest3000:OnSubFinish300011(arg1)
    print("OnSubFinish300011")
end

function Quest3000:OnSubStart300001(arg1)
    print("OnSubStart300001")
    self:NpcCreateWithTriggerBlack(npcs.Npc12554Data.id, 300001, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
end

function Quest3000:OnSubFinish300001(arg1)
    print("OnSubFinish300001")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300001)
    self:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
end

function Quest3000:OnSubStart300002(arg1)
    print("OnSubStart300002")
    self:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300002Trigger", "Actor/Gadget/Q300002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300002_guide").pos, sceneData:GetDummyPoint(3, "Q300002_guide").rot, true, false, 3)
end

function Quest3000:OnSubFinish300002(arg1)
    print("OnSubFinish300002")
    self:ClearNarratorTask()
end

function Quest3000:OnSubStart300003(arg1)
    print("OnSubStart300003")
    self:CreateQuestNpc(arg1, npcs.Npc12554Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300003Trigger", "Actor/Gadget/Q300003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300003_N12554").pos, sceneData:GetDummyPoint(3, "Q300003_N12554").rot, true, false, 3)
    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
end

function Quest3000:OnSubFinish300003(arg1)
    print("OnSubFinish300003")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
end

function Quest3000:OnSubStart300004(arg1)
    print("OnSubStart300004")
    self:LightNotifyTo(npcs.Npc4347Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4348Data.alias, 0, true)
    globalActor:PlayerEnterDungeon(596, 1155, true, datas.TextmapId300009, 0)
end

function Quest3000:OnSubFinish300004(arg1)
    print("OnSubFinish300004")
end

function Quest3000:OnSubStart300005(arg1)
    print("OnSubStart300005")
    actorMgr:CreateActorWithPos("Q300005Trigger", "Actor/Gadget/Q300005Trigger", 70900002, 0, sceneData:GetDummyPoint(20150, "Q300005_guide").pos, sceneData:GetDummyPoint(20150, "Q300005_guide").rot, true, false, 20150)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestSumeruMainQuest")
    end)
end

function Quest3000:OnSubFinish300005(arg1)
    print("OnSubFinish300005")
end

function Quest3000:OnSubStart300006(arg1)
    print("OnSubStart300006")
    self:PlayCutsceneIndex(30000601, function(arg1)
        actorUtils.FinishQuestID(false, 300006)
    end, nil, nil, false)
end

function Quest3000:OnSubFinish300006(arg1)
    print("OnSubFinish300006")
    self:TransmitPlayerWithTextById(arg1, 300006, datas.TextmapId300009, 0)
end

function Quest3000:OnSubStart300007(arg1)
    print("OnSubStart300007")
    actorMgr:CreateActorWithPos("Q300007Trigger", "Actor/Gadget/Q300007Trigger", 70900002, 0, sceneData:GetDummyPoint(20150, "Q300007_guide").pos, sceneData:GetDummyPoint(20150, "Q300007_guide").rot, true, false, 20150)
    self:CallDelay(0.5, function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestSumeruMainQuest")
    end)
end

function Quest3000:OnSubFinish300007(arg1)
    print("OnSubFinish300007")
end

function Quest3000:OnSubStart300008(arg1)
    print("OnSubStart300008")
    self:PlayCutsceneIndex(30000801, function(arg1)
        actorUtils.FinishQuestID(false, 300008)
    end, nil, nil, false)
end

function Quest3000:OnSubFinish300008(arg1)
    print("OnSubFinish300008")
    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
    self:ShowBlackScreen(0, 3, 0, nil, nil, nil, "", false, true)
end

function Quest3000:OnSubStart300009(arg1)
    print("OnSubStart300009")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 300009, datas.TextmapId300009, 2)
        actorMgr:CreateActorWithPos("Q300009Trigger", "Actor/Gadget/Q300009Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300010_N10000005").pos, sceneData:GetDummyPoint(3, "Q300010_N10000005").rot, true, false, 3)
    end)
end

function Quest3000:OnSubFinish300009(arg1)
    print("OnSubFinish300009")
end

function Quest3000:OnSubStart300010(arg1)
    print("OnSubStart300010")
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4303Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300010Trigger", "Actor/Gadget/Q300010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300010_N1051").pos, sceneData:GetDummyPoint(3, "Q300010_N1051").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
end

function Quest3000:OnSubFinish300010(arg1)
    print("OnSubFinish300010")
    self:LightNotifyTo(npcs.Npc4303Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4302Data.alias, 3)
end

return Quest3000
