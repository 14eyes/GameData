require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6010 = class("Quest6010", QuestActorProxy)
Quest6010.defaultAlias = "Quest6010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601001"] = self.OnSubStart601001,
        ["601002"] = self.OnSubStart601002,
        ["601003"] = self.OnSubStart601003,
        ["601004"] = self.OnSubStart601004,
        ["601017"] = self.OnSubStart601017,
        ["601005"] = self.OnSubStart601005,
        ["601006"] = self.OnSubStart601006,
        ["601007"] = self.OnSubStart601007,
        ["601008"] = self.OnSubStart601008,
        ["601015"] = self.OnSubStart601015,
        ["601018"] = self.OnSubStart601018,
        ["601009"] = self.OnSubStart601009,
        ["601014"] = self.OnSubStart601014,
        ["601016"] = self.OnSubStart601016,
        ["601010"] = self.OnSubStart601010,
        ["601011"] = self.OnSubStart601011,
        ["601012"] = self.OnSubStart601012,
        ["601013"] = self.OnSubStart601013
    }
end

function Quest6010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601001"] = self.OnSubFinish601001,
        ["601002"] = self.OnSubFinish601002,
        ["601003"] = self.OnSubFinish601003,
        ["601004"] = self.OnSubFinish601004,
        ["601017"] = self.OnSubFinish601017,
        ["601005"] = self.OnSubFinish601005,
        ["601006"] = self.OnSubFinish601006,
        ["601007"] = self.OnSubFinish601007,
        ["601008"] = self.OnSubFinish601008,
        ["601015"] = self.OnSubFinish601015,
        ["601018"] = self.OnSubFinish601018,
        ["601009"] = self.OnSubFinish601009,
        ["601014"] = self.OnSubFinish601014,
        ["601016"] = self.OnSubFinish601016,
        ["601010"] = self.OnSubFinish601010,
        ["601011"] = self.OnSubFinish601011,
        ["601012"] = self.OnSubFinish601012,
        ["601013"] = self.OnSubFinish601013
    }
end

function Quest6010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601005"] = self.OnSubFailed601005,
        ["601006"] = self.OnSubFailed601006,
        ["601007"] = self.OnSubFailed601007,
        ["601008"] = self.OnSubFailed601008,
        ["601018"] = self.OnSubFailed601018,
        ["601009"] = self.OnSubFailed601009,
        ["601014"] = self.OnSubFailed601014
    }
end

function Quest6010:Start()
    print("Start")
end

function Quest6010:OnDestroy()
    print("OnDestroy")
end

function Quest6010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6010:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601017Trigger_Enter")
    this:ActorDestroy("Q601001Trigger_Enter")
    this:ActorDestroy("Q601015Trigger_OnEnter")
    this:ActorDestroy("Q601014Trigger_EnterFail")
    this:ActorDestroy("Q601018Trigger_Enter")
end

function Quest6010:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueString == "OnSkillAnno" then
        print("OnSkillAnno")
        this:QuestNarratorTask(datas.NarratorWithId_601097, nil)
    else
        if arg1.valueString == "OnSkillIneffa" then
            print("OnSkillIneffa")
            this:QuestNarratorTask(datas.NarratorWithId_601096, nil)
        end
    end
end

function Quest6010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6010:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6010:OnSubStart601001(arg1)
    print("OnSubStart601001")
    this:CreateQuestNpc(arg1, npcs.Npc15386.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6010):DoFreeStyle(1220, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q601001Trigger_Enter", "Actor/Gadget/Q601001Trigger_Enter", 70900002, 0, points._Q601001Trigger_EnterPoint_.pos, points._Q601001Trigger_EnterPoint_.rot, true, false, 1204)
end

function Quest6010:OnSubFinish601001(arg1)
    print("OnSubFinish601001")
    this:SafeDestroyQuestNpc(npcs.Npc15386.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 1204)
    this:ClearNarratorTask()
    this:ActorDestroy("Q601001Trigger_Enter")
end

function Quest6010:OnSubStart601002(arg1)
    print("OnSubStart601002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1316.id, 0, 601002, 15, true)
end

function Quest6010:OnSubFinish601002(arg1)
    print("OnSubFinish601002")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_601098, nil)
    end)
end

function Quest6010:OnSubStart601003(arg1)
    print("OnSubStart601003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601003, 0, 35, 0.5, npcs.Npc1314.id)
end

function Quest6010:OnSubFinish601003(arg1)
    print("OnSubFinish601003")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 9, datas.TransmitData601014, nil, nil, nil)
    end)
end

function Quest6010:OnSubStart601004(arg1)
    print("OnSubStart601004")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1314.id, 0, 601004, 20, true)
end

function Quest6010:OnSubFinish601004(arg1)
    print("OnSubFinish601004")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1626, 1258, 601004, 1, datas.DungeonTransmitData601004, nil, nil)
    end)
end

function Quest6010:OnSubStart601017(arg1)
    print("OnSubStart601017")
    actorMgr:CreateActorWithPos("Q601017Trigger_Enter", "Actor/Gadget/Q601017Trigger_Enter", 70900002, 0, points._Q601017Trigger_EnterPoint_.pos, points._Q601017Trigger_EnterPoint_.rot, true, false, 20278)
end

function Quest6010:OnSubFinish601017(arg1)
    print("OnSubFinish601017")
    this:ActorDestroy("Q601017Trigger_Enter")
end

function Quest6010:OnSubStart601005(arg1)
    print("OnSubStart601005")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1315.id, 0, 601005, 30, true)
    this:DeployStoryByQuest(110601005)
end

function Quest6010:OnSubFinish601005(arg1)
    print("OnSubFinish601005")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 20278)
end

