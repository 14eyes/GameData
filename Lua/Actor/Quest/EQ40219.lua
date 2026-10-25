require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40219 = class("Quest40219", QuestActorProxy)
Quest40219.defaultAlias = "Quest40219"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40219:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4021914"] = self.OnSubStart4021914,
        ["4021901"] = self.OnSubStart4021901,
        ["4021902"] = self.OnSubStart4021902,
        ["4021903"] = self.OnSubStart4021903,
        ["4021904"] = self.OnSubStart4021904,
        ["4021905"] = self.OnSubStart4021905,
        ["4021909"] = self.OnSubStart4021909,
        ["4021906"] = self.OnSubStart4021906,
        ["4021911"] = self.OnSubStart4021911,
        ["4021907"] = self.OnSubStart4021907,
        ["4021912"] = self.OnSubStart4021912,
        ["4021908"] = self.OnSubStart4021908,
        ["4021913"] = self.OnSubStart4021913,
        ["4021910"] = self.OnSubStart4021910,
        ["4021915"] = self.OnSubStart4021915
    }
end

function Quest40219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4021914"] = self.OnSubFinish4021914,
        ["4021901"] = self.OnSubFinish4021901,
        ["4021902"] = self.OnSubFinish4021902,
        ["4021903"] = self.OnSubFinish4021903,
        ["4021904"] = self.OnSubFinish4021904,
        ["4021905"] = self.OnSubFinish4021905,
        ["4021909"] = self.OnSubFinish4021909,
        ["4021906"] = self.OnSubFinish4021906,
        ["4021911"] = self.OnSubFinish4021911,
        ["4021907"] = self.OnSubFinish4021907,
        ["4021912"] = self.OnSubFinish4021912,
        ["4021908"] = self.OnSubFinish4021908,
        ["4021913"] = self.OnSubFinish4021913,
        ["4021910"] = self.OnSubFinish4021910,
        ["4021915"] = self.OnSubFinish4021915
    }
end

function Quest40219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40219:Start()
    print("Start")
end

function Quest40219:OnDestroy()
    print("OnDestroy")
end

function Quest40219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40219:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:LightNotifyTo(npcs.Npc1565.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1467.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1431.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1455.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1463.alias, 0, true)
    this:ActorDestroy("Q4021913_TriggerIn")
    this:ActorDestroy("Q4021901_TriggerIn")
    this:ActorDestroy("Q4021907_TriggerIn")
    this:DestroyNpcTrigger("Q4021901N16014Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:DestroyNpcTrigger("Q4021906N1007Trigger")
    this:DestroyNpcTrigger("Q4021908N16014Trigger")
    this:DestroyNpcTrigger("Q4021911N16014Trigger")
    this:DestroyNpcTrigger("Q4021912N16014Trigger")
    this:CancelStoryByQuest(134021905)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 1004)
end

function Quest40219:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q4021913_TriggerIn")
    this:ActorDestroy("Q4021901_TriggerIn")
    this:ActorDestroy("Q4021907_TriggerIn")
end

function Quest40219:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4021913 then
        this:TransmitPlayerWithQuestIdByData(4021913, 1, nil, nil, nil, datas.Q4021913_TransmitData)
    end
end

function Quest40219:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40219:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40219:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40219:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40219:OnSubStart4021914(arg1)
    print("OnSubStart4021914")
end

function Quest40219:OnSubFinish4021914(arg1)
    print("OnSubFinish4021914")
end

function Quest40219:OnSubStart4021901(arg1)
    print("OnSubStart4021901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021901, 0, 15, 1, npcs.Npc16014.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
end

function Quest40219:OnSubFinish4021901(arg1)
    print("OnSubFinish4021901")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    actorMgr:CreateActorWithPos("Q4021901_TriggerIn", "Actor/Gadget/Q4021901_TriggerIn", 70900002, 0, points._Q4021901_TriggerInPoint_.pos, points._Q4021901_TriggerInPoint_.rot, true, false, 3)
end

function Quest40219:OnSubStart4021902(arg1)
    print("OnSubStart4021902")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15853.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
end

function Quest40219:OnSubFinish4021902(arg1)
    print("OnSubFinish4021902")
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
end

function Quest40219:OnSubStart4021903(arg1)
    print("OnSubStart4021903")
    this:CreateQuestNpc(arg1, npcs.NPC20088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
end

function Quest40219:OnSubFinish4021903(arg1)
    print("OnSubFinish4021903")
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40219:OnSubStart4021904(arg1)
    print("OnSubStart4021904")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
end

function Quest40219:OnSubFinish4021904(arg1)
    print("OnSubFinish4021904")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1004)
end

function Quest40219:OnSubStart4021905(arg1)
    print("OnSubStart4021905")
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134021905)
    end)
