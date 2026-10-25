require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40113 = class("Quest40113", QuestActorProxy)
Quest40113.defaultAlias = "Quest40113"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40113:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011301"] = self.OnSubStart4011301,
        ["4011302"] = self.OnSubStart4011302,
        ["4011319"] = self.OnSubStart4011319,
        ["4011303"] = self.OnSubStart4011303,
        ["4011304"] = self.OnSubStart4011304,
        ["4011320"] = self.OnSubStart4011320,
        ["4011305"] = self.OnSubStart4011305,
        ["4011306"] = self.OnSubStart4011306,
        ["4011307"] = self.OnSubStart4011307,
        ["4011308"] = self.OnSubStart4011308,
        ["4011309"] = self.OnSubStart4011309,
        ["4011318"] = self.OnSubStart4011318,
        ["4011317"] = self.OnSubStart4011317,
        ["4011310"] = self.OnSubStart4011310,
        ["4011324"] = self.OnSubStart4011324,
        ["4011321"] = self.OnSubStart4011321,
        ["4011322"] = self.OnSubStart4011322,
        ["4011323"] = self.OnSubStart4011323,
        ["4011315"] = self.OnSubStart4011315,
        ["4011311"] = self.OnSubStart4011311,
        ["4011312"] = self.OnSubStart4011312,
        ["4011313"] = self.OnSubStart4011313,
        ["4011316"] = self.OnSubStart4011316,
        ["4011314"] = self.OnSubStart4011314
    }
end

function Quest40113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011301"] = self.OnSubFinish4011301,
        ["4011302"] = self.OnSubFinish4011302,
        ["4011319"] = self.OnSubFinish4011319,
        ["4011303"] = self.OnSubFinish4011303,
        ["4011304"] = self.OnSubFinish4011304,
        ["4011320"] = self.OnSubFinish4011320,
        ["4011305"] = self.OnSubFinish4011305,
        ["4011306"] = self.OnSubFinish4011306,
        ["4011307"] = self.OnSubFinish4011307,
        ["4011308"] = self.OnSubFinish4011308,
        ["4011309"] = self.OnSubFinish4011309,
        ["4011318"] = self.OnSubFinish4011318,
        ["4011317"] = self.OnSubFinish4011317,
        ["4011310"] = self.OnSubFinish4011310,
        ["4011324"] = self.OnSubFinish4011324,
        ["4011321"] = self.OnSubFinish4011321,
        ["4011322"] = self.OnSubFinish4011322,
        ["4011323"] = self.OnSubFinish4011323,
        ["4011315"] = self.OnSubFinish4011315,
        ["4011311"] = self.OnSubFinish4011311,
        ["4011312"] = self.OnSubFinish4011312,
        ["4011313"] = self.OnSubFinish4011313,
        ["4011316"] = self.OnSubFinish4011316,
        ["4011314"] = self.OnSubFinish4011314
    }
end

function Quest40113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40113:Start()
    print("Start")
end

function Quest40113:OnDestroy()
    print("OnDestroy")
end

function Quest40113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40113:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13245Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13246Data.alias, 10)
    actorMgr:DestroyEntityActor("Q4011301Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011301Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011303Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011303Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011307Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011307Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011310Talk", 10, false)
    actorMgr:DestroyEntityActor("Q4011313Finish", 10, false)
    this:UnCallDelayByQuest("4011303")
end

function Quest40113:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest40113:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40113:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4011320 then
        actorUtils.FinishQuestID(false, 4011320)
    elseif arg1 == 4011316 then
        actorUtils.FinishQuestID(false, 4011316)
    end
end

function Quest40113:OnSubStart4011301(arg1)
    print("OnSubStart4011301")
    actorMgr:CreateActorWithPos("Q4011301Finish", "Actor/Gadget/Q4011301Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011302_N10090").pos, sceneData:GetDummyPoint(10, "Q4011302_N10090").rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011301Kaiche", "Actor/Gadget/Q4011301Kaiche", 70900002, 0, points.TPos_Q4011301Kaiche.pos, points.TPos_Q4011301Kaiche.rot, true, false, 10)
