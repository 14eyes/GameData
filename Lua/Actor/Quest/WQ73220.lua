require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73220 = class("Quest73220", QuestActorProxy)
Quest73220.defaultAlias = "Quest73220"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73220:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7322001"] = self.OnSubStart7322001,
        ["7322002"] = self.OnSubStart7322002,
        ["7322011"] = self.OnSubStart7322011,
        ["7322003"] = self.OnSubStart7322003,
        ["7322009"] = self.OnSubStart7322009,
        ["7322012"] = self.OnSubStart7322012,
        ["7322010"] = self.OnSubStart7322010,
        ["7322013"] = self.OnSubStart7322013,
        ["7322005"] = self.OnSubStart7322005,
        ["7322014"] = self.OnSubStart7322014,
        ["7322004"] = self.OnSubStart7322004,
        ["7322006"] = self.OnSubStart7322006,
        ["7322017"] = self.OnSubStart7322017,
        ["7322022"] = self.OnSubStart7322022,
        ["7322018"] = self.OnSubStart7322018,
        ["7322015"] = self.OnSubStart7322015,
        ["7322019"] = self.OnSubStart7322019,
        ["7322007"] = self.OnSubStart7322007,
        ["7322016"] = self.OnSubStart7322016,
        ["7322024"] = self.OnSubStart7322024,
        ["7322021"] = self.OnSubStart7322021,
        ["7322020"] = self.OnSubStart7322020,
        ["7322023"] = self.OnSubStart7322023,
        ["7322008"] = self.OnSubStart7322008
    }
end

function Quest73220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7322001"] = self.OnSubFinish7322001,
        ["7322002"] = self.OnSubFinish7322002,
        ["7322011"] = self.OnSubFinish7322011,
        ["7322003"] = self.OnSubFinish7322003,
        ["7322009"] = self.OnSubFinish7322009,
        ["7322012"] = self.OnSubFinish7322012,
        ["7322010"] = self.OnSubFinish7322010,
        ["7322013"] = self.OnSubFinish7322013,
        ["7322005"] = self.OnSubFinish7322005,
        ["7322014"] = self.OnSubFinish7322014,
        ["7322004"] = self.OnSubFinish7322004,
        ["7322006"] = self.OnSubFinish7322006,
        ["7322017"] = self.OnSubFinish7322017,
        ["7322022"] = self.OnSubFinish7322022,
        ["7322018"] = self.OnSubFinish7322018,
        ["7322015"] = self.OnSubFinish7322015,
        ["7322019"] = self.OnSubFinish7322019,
        ["7322007"] = self.OnSubFinish7322007,
        ["7322016"] = self.OnSubFinish7322016,
        ["7322024"] = self.OnSubFinish7322024,
        ["7322021"] = self.OnSubFinish7322021,
        ["7322020"] = self.OnSubFinish7322020,
        ["7322023"] = self.OnSubFinish7322023,
        ["7322008"] = self.OnSubFinish7322008
    }
end

function Quest73220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73220:Start()
    print("Start")
end

function Quest73220:OnDestroy()
    print("OnDestroy")
end

function Quest73220:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73220:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73220:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73220:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73220:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73220:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73220:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73220:OnRewind(arg1)
    print("OnRewind")
end

function Quest73220:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7322015)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7322020)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7322021)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7322023)
    end
end

function Quest73220:OnSubStart7322001(arg1)
    print("OnSubStart7322001")
    actorMgr:CreateActorWithPos("Q7322001Trigger", "Actor/Gadget/Q7322001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322001_guide").pos, sceneData:GetDummyPoint(3, "Q7322001_guide").rot, true, false, 3)
end

function Quest73220:OnSubFinish7322001(arg1)
    print("OnSubFinish7322001")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.N_7322001)
    end)
end

function Quest73220:OnSubStart7322002(arg1)
    print("OnSubStart7322002")
    actorMgr:CreateActorWithPos("Q7322002Trigger", "Actor/Gadget/Q7322002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322002_guide").pos, sceneData:GetDummyPoint(3, "Q7322002_guide").rot, true, false, 3)
end

function Quest73220:OnSubFinish7322002(arg1)
    print("OnSubFinish7322002")
end

function Quest73220:OnSubStart7322011(arg1)
    print("OnSubStart7322011")
    this:ClearNarratorTask()
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4296Data.id, 1, npcs.Npc4296Data.alias)
end

function Quest73220:OnSubFinish7322011(arg1)
    print("OnSubFinish7322011")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73220:OnSubStart7322003(arg1)
    print("OnSubStart7322003")
    actorMgr:CreateActorWithPos("Q7322003Trigger", "Actor/Gadget/Q7322003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322003_guide").pos, sceneData:GetDummyPoint(3, "Q7322003_guide").rot, true, false, 3)
end

function Quest73220:OnSubFinish7322003(arg1)
    print("OnSubFinish7322003")
end

function Quest73220:OnSubStart7322009(arg1)
    print("OnSubStart7322009")
end

function Quest73220:OnSubFinish7322009(arg1)
    print("OnSubFinish7322009")
end

function Quest73220:OnSubStart7322012(arg1)
    print("OnSubStart7322012")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
end

function Quest73220:OnSubFinish7322012(arg1)
    print("OnSubFinish7322012")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73220:OnSubStart7322010(arg1)
    print("OnSubStart7322010")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7322010, function(arg1)
            actorUtils.FinishQuestID(false, 7322010)
        end, nil, nil, false)
    end)
