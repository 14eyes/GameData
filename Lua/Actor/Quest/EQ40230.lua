require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40230 = class("Quest40230", QuestActorProxy)
Quest40230.defaultAlias = "Quest40230"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40230:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40230:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023032"] = self.OnSubStart4023032,
        ["4023001"] = self.OnSubStart4023001,
        ["4023002"] = self.OnSubStart4023002,
        ["4023003"] = self.OnSubStart4023003,
        ["4023031"] = self.OnSubStart4023031,
        ["4023028"] = self.OnSubStart4023028,
        ["4023004"] = self.OnSubStart4023004,
        ["4023005"] = self.OnSubStart4023005,
        ["4023029"] = self.OnSubStart4023029,
        ["4023022"] = self.OnSubStart4023022,
        ["4023023"] = self.OnSubStart4023023,
        ["4023026"] = self.OnSubStart4023026,
        ["4023006"] = self.OnSubStart4023006,
        ["4023016"] = self.OnSubStart4023016,
        ["4023007"] = self.OnSubStart4023007,
        ["4023008"] = self.OnSubStart4023008,
        ["4023009"] = self.OnSubStart4023009,
        ["4023011"] = self.OnSubStart4023011,
        ["4023012"] = self.OnSubStart4023012,
        ["4023010"] = self.OnSubStart4023010,
        ["4023013"] = self.OnSubStart4023013,
        ["4023025"] = self.OnSubStart4023025,
        ["4023027"] = self.OnSubStart4023027,
        ["4023014"] = self.OnSubStart4023014,
        ["4023015"] = self.OnSubStart4023015,
        ["4023017"] = self.OnSubStart4023017,
        ["4023018"] = self.OnSubStart4023018,
        ["4023019"] = self.OnSubStart4023019,
        ["4023020"] = self.OnSubStart4023020,
        ["4023021"] = self.OnSubStart4023021,
        ["4023024"] = self.OnSubStart4023024,
        ["4023030"] = self.OnSubStart4023030
    }
end

function Quest40230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023032"] = self.OnSubFinish4023032,
        ["4023001"] = self.OnSubFinish4023001,
        ["4023002"] = self.OnSubFinish4023002,
        ["4023003"] = self.OnSubFinish4023003,
        ["4023031"] = self.OnSubFinish4023031,
        ["4023028"] = self.OnSubFinish4023028,
        ["4023004"] = self.OnSubFinish4023004,
        ["4023005"] = self.OnSubFinish4023005,
        ["4023029"] = self.OnSubFinish4023029,
        ["4023022"] = self.OnSubFinish4023022,
        ["4023023"] = self.OnSubFinish4023023,
        ["4023026"] = self.OnSubFinish4023026,
        ["4023006"] = self.OnSubFinish4023006,
        ["4023016"] = self.OnSubFinish4023016,
        ["4023007"] = self.OnSubFinish4023007,
        ["4023008"] = self.OnSubFinish4023008,
        ["4023009"] = self.OnSubFinish4023009,
        ["4023011"] = self.OnSubFinish4023011,
        ["4023012"] = self.OnSubFinish4023012,
        ["4023010"] = self.OnSubFinish4023010,
        ["4023013"] = self.OnSubFinish4023013,
        ["4023025"] = self.OnSubFinish4023025,
        ["4023027"] = self.OnSubFinish4023027,
        ["4023014"] = self.OnSubFinish4023014,
        ["4023015"] = self.OnSubFinish4023015,
        ["4023017"] = self.OnSubFinish4023017,
        ["4023018"] = self.OnSubFinish4023018,
        ["4023019"] = self.OnSubFinish4023019,
        ["4023020"] = self.OnSubFinish4023020,
        ["4023021"] = self.OnSubFinish4023021,
        ["4023024"] = self.OnSubFinish4023024,
        ["4023030"] = self.OnSubFinish4023030
    }
end

