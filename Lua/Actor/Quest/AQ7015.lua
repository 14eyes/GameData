require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7015 = class("Quest7015", QuestActorProxy)
Quest7015.defaultAlias = "Quest7015"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701518"] = self.OnSubStart701518,
        ["701501"] = self.OnSubStart701501,
        ["701502"] = self.OnSubStart701502,
        ["701505"] = self.OnSubStart701505,
        ["701519"] = self.OnSubStart701519,
        ["701506"] = self.OnSubStart701506,
        ["701507"] = self.OnSubStart701507,
        ["701515"] = self.OnSubStart701515,
        ["701508"] = self.OnSubStart701508,
        ["701503"] = self.OnSubStart701503,
        ["701504"] = self.OnSubStart701504,
        ["701509"] = self.OnSubStart701509,
        ["701510"] = self.OnSubStart701510,
        ["701511"] = self.OnSubStart701511,
        ["701522"] = self.OnSubStart701522,
        ["701521"] = self.OnSubStart701521,
        ["701520"] = self.OnSubStart701520,
        ["701512"] = self.OnSubStart701512,
        ["701513"] = self.OnSubStart701513,
        ["701516"] = self.OnSubStart701516,
        ["701517"] = self.OnSubStart701517,
        ["701514"] = self.OnSubStart701514
    }
end

function Quest7015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701518"] = self.OnSubFinish701518,
        ["701501"] = self.OnSubFinish701501,
        ["701502"] = self.OnSubFinish701502,
        ["701505"] = self.OnSubFinish701505,
        ["701519"] = self.OnSubFinish701519,
        ["701506"] = self.OnSubFinish701506,
        ["701507"] = self.OnSubFinish701507,
        ["701515"] = self.OnSubFinish701515,
        ["701508"] = self.OnSubFinish701508,
        ["701503"] = self.OnSubFinish701503,
        ["701504"] = self.OnSubFinish701504,
        ["701509"] = self.OnSubFinish701509,
        ["701510"] = self.OnSubFinish701510,
        ["701511"] = self.OnSubFinish701511,
        ["701522"] = self.OnSubFinish701522,
        ["701521"] = self.OnSubFinish701521,
        ["701520"] = self.OnSubFinish701520,
        ["701512"] = self.OnSubFinish701512,
        ["701513"] = self.OnSubFinish701513,
        ["701516"] = self.OnSubFinish701516,
        ["701517"] = self.OnSubFinish701517,
        ["701514"] = self.OnSubFinish701514
    }
end

function Quest7015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701506"] = self.OnSubFailed701506,
        ["701507"] = self.OnSubFailed701507,
        ["701515"] = self.OnSubFailed701515,
        ["701508"] = self.OnSubFailed701508,
        ["701503"] = self.OnSubFailed701503,
        ["701509"] = self.OnSubFailed701509,
        ["701510"] = self.OnSubFailed701510,
        ["701511"] = self.OnSubFailed701511,
        ["701520"] = self.OnSubFailed701520,
        ["701513"] = self.OnSubFailed701513,
        ["701517"] = self.OnSubFailed701517
    }
end

function Quest7015:Start()
    print("Start")
end

function Quest7015:OnDestroy()
    print("OnDestroy")
end

function Quest7015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7015:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701504Trigger", 7015)
    this:ActorDestroy("Q701508Trigger", 7015)
    this:ActorDestroy("Q701514Trigger", 7015)
    this:ActorDestroy("Q701515Trigger", 7015)
    this:ActorDestroy("Q701510Trigger_1", 7015)
    this:ActorDestroy("Q701517Trigger", 7015)
    this:ActorDestroy("Q701517Trigger", 7015)
end

function Quest7015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest7015:ActorDestroy(arg1, arg2)
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

function Quest7015:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7015:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7015:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7015:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7015:OnSubStart701518(arg1)
    print("OnSubStart701518")
    this:QuestNarratorTask(datas.NarratorWithId_701501, nil)
    actorUtils.FinishQuestWithParam({false}, {701518})