end

function Quest40113:OnSubFinish4011301(arg1)
    print("OnSubFinish4011301")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40113:OnSubStart4011302(arg1)
    print("OnSubStart4011302")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40113:OnSubFinish4011302(arg1)
    print("OnSubFinish4011302")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
end

function Quest40113:OnSubStart4011319(arg1)
    print("OnSubStart4011319")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13246Data.id, 0)
        actorMgr:CreateActorWithPos("Q4011303Kaiche", "Actor/Gadget/Q4011303Kaiche", 70900002, 0, points.TPos_Q4011303Kaiche.pos, points.TPos_Q4011303Kaiche.rot, true, false, 10)
    end)
end

function Quest40113:OnSubFinish4011319(arg1)
    print("OnSubFinish4011319")
    this:NarratorOnlyTaskByData(datas.Kaiche4011303)
    this:CallDelayByQuest("4011303", 1, function(arg1)
        this:EnterSceneLookCamera(points.CameraLook4011303.pos, 0, 3, false, false)
        this:GetQuestNpcActor(npcs.Npc13246Data.alias):DestroyWithDisappear(false)
        this:PlayEffect("Eff_SceneObj_LittleOceanid_01", {x = 759, y = 109, z = 755}, {x = 0, y = 0, z = 0})
    end)
end

function Quest40113:OnSubStart4011303(arg1)
    print("OnSubStart4011303")
    actorMgr:CreateActorWithPos("Q4011303Finish", "Actor/Gadget/Q4011303Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011304_Q4011306_N10090").pos, sceneData:GetDummyPoint(10, "Q4011304_Q4011306_N10090").rot, true, false, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13245Data.id, 0)
end

function Quest40113:OnSubFinish4011303(arg1)
    print("OnSubFinish4011303")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40113:OnSubStart4011304(arg1)
    print("OnSubStart4011304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10090Data.id, 4011304, 0, 10, 1)
end

function Quest40113:OnSubFinish4011304(arg1)
    print("OnSubFinish4011304")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
end

function Quest40113:OnSubStart4011320(arg1)
    print("OnSubStart4011320")
end

function Quest40113:OnSubFinish4011320(arg1)
    print("OnSubFinish4011320")
end

function Quest40113:OnSubStart4011305(arg1)
    print("OnSubStart4011305")
end

function Quest40113:OnSubFinish4011305(arg1)
    print("OnSubFinish4011305")
end

function Quest40113:OnSubStart4011306(arg1)
    print("OnSubStart4011306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10090Data.id, 4011306, 0, 10, 1)
end

function Quest40113:OnSubFinish4011306(arg1)
    print("OnSubFinish4011306")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
end

function Quest40113:OnSubStart4011307(arg1)
    print("OnSubStart4011307")
    this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011307Finish", "Actor/Gadget/Q4011307Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011308_N1037").pos, sceneData:GetDummyPoint(10, "Q4011308_N1037").rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011307Kaiche", "Actor/Gadget/Q4011307Kaiche", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011308_N1037").pos, sceneData:GetDummyPoint(10, "Q4011308_N1037").rot, true, false, 10)
end

function Quest40113:OnSubFinish4011307(arg1)
    print("OnSubFinish4011307")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40113:OnSubStart4011308(arg1)
    print("OnSubStart4011308")
    this:RequestInteraction(npcs.Npc1037Data.alias)
end

function Quest40113:OnSubFinish4011308(arg1)
    print("OnSubFinish4011308")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 10)
        this:DestroyQuestNpcActor(npcs.Npc13247Data.alias, 10)
    end)
end

function Quest40113:OnSubStart4011309(arg1)
    print("OnSubStart4011309")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.GaiaData.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc10090Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13247Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13247Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    end)
end

function Quest40113:OnSubFinish4011309(arg1)
    print("OnSubFinish4011309")
end

function Quest40113:OnSubStart4011318(arg1)
    print("OnSubStart4011318")
end

function Quest40113:OnSubFinish4011318(arg1)
    print("OnSubFinish4011318")
end