function Quest40230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4023003"] = self.OnSubFailed4023003,
        ["4023031"] = self.OnSubFailed4023031,
        ["4023004"] = self.OnSubFailed4023004,
        ["4023005"] = self.OnSubFailed4023005,
        ["4023022"] = self.OnSubFailed4023022,
        ["4023023"] = self.OnSubFailed4023023,
        ["4023026"] = self.OnSubFailed4023026,
        ["4023016"] = self.OnSubFailed4023016,
        ["4023007"] = self.OnSubFailed4023007,
        ["4023008"] = self.OnSubFailed4023008,
        ["4023009"] = self.OnSubFailed4023009,
        ["4023011"] = self.OnSubFailed4023011,
        ["4023012"] = self.OnSubFailed4023012,
        ["4023010"] = self.OnSubFailed4023010,
        ["4023013"] = self.OnSubFailed4023013,
        ["4023014"] = self.OnSubFailed4023014,
        ["4023015"] = self.OnSubFailed4023015,
        ["4023017"] = self.OnSubFailed4023017,
        ["4023018"] = self.OnSubFailed4023018,
        ["4023019"] = self.OnSubFailed4023019
    }
end

function Quest40230:Start()
    print("Start")
end

function Quest40230:OnDestroy()
    print("OnDestroy")
end

function Quest40230:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40230:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40230:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4023001N1322Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1321.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 1154)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 1155)
    this:SafeDestroyQuestNpc(npcs.Npc16335.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20332)
    this:SafeDestroyQuestNpc(npcs.Npc16145.alias, 1155)
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc16336.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc16337.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc16335.alias, 1154)
    this:SafeDestroyQuestNpc(npcs.Npc1028.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc16555.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc16145.alias, 20332)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20329)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1322.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 20329)
    this:SafeDestroyQuestNpc(npcs.Npc16338.alias, 20329)
    this:LightNotifyTo(npcs.Npc1405.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1429.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1451.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1453.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1525.alias, 0, true)
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(74033050, "1")
    this:RemoveLocalGadget(74033018, "1")
    this:RemoveLocalGadget(74033018, "3")
    this:RemoveLocalGadget(74033018, "2")
    this:DestroyNpcTrigger("Q4023003N1009Trigger")
    this:DestroyNpcTrigger("Q4023004N1009Trigger")
    this:DestroyNpcTrigger("Q4023010N10095Trigger")
    this:DestroyNpcTrigger("Q4023012N1320Trigger")
    this:DestroyNpcTrigger("Q4023014N1060Trigger")
    this:DestroyNpcTrigger("Q4023017N10011Trigger")
    this:DestroyNpcTrigger("Q4023020N10095Trigger")
    this:DestroyNpcTrigger("Q4023021N1310Trigger")
    this:DestroyNpcTrigger("Q4023011N1028Trigger")
    this:DestroyNpcTrigger("Q4023022N10011Trigger")
    this:DestroyNpcTrigger("Q4023019N10011Trigger")
    this:DestroyNpcTrigger("Q4023016N1310Trigger")
    this:DestroyNpcTrigger("Q4023024N1321Trigger")
    this:ActorDestroy("Q4023012Trigger", 0)
    this:ActorDestroy("Q4023015Trigger", 0)
    this:ActorDestroy("Q4023006Trigger", 0)
    this:ActorDestroy("Q4023013Trigger", 0)
    this:ActorDestroy("Q4023029Trigger", 0)
    this:ActorDestroy("Q4023030Trigger", 0)
    this:CancelStoryByQuest(134023000)
    this:CancelStoryByQuest(114023000)
    this:CancelStoryByQuest(114023001)
    this:CancelStoryByQuest(134023002)
    this:CancelStoryByQuest(134023001)
    this:RecycleAllRes()
end

function Quest40230:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4023012Trigger", 0)
    this:ActorDestroy("Q4023015Trigger", 0)
    this:ActorDestroy("Q4023006Trigger", 0)
    this:ActorDestroy("Q4023013Trigger", 0)
    this:ActorDestroy("Q4023029Trigger", 0)
    this:ActorDestroy("Q4023030Trigger", 0)