end

function Quest73220:OnSubFinish7322010(arg1)
    print("OnSubFinish7322010")
end

function Quest73220:OnSubStart7322013(arg1)
    print("OnSubStart7322013")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20846Data.id, 1, npcs.Npc20846Data.alias)
    this:ClearNarratorTask()
end

function Quest73220:OnSubFinish7322013(arg1)
    print("OnSubFinish7322013")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73220:OnSubStart7322005(arg1)
    print("OnSubStart7322005")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    actorMgr:CreateActorWithPos("Q7322005Trigger", "Actor/Gadget/Q7322005Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322005_guide").pos, sceneData:GetDummyPoint(3, "Q7322005_guide").rot, true, false, 3)
end

function Quest73220:OnSubFinish7322005(arg1)
    print("OnSubFinish7322005")
end

function Quest73220:OnSubStart7322014(arg1)
    print("OnSubStart7322014")
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):DoFreeStateTrigger()
    end)
end

function Quest73220:OnSubFinish7322014(arg1)
    print("OnSubFinish7322014")
end

function Quest73220:OnSubStart7322004(arg1)
    print("OnSubStart7322004")
    this:ShowBlackScreenWithDialogText(0.5, 2.5, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc4296Data.alias)
        questNpcActor:DoFreeStyle(1282, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end, nil, nil, 0, false, true)
end

function Quest73220:OnSubFinish7322004(arg1)
    print("OnSubFinish7322004")
    this:GetQuestNpcActor(npcs.Npc4296Data.alias):DisableInteeHeadCtrl(false)
end

function Quest73220:OnSubStart7322006(arg1)
    print("OnSubStart7322006")
    this:CallDelay(0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):DoFreeStyle(1282, true, nil, true, true, false, false)
    end)
end

function Quest73220:OnSubFinish7322006(arg1)
    print("OnSubFinish7322006")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.N_7322002, function(arg1)
            actorUtils.FinishQuestID(false, 7322017)
        end)
    end)
end

function Quest73220:OnSubStart7322017(arg1)
    print("OnSubStart7322017")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(1.5, function(arg1)
            this:GetQuestNpcActor(npcs.Npc4296Data.alias):SitOnChair(8010)
        end)
    end, nil, nil, 0, false, true)
end

function Quest73220:OnSubFinish7322017(arg1)
    print("OnSubFinish7322017")
end

function Quest73220:OnSubStart7322022(arg1)
    print("OnSubStart7322022")
    actorMgr:CreateActorWithPos("Q7322022Trigger", "Actor/Gadget/Q7322022Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "T7322018_N20846").pos, sceneData:GetDummyPoint(3, "T7322018_N20846").rot, true, false, 3)
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
    this:CallDelay(1.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):SitOnChair(8010)
    end)
end

function Quest73220:OnSubFinish7322022(arg1)
    print("OnSubFinish7322022")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:ClearNarratorTask()
end

function Quest73220:OnSubStart7322018(arg1)
    print("OnSubStart7322018")
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
    this:CallDelay(1.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):SitOnChair(8010)
    end)

    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73220:OnSubFinish7322018(arg1)
    print("OnSubFinish7322018")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73220:OnSubStart7322015(arg1)
    print("OnSubStart7322015")
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
    this:CallDelay(1.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):SitOnChair(8010)
    end)
end

function Quest73220:OnSubFinish7322015(arg1)
    print("OnSubFinish7322015")
    this:NpcDestroy(npcs.Npc4296Data.alias, 3)
end

function Quest73220:OnSubStart7322019(arg1)
    print("OnSubStart7322019")
end

function Quest73220:OnSubFinish7322019(arg1)
    print("OnSubFinish7322019")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.N7322015_Trans, 10, nil, nil)
end

function Quest73220:OnSubStart7322007(arg1)
    print("OnSubStart7322007")
    actorMgr:CreateActorWithPos("Q7322007Trigger", "Actor/Gadget/Q7322007Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322007_guide").pos, sceneData:GetDummyPoint(3, "Q7322007_guide").rot, true, false, 3)
end

function Quest73220:OnSubFinish7322007(arg1)
    print("OnSubFinish7322007")
end

function Quest73220:OnSubStart7322016(arg1)
    print("OnSubStart7322016")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4296Data.id, 1, npcs.Npc4296Data.alias)
end

function Quest73220:OnSubFinish7322016(arg1)
    print("OnSubFinish7322016")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73220:OnSubStart7322021(arg1)
    print("OnSubStart7322021")
end

function Quest73220:OnSubFinish7322021(arg1)
    print("OnSubFinish7322021")
end

function Quest73220:OnSubStart7322020(arg1)
    print("OnSubStart7322020")
end

function Quest73220:OnSubFinish7322020(arg1)
    print("OnSubFinish7322020")
end

function Quest73220:OnSubStart7322023(arg1)
    print("OnSubStart7322023")
end

function Quest73220:OnSubFinish7322023(arg1)
    print("OnSubFinish7322023")
end

function Quest73220:OnSubStart7322008(arg1)
    print("OnSubStart7322008")
end

function Quest73220:OnSubFinish7322008(arg1)
    print("OnSubFinish7322008")
end

return Quest73220