function Quest40113:OnSubStart4011317(arg1)
    print("OnSubStart4011317")
end

function Quest40113:OnSubFinish4011317(arg1)
    print("OnSubFinish4011317")
end

function Quest40113:OnSubStart4011310(arg1)
    print("OnSubStart4011310")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q4011310Talk", "Actor/Gadget/Q4011310Talk", 70900002, 0, {x = 397.018, y = 103.391, z = 625.722}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    end)
end

function Quest40113:OnSubFinish4011310(arg1)
    print("OnSubFinish4011310")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.kaiche401131501)
    end)
end

function Quest40113:OnSubStart4011324(arg1)
    print("OnSubStart4011324")
    actorMgr:CreateActorWithPos("Q4011324Finish", "Actor/Gadget/Q4011324Finish", 70900002, 0, points.TPos_Q4011324Finish.pos, points.TPos_Q4011324Finish.rot, true, false, 10)
end

function Quest40113:OnSubFinish4011324(arg1)
    print("OnSubFinish4011324")
end

function Quest40113:OnSubStart4011321(arg1)
    print("OnSubStart4011321")
    actorMgr:CreateActorWithPos("Q4011321Finish", "Actor/Gadget/Q4011321Finish", 70900002, 0, points.TPos_Q4011321Finish.pos, points.TPos_Q4011321Finish.rot, true, false, 10)
end

function Quest40113:OnSubFinish4011321(arg1)
    print("OnSubFinish4011321")
end

function Quest40113:OnSubStart4011322(arg1)
    print("OnSubStart4011322")
    actorMgr:CreateActorWithPos("Q4011322Finish", "Actor/Gadget/Q4011322Finish", 70900002, 0, points.TPos_Q4011322Finish.pos, points.TPos_Q4011322Finish.rot, true, false, 10)
end

function Quest40113:OnSubFinish4011322(arg1)
    print("OnSubFinish4011322")
    this:NarratorOnlyTaskByData(datas.kaiche401131502)
end

function Quest40113:OnSubStart4011323(arg1)
    print("OnSubStart4011323")
    actorMgr:CreateActorWithPos("Q4011323Finish", "Actor/Gadget/Q4011323Finish", 70900002, 0, points.TPos_Q4011323Finish.pos, points.TPos_Q4011323Finish.rot, true, false, 10)
end

function Quest40113:OnSubFinish4011323(arg1)
    print("OnSubFinish4011323")
end

function Quest40113:OnSubStart4011315(arg1)
    print("OnSubStart4011315")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13247Data.id, 4011315, 0, 15, 1)
end

function Quest40113:OnSubFinish4011315(arg1)
    print("OnSubFinish4011315")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40113:OnSubStart4011311(arg1)
    print("OnSubStart4011311")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 0)
    end)
end

function Quest40113:OnSubFinish4011311(arg1)
    print("OnSubFinish4011311")
end

function Quest40113:OnSubStart4011312(arg1)
    print("OnSubStart4011312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13247Data.id, 4011312, 0, 15, 1)
end

function Quest40113:OnSubFinish4011312(arg1)
    print("OnSubFinish4011312")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40113:OnSubStart4011313(arg1)
    print("OnSubStart4011313")
    actorMgr:CreateActorWithPos("Q4011313Finish", "Actor/Gadget/Q4011313Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011313_Q4011314_N1037").pos, sceneData:GetDummyPoint(10, "Q4011313_Q4011314_N1037").rot, true, false, 10)
end

function Quest40113:OnSubFinish4011313(arg1)
    print("OnSubFinish4011313")
end

function Quest40113:OnSubStart4011316(arg1)
    print("OnSubStart4011316")
end

function Quest40113:OnSubFinish4011316(arg1)
    print("OnSubFinish4011316")
end

function Quest40113:OnSubStart4011314(arg1)
    print("OnSubStart4011314")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1037Data.id, 1, npcs.Npc1037Data.alias)
end

function Quest40113:OnSubFinish4011314(arg1)
    print("OnSubFinish4011314")
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
end

return Quest40113