end

function Quest40230:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40230:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40230:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40230:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40230:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest40230:OnSubStart4023032(arg1)
    print("OnSubStart4023032")
end

function Quest40230:OnSubFinish4023032(arg1)
    print("OnSubFinish4023032")
end

function Quest40230:OnSubStart4023001(arg1)
    print("OnSubStart4023001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1322.id, 0, 13, 4023001)
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Wendy.alias, 40230):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Diluc.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Diluc.alias, 40230):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "1", points.Q4023001_Gadget70291004_1_Point.pos, points.Q4023001_Gadget70291004_1_Point.rot, 1004, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 40230):SitOnTargetChair(8010, {x = 18.111, y = 0.01, z = 1.446}, {x = 0, y = 0, z = 0}, 0, true)
end

function Quest40230:OnSubFinish4023001(arg1)
    print("OnSubFinish4023001")
    this:NpcDestroyImmediately(1004, npcs.Npc1322.alias)
    this:NpcDestroyImmediately(1004, npcs.Wendy.alias)
    this:NpcDestroyImmediately(1004, npcs.Diluc.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1310.alias)
    this:NpcDestroyImmediately(1004, npcs.Qin.alias)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest40230:OnSubStart4023002(arg1)
    print("OnSubStart4023002")
end

function Quest40230:OnSubFinish4023002(arg1)
    print("OnSubFinish4023002")
end

function Quest40230:OnSubStart4023003(arg1)
    print("OnSubStart4023003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023003, 0, 10, 1, npcs.Diluc.id)
end

function Quest40230:OnSubFinish4023003(arg1)
    print("OnSubFinish4023003")
    this:NpcDestroyImmediately(1154, npcs.Diluc.alias)
end

function Quest40230:OnSubFailed4023003(arg1)
    print("OnSubFailed4023003")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023031(arg1)
    print("OnSubStart4023031")
    this:CreateQuestNpc(arg1, npcs.Npc16335.id, 0, false, 0)
    this:CreateLocalGadget(74033018, "1", points.Q4023031_Gadget74033018_1_Point.pos, points.Q4023031_Gadget74033018_1_Point.rot, 1154, nil, nil, false, 0, true)
end

function Quest40230:OnSubFinish4023031(arg1)
    print("OnSubFinish4023031")
    this:NpcDestroyImmediately(1154, npcs.Npc16335.alias)
    this:RemoveLocalGadget(74033018, "1")
    if sceneData.currSceneID == 1154 then
        this:PlayerEnterDungeonWithData(12, 1313, 4023031, 1, nil, nil, nil)
    end
end

function Quest40230:OnSubFailed4023031(arg1)
    print("OnSubFailed4023031")
    this:DestroyQuestNpcActor(npcs.Npc16335.alias, 1154)
    this:RemoveLocalGadget(74033018, "1")
end

function Quest40230:OnSubStart4023028(arg1)
    print("OnSubStart4023028")
end

function Quest40230:OnSubFinish4023028(arg1)
    print("OnSubFinish4023028")
end

function Quest40230:OnSubStart4023004(arg1)
    print("OnSubStart4023004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023004, 0, 10, 1, npcs.Diluc.id)
    this:CreateLocalGadget(74033050, "1", points.Q4023005_Gadget74033050_1_Point.pos, points.Q4023005_Gadget74033050_1_Point.rot, 1155, nil, nil, false, 0, true)
end

function Quest40230:OnSubFinish4023004(arg1)
    print("OnSubFinish4023004")
    this:NpcDestroyImmediately(1155, npcs.Diluc.alias)
end

function Quest40230:OnSubFailed4023004(arg1)
    print("OnSubFailed4023004")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023005(arg1)
    print("OnSubStart4023005")
    this:NpcCreateWithNoBlack(npcs.Npc16145.id, 0, 10, 4023005, true, 4023005)
    this:CreateLocalGadget(74033050, "1", points.Q4023005_Gadget74033050_1_Point.pos, points.Q4023005_Gadget74033050_1_Point.rot, 1155, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134023000)
    end)
end

function Quest40230:OnSubFinish4023005(arg1)
    print("OnSubFinish4023005")
    this:NpcDestroyImmediately(1155, npcs.Npc16145.alias)
    this:RemoveLocalGadget(74033050, "1")
end

function Quest40230:OnSubFailed4023005(arg1)
    print("OnSubFailed4023005")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023029(arg1)
    print("OnSubStart4023029")
    actorMgr:CreateActorWithPos("Q4023029Trigger", "Actor/Gadget/Q4023029Trigger", 70900002, 0, points._Q4023029TriggerPoint_.pos, points._Q4023029TriggerPoint_.rot, true, false, 1155, nil, 0, 0)
end

function Quest40230:OnSubFinish4023029(arg1)
    print("OnSubFinish4023029")
    this:ActorDestroy("Q4023029Trigger", 0)
end

function Quest40230:OnSubStart4023022(arg1)
    print("OnSubStart4023022")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023022, 0, 10, 1, npcs.Npc10011.id)
    this:CreateQuestNpc(arg1, npcs.Npc16145.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134023000)
    end)
