require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6009 = class("Quest6009", QuestActorProxy)
Quest6009.defaultAlias = "Quest6009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600901"] = self.OnSubStart600901,
        ["600902"] = self.OnSubStart600902,
        ["600903"] = self.OnSubStart600903,
        ["600904"] = self.OnSubStart600904,
        ["600905"] = self.OnSubStart600905,
        ["600906"] = self.OnSubStart600906,
        ["600920"] = self.OnSubStart600920,
        ["600917"] = self.OnSubStart600917,
        ["600907"] = self.OnSubStart600907,
        ["600919"] = self.OnSubStart600919,
        ["600915"] = self.OnSubStart600915,
        ["600916"] = self.OnSubStart600916,
        ["600908"] = self.OnSubStart600908,
        ["600918"] = self.OnSubStart600918,
        ["600909"] = self.OnSubStart600909,
        ["600910"] = self.OnSubStart600910,
        ["600911"] = self.OnSubStart600911,
        ["600912"] = self.OnSubStart600912,
        ["600913"] = self.OnSubStart600913,
        ["600914"] = self.OnSubStart600914
    }
end

function Quest6009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600901"] = self.OnSubFinish600901,
        ["600902"] = self.OnSubFinish600902,
        ["600903"] = self.OnSubFinish600903,
        ["600904"] = self.OnSubFinish600904,
        ["600905"] = self.OnSubFinish600905,
        ["600906"] = self.OnSubFinish600906,
        ["600920"] = self.OnSubFinish600920,
        ["600917"] = self.OnSubFinish600917,
        ["600907"] = self.OnSubFinish600907,
        ["600919"] = self.OnSubFinish600919,
        ["600915"] = self.OnSubFinish600915,
        ["600916"] = self.OnSubFinish600916,
        ["600908"] = self.OnSubFinish600908,
        ["600918"] = self.OnSubFinish600918,
        ["600909"] = self.OnSubFinish600909,
        ["600910"] = self.OnSubFinish600910,
        ["600911"] = self.OnSubFinish600911,
        ["600912"] = self.OnSubFinish600912,
        ["600913"] = self.OnSubFinish600913,
        ["600914"] = self.OnSubFinish600914
    }
end

function Quest6009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["600917"] = self.OnSubFailed600917, ["600909"] = self.OnSubFailed600909}
end

function Quest6009:Start()
    print("Start")
end

function Quest6009:OnDestroy()
    print("OnDestroy")
end

function Quest6009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6009:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600909Trigger_rollback")
    this:ActorDestroy("Q600920Trigger_Enter")
    this:ActorDestroy("Q600918Trigger_Enter")
end

function Quest6009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6009:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6009:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6009:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6009:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6009:OnSubStart600901(arg1)
    print("OnSubStart600901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 10, 600901)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6009):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 6009):DoFreeStyle(4730, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 6009):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110600901)
end

function Quest6009:OnSubFinish600901(arg1)
    print("OnSubFinish600901")
    this:CancelStoryByQuest(110600901)
end

function Quest6009:OnSubStart600902(arg1)
    print("OnSubStart600902")
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 15, 600902)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6009):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest6009:OnSubFinish600902(arg1)
    print("OnSubFinish600902")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest6009:OnSubStart600903(arg1)
    print("OnSubStart600903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600903, 0, 15, 0.5, npcs.Npc1316.id)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15493.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600903(arg1)
    print("OnSubFinish600903")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
end

function Quest6009:OnSubStart600904(arg1)
    print("OnSubStart600904")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1316.id, 0, 600904, 10, true)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600904(arg1)
    print("OnSubFinish600904")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1152)
    this:ActionSafeCall(nil)
end

function Quest6009:OnSubStart600905(arg1)
    print("OnSubStart600905")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1316.id, 0, 600905, 15, true)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 1152 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData600904, nil, nil, nil)
            end
        end)
    end)
end

function Quest6009:OnSubFinish600905(arg1)
    print("OnSubFinish600905")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
end

function Quest6009:OnSubStart600906(arg1)
    print("OnSubStart600906")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600906(arg1)
    print("OnSubFinish600906")
end

function Quest6009:OnSubStart600920(arg1)
    print("OnSubStart600920")
    actorMgr:CreateActorWithPos("Q600920Trigger_Enter", "Actor/Gadget/Q600920Trigger_Enter", 70900002, 0, points._Q600920Trigger_EnterPoint_.pos, points._Q600920Trigger_EnterPoint_.rot, true, false, 3)
end

function Quest6009:OnSubFinish600920(arg1)
    print("OnSubFinish600920")
    this:ActorDestroy("Q600920Trigger_Enter")
end