end

function Quest7015:OnSubFinish701518(arg1)
    print("OnSubFinish701518")
end

function Quest7015:OnSubStart701501(arg1)
    print("OnSubStart701501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701501, 20, true)
end

function Quest7015:OnSubFinish701501(arg1)
    print("OnSubFinish701501")
    this:NpcDestroyImmediately(3, npcs.Npc17009.alias)
    this:QuestNarratorTask(datas.NarratorWithId_701502, nil)
end

function Quest7015:OnSubStart701502(arg1)
    print("OnSubStart701502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701502, 30, true)
    this:NotifyTo(npcs.Npc7422.alias, 1, true)
    this:NotifyTo(npcs.Npc7431.alias, 1, true)
    this:NotifyTo(npcs.Npc3520.alias, 1, true)
    this:NotifyTo(npcs.Npc3430.alias, 1, true)
    this:NotifyTo(npcs.Npc3525.alias, 1, true)
    this:NotifyTo(npcs.Npc3529.alias, 1, true)
    this:NotifyTo(npcs.Npc3423.alias, 1, true)
end

function Quest7015:OnSubFinish701502(arg1)
    print("OnSubFinish701502")
    this:NpcDestroyImmediately(1158, npcs.Npc17009.alias)
    this:QuestNarratorTask(datas.NarratorWithId_701503, nil)
end

function Quest7015:OnSubStart701505(arg1)
    print("OnSubStart701505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701505, 0, 5, 0, npcs.Npc17009.id)
    this:CreateQuestNpc(arg1, npcs.Npc7420_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7420_1.alias, 7015):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7420_1.alias, 7015):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc7422.alias, 1, true)
    this:NotifyTo(npcs.Npc7431.alias, 1, true)
    this:NotifyTo(npcs.Npc3520.alias, 1, true)
    this:NotifyTo(npcs.Npc3430.alias, 1, true)
    this:NotifyTo(npcs.Npc3525.alias, 1, true)
    this:NotifyTo(npcs.Npc3529.alias, 1, true)
    this:NotifyTo(npcs.Npc3423.alias, 1, true)
end

function Quest7015:OnSubFinish701505(arg1)
    print("OnSubFinish701505")
    this:NpcDestroyImmediately(1158, npcs.Npc17009.alias)
    this:NpcDestroyImmediately(1158, npcs.Npc7420_1.alias)
    this:LightNotifyTo(npcs.Npc7422.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7431.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3520.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3430.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3525.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3529.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3423.alias, 0, true)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2165, dungeonId = 1342, questId = 701505, questPointCfgId = 1}, datas.__EmbedClientConfig_13, nil, nil)
end

function Quest7015:OnSubStart701519(arg1)
    print("OnSubStart701519")
end

function Quest7015:OnSubFinish701519(arg1)
    print("OnSubFinish701519")
end

function Quest7015:OnSubStart701506(arg1)
    print("OnSubStart701506")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701506, 10, true)
    this:DeployStoryByQuest(110701502)
end

function Quest7015:OnSubFinish701506(arg1)
    print("OnSubFinish701506")
    this:NpcDestroyImmediately(20375, npcs.Npc17009.alias)
end

function Quest7015:OnSubFailed701506(arg1)
    print("OnSubFailed701506")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701507(arg1)
    print("OnSubStart701507")
    this:CreateQuestNpc(arg1, npcs.Npc10200.id, 0, false, 0)
    this:DeployStoryByQuest(110701502)
end

function Quest7015:OnSubFinish701507(arg1)
    print("OnSubFinish701507")
    this:NpcDestroyImmediately(20375, npcs.Npc10200.alias)
    this:CancelStoryByQuest(110701502)
end