end

function Quest40230:OnSubFinish4023022(arg1)
    print("OnSubFinish4023022")
    this:NpcDestroyImmediately(20332, npcs.Npc10011.alias)
    this:NpcDestroyImmediately(20332, npcs.Npc16145.alias)
    this:CancelStoryByQuest(134023000)
end

function Quest40230:OnSubFailed4023022(arg1)
    print("OnSubFailed4023022")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023023(arg1)
    print("OnSubStart4023023")
    this:DeployStoryByQuest(134023001)
end

function Quest40230:OnSubFinish4023023(arg1)
    print("OnSubFinish4023023")
end

function Quest40230:OnSubFailed4023023(arg1)
    print("OnSubFailed4023023")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023026(arg1)
    print("OnSubStart4023026")
    this:DeployStoryByQuest(134023001)
end

function Quest40230:OnSubFinish4023026(arg1)
    print("OnSubFinish4023026")
    this:CancelStoryByQuest(134023001)
end

function Quest40230:OnSubFailed4023026(arg1)
    print("OnSubFailed4023026")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023006(arg1)
    print("OnSubStart4023006")
    actorMgr:CreateActorWithPos("Q4023006Trigger", "Actor/Gadget/Q4023006Trigger", 70900002, 0, points._Q4023006TriggerPoint_.pos, points._Q4023006TriggerPoint_.rot, true, false, 20332, nil, 0, 0)
end

function Quest40230:OnSubFinish4023006(arg1)
    print("OnSubFinish4023006")
    this:ActorDestroy("Q4023006Trigger", 0)
end