function Quest6009:OnSubStart600917(arg1)
    print("OnSubStart600917")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600917(arg1)
    print("OnSubFinish600917")
end

function Quest6009:OnSubFailed600917(arg1)
    print("OnSubFailed600917")
    this:RemoveLocalGadget(73068015, "1")
    this:CancelStoryByQuest(110600909)
    this:ActorDestroy("Q600916N15385Trigger")
    this:UnCallDelayByQuest("1")
    this:SafeDestroyQuestNpc(npcs.Npc15385.alias, 3)
    this:ActorDestroy("Q600920Trigger_Enter")
    this:ActorDestroy("Q600918Trigger_Enter")
end

function Quest6009:OnSubStart600907(arg1)
    print("OnSubStart600907")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600907(arg1)
    print("OnSubFinish600907")
end

function Quest6009:OnSubStart600919(arg1)
    print("OnSubStart600919")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600919(arg1)
    print("OnSubFinish600919")
end

function Quest6009:OnSubStart600915(arg1)
    print("OnSubStart600915")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600915(arg1)
    print("OnSubFinish600915")
end

function Quest6009:OnSubStart600916(arg1)
    print("OnSubStart600916")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateLocalGadget(73068015, "1", {x = 2048.202, y = 211.06, z = 9208.536}, {x = 340.52, y = 0, z = 0}, 3, nil, nil, false, 201, true)
    this:CallDelayByQuest("1", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(600916, 0, 50, 0.5, npcs.Npc15385.id)
    end)
end

function Quest6009:OnSubFinish600916(arg1)
    print("OnSubFinish600916")
    this:SafeDestroyQuestNpc(npcs.Npc15385.alias, 3)
    this:RemoveLocalGadget(73068015, "1")
end

function Quest6009:OnSubStart600908(arg1)
    print("OnSubStart600908")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600908(arg1)
    print("OnSubFinish600908")
end

function Quest6009:OnSubStart600918(arg1)
    print("OnSubStart600918")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q600918Trigger_Enter", "Actor/Gadget/Q600918Trigger_Enter", 70900002, 0, points._Q600918Trigger_EnterPoint_.pos, points._Q600918Trigger_EnterPoint_.rot, true, false, 3)
end

function Quest6009:OnSubFinish600918(arg1)
    print("OnSubFinish600918")
    this:SetNavigationByMainId(6009, true)
    this:ActorDestroy("Q600918Trigger_Enter")
end

function Quest6009:OnSubStart600909(arg1)
    print("OnSubStart600909")
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110600909)
end

function Quest6009:OnSubFinish600909(arg1)
    print("OnSubFinish600909")
    this:ShowBlackScreenWithDialogText(0.2, 3, 0.5, nil, nil, nil, 0, false, true)
    this:CancelStoryByQuest(110600909)
end

function Quest6009:OnSubFailed600909(arg1)
    print("OnSubFailed600909")
    this:CancelStoryByQuest(110600909)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest6009:OnSubStart600910(arg1)
    print("OnSubStart600910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1314.id, 0, 600910, 40, true)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600910(arg1)
    print("OnSubFinish600910")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
end

function Quest6009:OnSubStart600911(arg1)
    print("OnSubStart600911")
    this:NpcCreateWithNoBlack(npcs.Npc1314.id, 0, 20, 600911, true, 600911)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600911(arg1)
    print("OnSubFinish600911")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
end

function Quest6009:OnSubStart600912(arg1)
    print("OnSubStart600912")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1314.id, 0, 600912, 10, true)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600912(arg1)
    print("OnSubFinish600912")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 1152)
    this:ActionSafeCall(nil)
end

function Quest6009:OnSubStart600913(arg1)
    print("OnSubStart600913")
    this:NpcCreateWithNoBlack(npcs.Npc7050.id, 0, 1, 600913, true, 600913)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7033.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7034.alias, true, 1)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 1152 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitData600912, nil, nil, nil)
            end
        end)
    end)
end

function Quest6009:OnSubFinish600913(arg1)
    print("OnSubFinish600913")
    this:SafeDestroyQuestNpc(npcs.Npc7050.alias, 3)
    this:LightNotifyTo(npcs.Npc7033.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7034.alias, 0, true)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 3, datas.TransmitData600913, nil, nil, nil)
    end)
end

function Quest6009:OnSubStart600914(arg1)
    print("OnSubStart600914")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1314.id, 0, 600914, 5, true)
    this:GetQuestNpcActor(npcs.Npc15493.alias, 6009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6009:OnSubFinish600914(arg1)
    print("OnSubFinish600914")
    this:SafeDestroyQuestNpc(npcs.Npc15493.alias, 3)
end

return Quest6009