function Quest7015:OnSubFailed701507(arg1)
    print("OnSubFailed701507")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701515(arg1)
    print("OnSubStart701515")
    actorMgr:CreateActorWithPos("Q701515Trigger", "Actor/Gadget/Q701515Trigger", 70900002, 0, points._Q701515TriggerPoint_.pos, points._Q701515TriggerPoint_.rot, true, false, 20375, nil, 0, 7015)
end

function Quest7015:OnSubFinish701515(arg1)
    print("OnSubFinish701515")
    this:ActorDestroy("Q701515Trigger", 7015)
end

function Quest7015:OnSubFailed701515(arg1)
    print("OnSubFailed701515")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701508(arg1)
    print("OnSubStart701508")
    this:NotifyTo(npcs.Npc3562.alias, 1, true)
    this:NotifyTo(npcs.Npc3563.alias, 1, true)
    this:NotifyTo(npcs.Npc3564.alias, 1, true)
    this:NotifyTo(npcs.Npc3560.alias, 1, true)
    this:NotifyTo(npcs.Npc3561.alias, 1, true)
    this:DeployStoryByQuest(110701500)
    actorMgr:CreateActorWithPos("Q701508Trigger", "Actor/Gadget/Q701508Trigger", 70900002, 0, points._Q701508TriggerPoint_.pos, points._Q701508TriggerPoint_.rot, true, false, 1162, nil, 0, 7015)
end

function Quest7015:OnSubFinish701508(arg1)
    print("OnSubFinish701508")
end

function Quest7015:OnSubFailed701508(arg1)
    print("OnSubFailed701508")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701503(arg1)
    print("OnSubStart701503")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 56.8, 701503)
    this:NotifyTo(npcs.Npc3560.alias, 1, true)
    this:NotifyTo(npcs.Npc3561.alias, 1, true)
    this:NotifyTo(npcs.Npc3562.alias, 1, true)
    this:NotifyTo(npcs.Npc3563.alias, 1, true)
    this:NotifyTo(npcs.Npc3564.alias, 1, true)
end

function Quest7015:OnSubFinish701503(arg1)
    print("OnSubFinish701503")
    this:NpcDestroyImmediately(1162, npcs.Npc17009.alias)
    this:LightNotifyTo(npcs.Npc3560.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3561.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3562.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3563.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3564.alias, 0, true)
    this:CancelStoryByQuest(110701500)
end

function Quest7015:OnSubFailed701503(arg1)
    print("OnSubFailed701503")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701504(arg1)
    print("OnSubStart701504")
    this:NotifyTo(npcs.Npc3566.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701504Trigger", "Actor/Gadget/Q701504Trigger", 70900002, 0, points._Q701504TriggerPoint_.pos, points._Q701504TriggerPoint_.rot, true, false, 1162, nil, 0, 7015)
end

function Quest7015:OnSubFinish701504(arg1)
    print("OnSubFinish701504")
end

function Quest7015:OnSubStart701509(arg1)
    print("OnSubStart701509")
    this:DeployStoryByQuest(110701501)
    this:NpcCreateWithNpcTriggerAndBlackscreen(701509, 0, 50, 0, npcs.Npc17009.id)
    this:NotifyTo(npcs.Npc3565.alias, 1, true)
    this:NotifyTo(npcs.Npc3566.alias, 1, true)
end

function Quest7015:OnSubFinish701509(arg1)
    print("OnSubFinish701509")
    this:NpcDestroyImmediately(1162, npcs.Npc17009.alias)
end

function Quest7015:OnSubFailed701509(arg1)
    print("OnSubFailed701509")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701510(arg1)
    print("OnSubStart701510")
    this:NotifyTo(npcs.Npc3565.alias, 1, true)
    this:NotifyTo(npcs.Npc3566.alias, 1, true)
    this:DeployStoryByQuest(110701501)
end

function Quest7015:OnSubFinish701510(arg1)
    print("OnSubFinish701510")
    this:LightNotifyTo(npcs.Npc3566.alias, 0, true)
end

function Quest7015:OnSubFailed701510(arg1)
    print("OnSubFailed701510")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701511(arg1)
    print("OnSubStart701511")
    this:NpcCreateWithNpcTrigger(npcs.Npc1339.id, 0, 60, 701511)
    this:NotifyTo(npcs.Npc3565.alias, 1, true)
end

function Quest7015:OnSubFinish701511(arg1)
    print("OnSubFinish701511")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:LightNotifyTo(npcs.Npc3565.alias, 0, true)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:CancelStoryByQuest(110701501)
end

function Quest7015:OnSubFailed701511(arg1)
    print("OnSubFailed701511")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701522(arg1)
    print("OnSubStart701522")
end

function Quest7015:OnSubFinish701522(arg1)
    print("OnSubFinish701522")
end

function Quest7015:OnSubStart701521(arg1)
    print("OnSubStart701521")
end

function Quest7015:OnSubFinish701521(arg1)
    print("OnSubFinish701521")
end

function Quest7015:OnSubStart701520(arg1)
    print("OnSubStart701520")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701520, 50, true)
