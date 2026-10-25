require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6007 = class("Quest6007", QuestActorProxy)
Quest6007.defaultAlias = "Quest6007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest6007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest6007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600717"] = self.OnSubStart600717,
        ["600718"] = self.OnSubStart600718,
        ["600701"] = self.OnSubStart600701,
        ["600719"] = self.OnSubStart600719,
        ["600702"] = self.OnSubStart600702,
        ["600703"] = self.OnSubStart600703,
        ["600704"] = self.OnSubStart600704,
        ["600720"] = self.OnSubStart600720,
        ["600705"] = self.OnSubStart600705,
        ["600706"] = self.OnSubStart600706,
        ["600714"] = self.OnSubStart600714,
        ["600708"] = self.OnSubStart600708,
        ["600726"] = self.OnSubStart600726,
        ["600709"] = self.OnSubStart600709,
        ["600707"] = self.OnSubStart600707,
        ["600715"] = self.OnSubStart600715,
        ["600716"] = self.OnSubStart600716,
        ["600721"] = self.OnSubStart600721,
        ["600722"] = self.OnSubStart600722,
        ["600723"] = self.OnSubStart600723,
        ["600728"] = self.OnSubStart600728,
        ["600724"] = self.OnSubStart600724,
        ["600725"] = self.OnSubStart600725,
        ["600710"] = self.OnSubStart600710,
        ["600712"] = self.OnSubStart600712,
        ["600711"] = self.OnSubStart600711,
        ["600727"] = self.OnSubStart600727,
        ["600713"] = self.OnSubStart600713
    }
end

function Quest6007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600717"] = self.OnSubFinish600717,
        ["600718"] = self.OnSubFinish600718,
        ["600701"] = self.OnSubFinish600701,
        ["600719"] = self.OnSubFinish600719,
        ["600702"] = self.OnSubFinish600702,
        ["600703"] = self.OnSubFinish600703,
        ["600704"] = self.OnSubFinish600704,
        ["600720"] = self.OnSubFinish600720,
        ["600705"] = self.OnSubFinish600705,
        ["600706"] = self.OnSubFinish600706,
        ["600714"] = self.OnSubFinish600714,
        ["600708"] = self.OnSubFinish600708,
        ["600726"] = self.OnSubFinish600726,
        ["600709"] = self.OnSubFinish600709,
        ["600707"] = self.OnSubFinish600707,
        ["600715"] = self.OnSubFinish600715,
        ["600716"] = self.OnSubFinish600716,
        ["600721"] = self.OnSubFinish600721,
        ["600722"] = self.OnSubFinish600722,
        ["600723"] = self.OnSubFinish600723,
        ["600728"] = self.OnSubFinish600728,
        ["600724"] = self.OnSubFinish600724,
        ["600725"] = self.OnSubFinish600725,
        ["600710"] = self.OnSubFinish600710,
        ["600712"] = self.OnSubFinish600712,
        ["600711"] = self.OnSubFinish600711,
        ["600727"] = self.OnSubFinish600727,
        ["600713"] = self.OnSubFinish600713
    }
end

function Quest6007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["600715"] = self.OnSubFailed600715,
        ["600716"] = self.OnSubFailed600716,
        ["600722"] = self.OnSubFailed600722,
        ["600723"] = self.OnSubFailed600723,
        ["600728"] = self.OnSubFailed600728,
        ["600724"] = self.OnSubFailed600724
    }
end

function Quest6007:Start()
    print("Start")
end

function Quest6007:OnDestroy()
    print("OnDestroy")
end

function Quest6007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6007:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600715Trigger_01")
    this:ActorDestroy("Q600722Trigger_01")
    this:ActorDestroy("Q600724Trigger")
end

function Quest6007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 600727 then
        actorUtils.FinishQuestID(false, 600727)
    end
end

function Quest6007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6007:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6007:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6007:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6007:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6007:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6007:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6007:SitOnChair()
    this:GetQuestNpcActor(npcs.Npc7050.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15390.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15487.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15488.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15491.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15492.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15528.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15529.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15530.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15531.alias, 6007):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15532.alias, 6007):SitOnChair(0, true)
end

function Quest6007:OnSubStart600717(arg1)
    print("OnSubStart600717")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1315.alias, 6007):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest6007:OnSubFinish600717(arg1)
    print("OnSubFinish600717")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
end

