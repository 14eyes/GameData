require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6011 = class("Quest6011", QuestActorProxy)
Quest6011.defaultAlias = "Quest6011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601101"] = self.OnSubStart601101,
        ["601114"] = self.OnSubStart601114,
        ["601102"] = self.OnSubStart601102,
        ["601110"] = self.OnSubStart601110,
        ["601103"] = self.OnSubStart601103,
        ["601109"] = self.OnSubStart601109,
        ["601111"] = self.OnSubStart601111,
        ["601112"] = self.OnSubStart601112,
        ["601113"] = self.OnSubStart601113,
        ["601104"] = self.OnSubStart601104,
        ["601105"] = self.OnSubStart601105,
        ["601106"] = self.OnSubStart601106,
        ["601107"] = self.OnSubStart601107,
        ["601108"] = self.OnSubStart601108
    }
end

function Quest6011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601101"] = self.OnSubFinish601101,
        ["601114"] = self.OnSubFinish601114,
        ["601102"] = self.OnSubFinish601102,
        ["601110"] = self.OnSubFinish601110,
        ["601103"] = self.OnSubFinish601103,
        ["601109"] = self.OnSubFinish601109,
        ["601111"] = self.OnSubFinish601111,
        ["601112"] = self.OnSubFinish601112,
        ["601113"] = self.OnSubFinish601113,
        ["601104"] = self.OnSubFinish601104,
        ["601105"] = self.OnSubFinish601105,
        ["601106"] = self.OnSubFinish601106,
        ["601107"] = self.OnSubFinish601107,
        ["601108"] = self.OnSubFinish601108
    }
end

function Quest6011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6011:Start()
    print("Start")
end

function Quest6011:OnDestroy()
    print("OnDestroy")
end

function Quest6011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601108Trigger_Enter")
    this:ActorDestroy("Q601105Trigger_Enter")
    this:ActorDestroy("Q601113Trigger_Enter_01")
    this:ActorDestroy("Q601114Trigger_Enter")
    this:ActorDestroy("Q601108Trigger_Trans")
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1315.id, 6011)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1316.id, 6011)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1314.id, 6011)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1055.id, 6011)
end

function Quest6011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6011:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest6011:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6011:OnSubStart601101(arg1)
    print("OnSubStart601101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601101, 0, 20, 0.5, npcs.Npc1313.id)
end

function Quest6011:OnSubFinish601101(arg1)
    print("OnSubFinish601101")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 14, nil, nil, nil)
    end)
end

function Quest6011:OnSubStart601114(arg1)
    print("OnSubStart601114")
    actorMgr:CreateActorWithPos("Q601114Trigger_Enter", "Actor/Gadget/Q601114Trigger_Enter", 70900002, 0, points._Q601114Trigger_EnterPoint_.pos, points._Q601114Trigger_EnterPoint_.rot, true, false, 3)
end

function Quest6011:OnSubFinish601114(arg1)
    print("OnSubFinish601114")
    this:ActorDestroy("Q601114Trigger_Enter")
end

function Quest6011:OnSubStart601102(arg1)
    print("OnSubStart601102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1314.id, 0, 15, 601102)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6011):DoFreeStyle(1130, true, nil, true, true, false, false)
end

function Quest6011:OnSubFinish601102(arg1)
    print("OnSubFinish601102")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
end

function Quest6011:OnSubStart601110(arg1)
    print("OnSubStart601110")
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 10, 601110)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6011):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc1314.id, 6011, true, "UI_AvatarIcon_Side_Flins")
end

function Quest6011:OnSubFinish601110(arg1)
    print("OnSubFinish601110")
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1314.id, 6011)
end

function Quest6011:OnSubStart601103(arg1)
    print("OnSubStart601103")
    this:NpcCreateWithNpcTrigger(npcs.Npc1312.id, 0, 15, 601103)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6011):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6011):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc1315.id, 6011, true, "UI_AvatarIcon_Side_Lauma")
end

function Quest6011:OnSubFinish601103(arg1)
    print("OnSubFinish601103")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1315.id, 6011)
end

function Quest6011:OnSubStart601109(arg1)
    print("OnSubStart601109")
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6011):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 10, 601109)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6011):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc1316.id, 6011, true, "UI_AvatarIcon_Side_Nefer")
end

function Quest6011:OnSubFinish601109(arg1)
    print("OnSubFinish601109")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1316.id, 6011)