function Quest40230:OnSubStart4023016(arg1)
    print("OnSubStart4023016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023016, 0, 10, 1, npcs.Npc1310.id)
end

function Quest40230:OnSubFinish4023016(arg1)
    print("OnSubFinish4023016")
    this:NpcDestroyImmediately(20329, npcs.Npc1310.alias)
end

function Quest40230:OnSubFailed4023016(arg1)
    print("OnSubFailed4023016")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023007(arg1)
    print("OnSubStart4023007")
    this:NpcCreateWithNoBlack(npcs.Npc10095.id, 0, 15, 4023007, true, 4023007)
end

function Quest40230:OnSubFinish4023007(arg1)
    print("OnSubFinish4023007")
    this:NpcDestroyImmediately(20329, npcs.Npc10095.alias)
end

function Quest40230:OnSubFailed4023007(arg1)
    print("OnSubFailed4023007")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023008(arg1)
    print("OnSubStart4023008")
    this:CreateQuestNpc(arg1, npcs.Npc16335.id, 0, false, 0)
    this:CreateLocalGadget(74033018, "1", points.Q4023008_Gadget74033018_1_Point.pos, points.Q4023008_Gadget74033018_1_Point.rot, 20329, nil, nil, false, 0, true)
end

function Quest40230:OnSubFinish4023008(arg1)
    print("OnSubFinish4023008")
    this:NpcDestroyImmediately(20329, npcs.Npc16335.alias)
    this:RemoveLocalGadget(74033018, "1")
    this:QuestNarratorTask(datas.NarratorWithId_4023001, nil)
end

function Quest40230:OnSubFailed4023008(arg1)
    print("OnSubFailed4023008")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023009(arg1)
    print("OnSubStart4023009")
    this:NpcCreateWithNoBlack(npcs.Npc1060.id, 0, 10, 4023009, true, 4023009)
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
end

function Quest40230:OnSubFinish4023009(arg1)
    print("OnSubFinish4023009")
end

function Quest40230:OnSubFailed4023009(arg1)
    print("OnSubFailed4023009")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023011(arg1)
    print("OnSubStart4023011")
    local questGlobalVar = this:GetQuestGlobalVar(4023001)
    local questVar = this:GetQuestVar(4023011, 2)
    if questGlobalVar == 0 and questVar == 0 then
        this:NpcCreateWithNpcTrigger(npcs.Npc1028.id, 0, 10, 4023011)
        this:CreateQuestNpc(arg1, npcs.Npc16555.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc16337.id, 0, false, 0)
        this:CreateLocalGadget(74033018, "2", points.Q4023013_Gadget74033018_2_Point.pos, points.Q4023013_Gadget74033018_2_Point.rot, 20329, nil, nil, false, 0, true)
    end
end

function Quest40230:OnSubFinish4023011(arg1)
    print("OnSubFinish4023011")
    this:NpcDestroyImmediately(20329, npcs.Npc16337.alias)
    this:RemoveLocalGadget(74033018, "2")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(4023013, npcs.Npc1028.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:CreateQuestNpcById(4023013, npcs.Npc16555.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DisableInteeHeadCtrl(true)
    end)
end

function Quest40230:OnSubFailed4023011(arg1)
    print("OnSubFailed4023011")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023012(arg1)
    print("OnSubStart4023012")
    if this:GetQuestGlobalVar(4023003) == 0 then
        if this:GetQuestVar(4023012, 3) == 0 then
            this:NpcCreateWithNpcTrigger(npcs.Npc1320.id, 0, 8, 4023012)
            this:CreateQuestNpc(arg1, npcs.Npc16336.id, 0, false, 0)
            this:CreateLocalGadget(74033018, "3", points.Q4023013_Gadget74033018_3_Point.pos, points.Q4023013_Gadget74033018_3_Point.rot, 20329, nil, nil, false, 0, true)
        end
    end

    if this:GetQuestVar(4023012, 0) == 0 then
        actorMgr:CreateActorWithPos("Q4023012Trigger", "Actor/Gadget/Q4023012Trigger", 70900002, 0, points._Q4023012TriggerPoint_.pos, points._Q4023012TriggerPoint_.rot, true, false, 20329, nil, 0, 0)
    end
end

function Quest40230:OnSubFinish4023012(arg1)
    print("OnSubFinish4023012")
    this:NpcDestroyImmediately(20329, npcs.Npc16336.alias)
    this:RemoveLocalGadget(74033018, "3")
end

function Quest40230:OnSubFailed4023012(arg1)
    print("OnSubFailed4023012")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023010(arg1)
    print("OnSubStart4023010")
    if this:GetQuestGlobalVar(4023002) == 0 then
        if this:GetQuestVar(4023010, 1) == 0 then
            this:NpcCreateWithNpcTrigger(npcs.Npc10095.id, 0, 10, 4023010)
            this:CreateQuestNpc(arg1, npcs.Npc16338.id, 0, false, 0)
            this:CreateLocalGadget(74033018, "1", points.Q4023025_Gadget74033018_1_Point.pos, points.Q4023025_Gadget74033018_1_Point.rot, 20329, nil, nil, false, 0, true)
        end

        if 4 == this:GetSubQuestState(4023025) then
            this:CreateQuestNpcById(4023013, npcs.Npc16338.id, 0, false, 0)
            this:CreateLocalGadget(74033018, "1", points.Q4023013_Gadget74033018_1_Point.pos, points.Q4023013_Gadget74033018_1_Point.rot, 20329, nil, nil, true, 0, true)
        end
    end
end

function Quest40230:OnSubFinish4023010(arg1)
    print("OnSubFinish4023010")
    this:NpcDestroyImmediately(20329, npcs.Npc16338.alias)
    this:RemoveLocalGadget(74033018, "1")
end

function Quest40230:OnSubFailed4023010(arg1)
    print("OnSubFailed4023010")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023013(arg1)
    print("OnSubStart4023013")
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
    this:CreateLocalGadget(74033018, "2", points.Q4023013_Gadget74033018_2_Point.pos, points.Q4023013_Gadget74033018_2_Point.rot, 20329, nil, nil, false, 0, true)
    this:CreateLocalGadget(74033018, "3", points.Q4023013_Gadget74033018_3_Point.pos, points.Q4023013_Gadget74033018_3_Point.rot, 20329, nil, nil, false, 0, true)
    if this:GetQuestGlobalVar(4023002) == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc10095.id, 0, false, 0)
    end

    if this:GetQuestGlobalVar(4023001) == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc1028.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc16555.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DisableInteeHeadCtrl(true)
    end

    if this:GetQuestGlobalVar(4023003) == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    end

    this:DeployStoryByQuest(114023000)
end

function Quest40230:OnSubFinish4023013(arg1)
    print("OnSubFinish4023013")
    this:NpcDestroyImmediately(20329, npcs.Npc16338.alias)
    this:RemoveLocalGadget(74033018, "1")
    this:RemoveLocalGadget(74033018, "2")
    this:RemoveLocalGadget(74033018, "3")
    this:QuestNarratorTask(datas.NarratorWithId_4023004, nil)
    this:CancelStoryByQuest(114023000)
end

function Quest40230:OnSubFailed4023013(arg1)
    print("OnSubFailed4023013")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023025(arg1)
    print("OnSubStart4023025")
    this:CreateQuestNpc(arg1, npcs.Npc16338.id, 0, false, 0)
    this:CreateLocalGadget(74033018, "1", points.Q4023025_Gadget74033018_1_Point.pos, points.Q4023025_Gadget74033018_1_Point.rot, 20329, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q4023013Trigger", "Actor/Gadget/Q4023013Trigger", 70900002, 0, points._Q4023013TriggerPoint_.pos, points._Q4023013TriggerPoint_.rot, true, false, 20329, nil, 0, 0)
end

function Quest40230:OnSubFinish4023025(arg1)
    print("OnSubFinish4023025")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(4023013, npcs.Npc16338.id, 0, false, 0)
        this:CreateLocalGadget(74033018, "1", points.Q4023013_Gadget74033018_1_Point.pos, points.Q4023013_Gadget74033018_1_Point.rot, 20329, nil, nil, true, 0, true)
    end)
end

function Quest40230:OnSubStart4023027(arg1)
    print("OnSubStart4023027")
end

function Quest40230:OnSubFinish4023027(arg1)
    print("OnSubFinish4023027")
end

function Quest40230:OnSubStart4023014(arg1)
    print("OnSubStart4023014")
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1060.id, 0, 8, 4023014)
    this:CreateQuestNpc(arg1, npcs.Npc10095.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16555.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DoFreeStyle(1230, true, nil, true, true, false, true)
    end)