end

function Quest40219:OnSubFinish4021905(arg1)
    print("OnSubFinish4021905")
end

function Quest40219:OnSubStart4021909(arg1)
    print("OnSubStart4021909")
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134021905)
end

function Quest40219:OnSubFinish4021909(arg1)
    print("OnSubFinish4021909")
end

function Quest40219:OnSubStart4021906(arg1)
    print("OnSubStart4021906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021906, 0, 20, 1, npcs.Lisa.id)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134021905)
end

function Quest40219:OnSubFinish4021906(arg1)
    print("OnSubFinish4021906")
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 1004)
    this:LightNotifyTo(npcs.Npc1565.alias, 0, true)
    this:TransmitPlayerByData(arg1, 1, datas.Q4021906_TransmitData, nil, nil, nil)
    this:CancelStoryByQuest(134021905)
end

function Quest40219:OnSubStart4021911(arg1)
    print("OnSubStart4021911")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16014.id, 0, 4021911, 10, true)
end

function Quest40219:OnSubFinish4021911(arg1)
    print("OnSubFinish4021911")
end

function Quest40219:OnSubStart4021907(arg1)
    print("OnSubStart4021907")
    this:CreateQuestNpc(arg1, npcs.Npc16014.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc1467.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1455.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4021907_TriggerIn", "Actor/Gadget/Q4021907_TriggerIn", 70900002, 0, points._Q4021907_TriggerInPoint_.pos, points._Q4021907_TriggerInPoint_.rot, true, false, 3)
end

function Quest40219:OnSubFinish4021907(arg1)
    print("OnSubFinish4021907")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
end

function Quest40219:OnSubStart4021912(arg1)
    print("OnSubStart4021912")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021912, 0, 5, 1, npcs.Npc16014.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1467.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1455.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest40219:OnSubFinish4021912(arg1)
    print("OnSubFinish4021912")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:LightNotifyTo(npcs.Npc1467.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1431.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1455.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1463.alias, 0, true)
end

function Quest40219:OnSubStart4021908(arg1)
    print("OnSubStart4021908")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021908, 0, 25, 1, npcs.Npc16014.id)
end

function Quest40219:OnSubFinish4021908(arg1)
    print("OnSubFinish4021908")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
end

function Quest40219:OnSubStart4021913(arg1)
    print("OnSubStart4021913")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.NPC20088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15853.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15858.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15858.alias, 40219):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15858.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15857.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15857.alias, 40219):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15857.alias, 40219):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4021913_TriggerIn", "Actor/Gadget/Q4021913_TriggerIn", 70900002, 0, points._Q4021913_TriggerInPoint_.pos, points._Q4021913_TriggerInPoint_.rot, true, false, 3)
end

function Quest40219:OnSubFinish4021913(arg1)
    print("OnSubFinish4021913")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:ActorDestroy("Q4021913_TriggerIn")
end

function Quest40219:OnSubStart4021910(arg1)
    print("OnSubStart4021910")
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15858.alias, 40219):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15858.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15857.alias, 40219):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15857.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40219):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40219):DisableInteeHeadCtrl(true)
end

function Quest40219:OnSubFinish4021910(arg1)
    print("OnSubFinish4021910")
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15857.alias, 3)
end

function Quest40219:OnSubStart4021915(arg1)
    print("OnSubStart4021915")
end

function Quest40219:OnSubFinish4021915(arg1)
    print("OnSubFinish4021915")
end

return Quest40219