function Quest6007:OnSubStart600718(arg1)
    print("OnSubStart600718")
    this:NpcCreateWithNpcTrigger(npcs.Npc15481.id, 0, 20, 600718)
    this:GetQuestNpcActor(npcs.Npc15481.alias, 6007):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15482.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15482.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15483.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15483.alias, 6007):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest6007:OnSubFinish600718(arg1)
    print("OnSubFinish600718")
    this:NpcDestroyImmediately(3, npcs.Npc15481.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15482.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15483.alias)
end

function Quest6007:OnSubStart600701(arg1)
    print("OnSubStart600701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 5, 600701)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15485.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15485.alias, 6007):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest6007:OnSubFinish600701(arg1)
    print("OnSubFinish600701")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15485.alias)
end

function Quest6007:OnSubStart600719(arg1)
    print("OnSubStart600719")
    this:NpcCreateWithNoBlack(npcs.Npc15349.id, 0, 10, 600719, true, 600719)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
end

function Quest6007:OnSubFinish600719(arg1)
    print("OnSubFinish600719")
    this:NpcDestroyImmediately(3, npcs.Npc15349.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2356, nil)
    end)
end

function Quest6007:OnSubStart600702(arg1)
    print("OnSubStart600702")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
end

function Quest6007:OnSubFinish600702(arg1)
    print("OnSubFinish600702")
    this:LightNotifyTo(npcs.Npc7046.alias, 0, true)
end

function Quest6007:OnSubStart600703(arg1)
    print("OnSubStart600703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600703, 0, 20, 0.5, npcs.Npc15485.id)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6007:OnSubFinish600703(arg1)
    print("OnSubFinish600703")
    this:NpcDestroyImmediately(3, npcs.Npc15485.alias)
end

function Quest6007:OnSubStart600704(arg1)
    print("OnSubStart600704")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6007:OnSubFinish600704(arg1)
    print("OnSubFinish600704")
end

function Quest6007:OnSubStart600720(arg1)
    print("OnSubStart600720")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600720, 0, 20, 0.5, npcs.Npc15485.id)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6007:OnSubFinish600720(arg1)
    print("OnSubFinish600720")
    this:NpcDestroyImmediately(3, npcs.Npc15485.alias)
end

function Quest6007:OnSubStart600705(arg1)
    print("OnSubStart600705")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6007:OnSubFinish600705(arg1)
    print("OnSubFinish600705")
end

function Quest6007:OnSubStart600706(arg1)
    print("OnSubStart600706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600706, 0, 15, 0.5, npcs.Npc1313.id)
    this:CreateLocalGadget(73068030, "1", {x = 1644.752, y = 306.647, z = 9523.041}, {x = 0, y = 12.017, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73068030, "2", {x = 1634.936, y = 306.647, z = 9519.436}, {x = 0, y = 127.577, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73068031, "3", {x = 1644.577, y = 306.633, z = 9522.937}, {x = 0, y = 11.657, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73068031, "4", {x = 1634.997, y = 306.633, z = 9519.502}, {x = 0, y = 127.163, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest6007:OnSubFinish600706(arg1)
    print("OnSubFinish600706")
    this:NpcDestroyImmediately(3, npcs.Npc1313.alias)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(73068030, "1")
        this:RemoveLocalGadget(73068030, "2")
        this:RemoveLocalGadget(73068031, "3")
        this:RemoveLocalGadget(73068031, "4")
    end)
end

function Quest6007:OnSubStart600714(arg1)
    print("OnSubStart600714")
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc15524.id, 0, 15, 600714)
end

function Quest6007:OnSubFinish600714(arg1)
    print("OnSubFinish600714")
end

function Quest6007:OnSubStart600708(arg1)
    print("OnSubStart600708")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1316.id, 0, 600708, 30, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest6007:OnSubFinish600708(arg1)
    print("OnSubFinish600708")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
end

function Quest6007:OnSubStart600726(arg1)
    print("OnSubStart600726")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15487.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15488.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15489.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15490.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15491.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15492.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7010.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15389.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15390.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc15524.id, 0, 15, 600726)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15528.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15529.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15530.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15531.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15532.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600726(arg1)
    print("OnSubFinish600726")
    this:TransmitPlayerByData(arg1, 11, datas.TransmitData600726, nil, nil, nil)
end

function Quest6007:OnSubStart600709(arg1)
    print("OnSubStart600709")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1316.id, 0, 600709, 50, true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600709(arg1)
    print("OnSubFinish600709")
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
end

function Quest6007:OnSubStart600707(arg1)
    print("OnSubStart600707")
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600707(arg1)
    print("OnSubFinish600707")
end

function Quest6007:OnSubStart600715(arg1)
    print("OnSubStart600715")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15487.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15488.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600715)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600715(arg1)
    print("OnSubFinish600715")
end

function Quest6007:OnSubFailed600715(arg1)
    print("OnSubFailed600715")
    this:CancelStoryByQuest(110600715)
end

function Quest6007:OnSubStart600716(arg1)
    print("OnSubStart600716")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15487.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15488.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600716(arg1)
    print("OnSubFinish600716")
    this:CancelStoryByQuest(110600715)
end

function Quest6007:OnSubFailed600716(arg1)
    print("OnSubFailed600716")
    this:CancelStoryByQuest(110600715)
end

function Quest6007:OnSubStart600721(arg1)
    print("OnSubStart600721")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15487.alias, 6007):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15488.alias, 6007):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600721(arg1)
    print("OnSubFinish600721")