end

function Quest40230:OnSubFinish4023014(arg1)
    print("OnSubFinish4023014")
end

function Quest40230:OnSubFailed4023014(arg1)
    print("OnSubFailed4023014")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023015(arg1)
    print("OnSubStart4023015")
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 40230):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16555.alias, 40230):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4023015Trigger", "Actor/Gadget/Q4023015Trigger", 70900002, 0, points._Q4023015TriggerPoint_.pos, points._Q4023015TriggerPoint_.rot, true, false, 20329, nil, 0, 0)
end

function Quest40230:OnSubFinish4023015(arg1)
    print("OnSubFinish4023015")
    this:NpcDestroyImmediately(20329, npcs.Npc10095.alias)
    this:NpcDestroyImmediately(20329, npcs.Npc1060.alias)
    this:NpcDestroyImmediately(20329, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(20329, npcs.Npc1028.alias)
    this:NpcDestroyImmediately(20329, npcs.Npc16555.alias)
end

function Quest40230:OnSubFailed4023015(arg1)
    print("OnSubFailed4023015")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023017(arg1)
    print("OnSubStart4023017")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023017, 0, 20, 1, npcs.Npc10011.id)
end

function Quest40230:OnSubFinish4023017(arg1)
    print("OnSubFinish4023017")
    this:NpcDestroyImmediately(20329, npcs.Npc10011.alias)