end

function Quest7015:OnSubFinish701520(arg1)
    print("OnSubFinish701520")
    this:NpcDestroyImmediately(20367, npcs.Npc17009.alias)
end

function Quest7015:OnSubFailed701520(arg1)
    print("OnSubFailed701520")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701512(arg1)
    print("OnSubStart701512")
end

function Quest7015:OnSubFinish701512(arg1)
    print("OnSubFinish701512")
end

function Quest7015:OnSubStart701513(arg1)
    print("OnSubStart701513")
    this:CreateQuestNpc(arg1, npcs.Npc1339.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1339.alias, 7015):DoFreeStyle(1406, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1339.alias, 7015):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1330.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1330.alias, 7015):DoFreeStyle(1342, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1330.alias, 7015):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1338.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1338.alias, 7015):DoFreeStyle(1407, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7015):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1341.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1341.alias, 7015):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17519.id, 0, false, 0)
end

function Quest7015:OnSubFinish701513(arg1)
    print("OnSubFinish701513")
end

function Quest7015:OnSubFailed701513(arg1)
    print("OnSubFailed701513")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701516(arg1)
    print("OnSubStart701516")
    actorMgr:CreateActorWithPos("Q701517Trigger", "Actor/Gadget/Q701517Trigger", 70900002, 0, points._Q701517TriggerPoint_.pos, points._Q701517TriggerPoint_.rot, true, false, 20367, nil, 0, 7015)
end

function Quest7015:OnSubFinish701516(arg1)
    print("OnSubFinish701516")
end

function Quest7015:OnSubStart701517(arg1)
    print("OnSubStart701517")
    actorMgr:CreateActorWithPos("Q701517Trigger", "Actor/Gadget/Q701517Trigger", 70900002, 0, points._Q701517TriggerPoint_.pos, points._Q701517TriggerPoint_.rot, true, false, 20367, nil, 0, 7015)
end

function Quest7015:OnSubFinish701517(arg1)
    print("OnSubFinish701517")
    this:NpcDestroyImmediately(20367, npcs.Npc17519.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1330.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1338.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1339.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1341.alias)
end

function Quest7015:OnSubFailed701517(arg1)
    print("OnSubFailed701517")
    this:RecycleAllRes()
end

function Quest7015:OnSubStart701514(arg1)
    print("OnSubStart701514")
    actorMgr:CreateActorWithPos("Q701514Trigger", "Actor/Gadget/Q701514Trigger", 70900002, 0, points._Q701514TriggerPoint_.pos, points._Q701514TriggerPoint_.rot, true, false, 20367, nil, 0, 7015)
end

function Quest7015:OnSubFinish701514(arg1)
    print("OnSubFinish701514")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_701507, nil)
    end, true)
end

return Quest7015