end

function Quest6007:OnSubStart600722(arg1)
    print("OnSubStart600722")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600722)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600722(arg1)
    print("OnSubFinish600722")
end

function Quest6007:OnSubFailed600722(arg1)
    print("OnSubFailed600722")
    this:CancelStoryByQuest(110600722)
end

function Quest6007:OnSubStart600723(arg1)
    print("OnSubStart600723")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600723(arg1)
    print("OnSubFinish600723")
end

function Quest6007:OnSubFailed600723(arg1)
    print("OnSubFailed600723")
    this:CancelStoryByQuest(110600722)
end

function Quest6007:OnSubStart600728(arg1)
    print("OnSubStart600728")
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc15489.alias, "", true)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600728(arg1)
    print("OnSubFinish600728")
end

function Quest6007:OnSubFailed600728(arg1)
    print("OnSubFailed600728")
    this:CancelStoryByQuest(110600722)
end

function Quest6007:OnSubStart600724(arg1)
    print("OnSubStart600724")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600724(arg1)
    print("OnSubFinish600724")
    this:QuestNarratorTask(datas.NarratorWithId_600723, nil)
    this:CancelStoryByQuest(110600722)
end

function Quest6007:OnSubFailed600724(arg1)
    print("OnSubFailed600724")
    this:CancelStoryByQuest(110600722)
end

function Quest6007:OnSubStart600725(arg1)
    print("OnSubStart600725")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15489.alias, 6007):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15490.alias, 6007):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600725(arg1)
    print("OnSubFinish600725")
end

function Quest6007:OnSubStart600710(arg1)
    print("OnSubStart600710")
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 4, 600710)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6007):DoFreeStyle(8013, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6007):SitOnChair(0, true)
end

function Quest6007:OnSubFinish600710(arg1)
    print("OnSubFinish600710")
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
end

function Quest6007:OnSubStart600712(arg1)
    print("OnSubStart600712")
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNoBlack(npcs.Npc1316.id, 0, 8, 600712, true, 600712)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600712(arg1)
    print("OnSubFinish600712")
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_600729, nil)
    end)
end

function Quest6007:OnSubStart600711(arg1)
    print("OnSubStart600711")
    this:CreateQuestNpc(arg1, npcs.Npc7010.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15389.alias, 6007):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15487.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15488.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 5, 600711)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6007):DoFreeStyle(8013, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6007):SitOnChair(0, true)
end

function Quest6007:OnSubFinish600711(arg1)
    print("OnSubFinish600711")
    this:NpcDestroyImmediately(1204, npcs.Npc15389.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
end

function Quest6007:OnSubStart600727(arg1)
    print("OnSubStart600727")
end

function Quest6007:OnSubFinish600727(arg1)
    print("OnSubFinish600727")
end

function Quest6007:OnSubStart600713(arg1)
    print("OnSubStart600713")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1317.id, 0, 600713, 20, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15524.alias, 6007):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DeployStoryByQuest(110600726)
    this:SitOnChair()
end

function Quest6007:OnSubFinish600713(arg1)
    print("OnSubFinish600713")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc7010.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc7050.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15390.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:NpcDestroyImmediately(3, npcs.Npc15524.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15528.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15529.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15530.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15531.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15532.alias)
    this:LightNotifyTo(npcs.Npc7063.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7060.alias, 0, true)
    this:NpcDestroyImmediately(1204, npcs.Npc15487.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15488.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15489.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15490.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15491.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc15492.alias)
    this:CancelStoryByQuest(110600726)
end

return Quest6007