end

function Quest6011:OnSubStart601111(arg1)
    print("OnSubStart601111")
    this:NpcCreateWithNpcTrigger(npcs.Npc1055.id, 0, 10, 601111)
    this:GetQuestNpcActor(npcs.Npc1055.alias, 6011):DoFreeStyle(1220, true, nil, true, true, false, false)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc1055.id, 6011, true, "UI_AvatarIcon_Side_Dori")
end

function Quest6011:OnSubFinish601111(arg1)
    print("OnSubFinish601111")
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc1055.id, 6011)
end

function Quest6011:OnSubStart601112(arg1)
    print("OnSubStart601112")
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DeployStoryByQuest(110601112)
    this:CreateLocalGadget(73080010, "1", {x = 1635.303, y = 205.614, z = 9954.269}, {x = 276.344, y = 0, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest6011:OnSubFinish601112(arg1)
    print("OnSubFinish601112")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:CancelStoryByQuest(110601112)
    this:RemoveLocalGadget(73080010, "1")
end

function Quest6011:OnSubStart601113(arg1)
    print("OnSubStart601113")
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    actorMgr:CreateActorWithPos("Q601113Trigger_Enter_01", "Actor/Gadget/Q601113Trigger_Enter_01", 70900002, 0, points._Q601113Trigger_Enter_01Point_.pos, points._Q601113Trigger_Enter_01Point_.rot, true, false, 3)
end

function Quest6011:OnSubFinish601113(arg1)
    print("OnSubFinish601113")
    this:ActorDestroy("Q601113Trigger_Enter_01")
    this:EnterSceneLookCamera({x = 1512.101, y = 251, z = 9304.294}, 1, 3, false, false)
    this:QuestNarratorTask(datas.NarratorWithId_601102, nil)
end

function Quest6011:OnSubStart601104(arg1)
    print("OnSubStart601104")
    this:CreateQuestNpc(arg1, npcs.Npc15380.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:DeployStoryByQuest(110601104)
end

function Quest6011:OnSubFinish601104(arg1)
    print("OnSubFinish601104")
    this:NpcDestroyWithDither(3, npcs.Npc15380.alias)
    this:CancelStoryByQuest(110601104)
end

function Quest6011:OnSubStart601105(arg1)
    print("OnSubStart601105")
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    actorMgr:CreateActorWithPos("Q601105Trigger_Enter", "Actor/Gadget/Q601105Trigger_Enter", 70900002, 0, points._Q601105Trigger_EnterPoint_.pos, points._Q601105Trigger_EnterPoint_.rot, true, false, 3)
end

function Quest6011:OnSubFinish601105(arg1)
    print("OnSubFinish601105")
    this:ActorDestroy("Q601105Trigger_Enter")
end

function Quest6011:OnSubStart601106(arg1)
    print("OnSubStart601106")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 10, 601106)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:DeployStoryByQuest(110601101)
end

function Quest6011:OnSubFinish601106(arg1)
    print("OnSubFinish601106")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:LightNotifyTo(npcs.Npc7007.alias, 0, true)
    this:TransmitPlayerByData(arg1, 7, datas.TransmitData601106, nil, nil, nil)
    this:CancelStoryByQuest(110601101)
end

function Quest6011:OnSubStart601107(arg1)
    print("OnSubStart601107")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc15387.id, 0, 601107, 10, true)
end

function Quest6011:OnSubFinish601107(arg1)
    print("OnSubFinish601107")
    this:SafeDestroyQuestNpc(npcs.Npc15387.alias, 3)
end

function Quest6011:OnSubStart601108(arg1)
    print("OnSubStart601108")
    actorMgr:CreateActorWithPos("Q601108Trigger_Enter", "Actor/Gadget/Q601108Trigger_Enter", 70900002, 0, points._Q601108Trigger_EnterPoint_.pos, points._Q601108Trigger_EnterPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q601108Trigger_Trans", "Actor/Gadget/Q601108Trigger_Trans", 70900002, 0, points._Q601108Trigger_TransPoint_.pos, points._Q601108Trigger_TransPoint_.rot, true, false, 3)
end

function Quest6011:OnSubFinish601108(arg1)
    print("OnSubFinish601108")
    this:ActorDestroy("Q601108Trigger_Enter")
    this:ActorDestroy("Q601108Trigger_Trans")
end

return Quest6011