function Quest6010:OnSubFailed601005(arg1)
    print("OnSubFailed601005")
    this:CancelStoryByQuest(110601005)
end

function Quest6010:OnSubStart601006(arg1)
    print("OnSubStart601006")
    this:DeployStoryByQuest(110601005)
    globalActor:UnSpawnAttachInFixedArea(6010)
end

function Quest6010:OnSubFinish601006(arg1)
    print("OnSubFinish601006")
end

function Quest6010:OnSubFailed601006(arg1)
    print("OnSubFailed601006")
    this:CancelStoryByQuest(110601005)
    globalActor:UnSpawnAttachInFixedArea(6010)
end

function Quest6010:OnSubStart601007(arg1)
    print("OnSubStart601007")
    this:DeployStoryByQuest(110601005)
end

function Quest6010:OnSubFinish601007(arg1)
    print("OnSubFinish601007")
end

function Quest6010:OnSubFailed601007(arg1)
    print("OnSubFailed601007")
    this:CancelStoryByQuest(110601005)
    globalActor:UnSpawnAttachInFixedArea(6010)
end

function Quest6010:OnSubStart601008(arg1)
    print("OnSubStart601008")
    this:DeployStoryByQuest(110601005)
end

function Quest6010:OnSubFinish601008(arg1)
    print("OnSubFinish601008")
    this:CancelStoryByQuest(110601005)
    globalActor:UnSpawnAttachInFixedArea(6010)
end

function Quest6010:OnSubFailed601008(arg1)
    print("OnSubFailed601008")
    this:CancelStoryByQuest(110601005)
    globalActor:UnSpawnAttachInFixedArea(6010)
end

function Quest6010:OnSubStart601015(arg1)
    print("OnSubStart601015")
    actorMgr:CreateActorWithPos("Q601015Trigger_OnEnter", "Actor/Gadget/Q601015Trigger_OnEnter", 70900002, 0, points._Q601015Trigger_OnEnterPoint_.pos, points._Q601015Trigger_OnEnterPoint_.rot, true, false, 20278)
end

function Quest6010:OnSubFinish601015(arg1)
    print("OnSubFinish601015")
    this:ActorDestroy("Q601015Trigger_OnEnter")
end

function Quest6010:OnSubStart601018(arg1)
    print("OnSubStart601018")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc15486.id, 0, 601018, 15, true)
    actorMgr:CreateActorWithPos("Q601018Trigger_Enter", "Actor/Gadget/Q601018Trigger_Enter", 70900002, 0, points._Q601018Trigger_EnterPoint_.pos, points._Q601018Trigger_EnterPoint_.rot, true, false, 20278)
end

function Quest6010:OnSubFinish601018(arg1)
    print("OnSubFinish601018")
    this:SafeDestroyQuestNpc(npcs.Npc15486.alias, 20278)
    this:ActorDestroy("Q601018Trigger_Enter")
end

function Quest6010:OnSubFailed601018(arg1)
    print("OnSubFailed601018")
    this:ActorDestroy("Q601018Trigger_Enter")
end

function Quest6010:OnSubStart601009(arg1)
    print("OnSubStart601009")
    this:DeployStoryByQuest(110601015)
end

function Quest6010:OnSubFinish601009(arg1)
    print("OnSubFinish601009")
    this:CancelStoryByQuest(110601015)
end

function Quest6010:OnSubFailed601009(arg1)
    print("OnSubFailed601009")
    this:CancelStoryByQuest(110601015)
end

function Quest6010:OnSubStart601014(arg1)
    print("OnSubStart601014")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1313.id, 0, 601014, 60, true)
    actorMgr:CreateActorWithPos("Q601014Trigger_EnterFail", "Actor/Gadget/Q601014Trigger_EnterFail", 70900002, 0, points._Q601014Trigger_EnterFailPoint_.pos, points._Q601014Trigger_EnterFailPoint_.rot, true, false, 20278)
end

function Quest6010:OnSubFinish601014(arg1)
    print("OnSubFinish601014")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 20278)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 4, datas.TransmitData601009, nil, nil, nil)
        this:ActorDestroy("Q601014Trigger_EnterFail")
    end)
end

function Quest6010:OnSubFailed601014(arg1)
    print("OnSubFailed601014")
    this:ActorDestroy("Q601014Trigger_EnterFail")
    this:ClearNpcTriggerByQuestId(601014)
end

function Quest6010:OnSubStart601016(arg1)
    print("OnSubStart601016")
end

function Quest6010:OnSubFinish601016(arg1)
    print("OnSubFinish601016")
end

function Quest6010:OnSubStart601010(arg1)
    print("OnSubStart601010")
end

function Quest6010:OnSubFinish601010(arg1)
    print("OnSubFinish601010")
end

function Quest6010:OnSubStart601011(arg1)
    print("OnSubStart601011")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601011, 0, 50, 0.5, npcs.Npc1313.id)
end

function Quest6010:OnSubFinish601011(arg1)
    print("OnSubFinish601011")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 20278)
end

function Quest6010:OnSubStart601012(arg1)
    print("OnSubStart601012")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1314.id, 0, 601012, 20, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20278 then
                this:TransmitPlayerByData(arg1, 5, datas.TransmitData601011, nil, nil, nil)
            end
        end)
    end)
end

function Quest6010:OnSubFinish601012(arg1)
    print("OnSubFinish601012")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 6, datas.TransmitData601012, nil, nil, nil)
    end)
end

function Quest6010:OnSubStart601013(arg1)
    print("OnSubStart601013")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1318.id, 0, 601013, 15, true)
end

function Quest6010:OnSubFinish601013(arg1)
    print("OnSubFinish601013")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

return Quest6010