end

function Quest40230:OnSubFailed4023017(arg1)
    print("OnSubFailed4023017")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023018(arg1)
    print("OnSubStart4023018")
    this:DeployStoryByQuest(114023001)
end

function Quest40230:OnSubFinish4023018(arg1)
    print("OnSubFinish4023018")
    this:CancelStoryByQuest(114023001)
end

function Quest40230:OnSubFailed4023018(arg1)
    print("OnSubFailed4023018")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023019(arg1)
    print("OnSubStart4023019")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023019, 0, 20, 1, npcs.Npc10011.id)
end

function Quest40230:OnSubFinish4023019(arg1)
    print("OnSubFinish4023019")
    this:NpcDestroyImmediately(20329, npcs.Npc10011.alias)
    this:TransmitPlayerByData(arg1, 1, datas.Transmit_BB, nil, nil, nil)
end

function Quest40230:OnSubFailed4023019(arg1)
    print("OnSubFailed4023019")
    this:RecycleAllRes()
end

function Quest40230:OnSubStart4023020(arg1)
    print("OnSubStart4023020")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023020, 0, 10, 1, npcs.Npc10095.id)
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
end

function Quest40230:OnSubFinish4023020(arg1)
    print("OnSubFinish4023020")
    this:NpcDestroyImmediately(3, npcs.Npc10095.alias)
end

function Quest40230:OnSubStart4023021(arg1)
    print("OnSubStart4023021")
    this:NpcCreateWithNpcTrigger(npcs.Npc1310.id, 0, 5, 4023021)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 40230):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134023002)
    end)
end

function Quest40230:OnSubFinish4023021(arg1)
    print("OnSubFinish4023021")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
    this:TransmitPlayerByData(arg1, 1, datas.Transmit_BB, nil, nil, nil)
    this:CancelStoryByQuest(134023002)
end

function Quest40230:OnSubStart4023024(arg1)
    print("OnSubStart4023024")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023024, 0, 10, 0, npcs.Npc1321.id)
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
end

function Quest40230:OnSubFinish4023024(arg1)
    print("OnSubFinish4023024")
    this:NpcDestroyImmediately(3, npcs.Npc1321.alias)
end

function Quest40230:OnSubStart4023030(arg1)
    print("OnSubStart4023030")
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4023030Trigger", "Actor/Gadget/Q4023030Trigger", 70900002, 0, points._Q4023030TriggerPoint_.pos, points._Q4023030TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40230:OnSubFinish4023030(arg1)
    print("OnSubFinish4023030")
    this:LightNotifyTo(npcs.Npc1405.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1429.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1451.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1453.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1525.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642.alias, 0, true)
    this:ActorDestroy("Q4023030Trigger", nil)
end

return Quest40230
