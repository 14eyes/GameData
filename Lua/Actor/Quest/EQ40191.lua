require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40191 = class("Quest40191", QuestActorProxy)
Quest40191.defaultAlias = "Quest40191"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40191:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019101"] = self.OnSubStart4019101,
        ["4019102"] = self.OnSubStart4019102,
        ["4019117"] = self.OnSubStart4019117,
        ["4019104"] = self.OnSubStart4019104,
        ["4019103"] = self.OnSubStart4019103,
        ["4019105"] = self.OnSubStart4019105,
        ["4019106"] = self.OnSubStart4019106,
        ["4019114"] = self.OnSubStart4019114,
        ["4019107"] = self.OnSubStart4019107,
        ["4019108"] = self.OnSubStart4019108,
        ["4019109"] = self.OnSubStart4019109,
        ["4019110"] = self.OnSubStart4019110,
        ["4019111"] = self.OnSubStart4019111,
        ["4019124"] = self.OnSubStart4019124,
        ["4019118"] = self.OnSubStart4019118,
        ["4019119"] = self.OnSubStart4019119,
        ["4019120"] = self.OnSubStart4019120,
        ["4019121"] = self.OnSubStart4019121,
        ["4019122"] = self.OnSubStart4019122,
        ["4019123"] = self.OnSubStart4019123,
        ["4019112"] = self.OnSubStart4019112,
        ["4019115"] = self.OnSubStart4019115,
        ["4019113"] = self.OnSubStart4019113,
        ["4019116"] = self.OnSubStart4019116
    }
end

function Quest40191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019101"] = self.OnSubFinish4019101,
        ["4019102"] = self.OnSubFinish4019102,
        ["4019117"] = self.OnSubFinish4019117,
        ["4019104"] = self.OnSubFinish4019104,
        ["4019103"] = self.OnSubFinish4019103,
        ["4019105"] = self.OnSubFinish4019105,
        ["4019106"] = self.OnSubFinish4019106,
        ["4019114"] = self.OnSubFinish4019114,
        ["4019107"] = self.OnSubFinish4019107,
        ["4019108"] = self.OnSubFinish4019108,
        ["4019109"] = self.OnSubFinish4019109,
        ["4019110"] = self.OnSubFinish4019110,
        ["4019111"] = self.OnSubFinish4019111,
        ["4019124"] = self.OnSubFinish4019124,
        ["4019118"] = self.OnSubFinish4019118,
        ["4019119"] = self.OnSubFinish4019119,
        ["4019120"] = self.OnSubFinish4019120,
        ["4019121"] = self.OnSubFinish4019121,
        ["4019122"] = self.OnSubFinish4019122,
        ["4019123"] = self.OnSubFinish4019123,
        ["4019112"] = self.OnSubFinish4019112,
        ["4019115"] = self.OnSubFinish4019115,
        ["4019113"] = self.OnSubFinish4019113,
        ["4019116"] = self.OnSubFinish4019116
    }
end

function Quest40191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4019124"] = self.OnSubFailed4019124, ["4019118"] = self.OnSubFailed4019118}
end

function Quest40191:Start()
    print("Start")
end

function Quest40191:OnDestroy()
    print("OnDestroy")
end

function Quest40191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40191:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15070.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15072.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14796.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15064.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15065.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15073.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15136.alias, 20255)
    this:LightNotifyTo(npcs.Npc3038.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30761.alias, 0, true)
    this:LightNotifyTo(npcs.Npc15070.alias, 0, true)
    this:LightNotifyTo(npcs.Npc15071.alias, 0, true)
    this:LightNotifyTo(npcs.Npc15072.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30759.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30760.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3160.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3161.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3188.alias, 0, true)
    this:ActorDestroy("Q4019102Trigger")
    this:ActorDestroy("Q4019104Trigger")
    this:ActorDestroy("Q4019108Trigger")
    this:ActorDestroy("Q4019106Trigger")
    this:ActorDestroy("Q4019118Trigger")
    this:ActorDestroy("Q4019112Trigger")
    this:ActorDestroy("Q4019109Trigger")
    this:DestroyNpcTrigger("Q4019110N1057Trigger")
    this:DestroyNpcTrigger("Q4019112N1038Trigger")
    this:DestroyNpcTrigger("Q4019113N1034Trigger")
    this:DestroyNpcTrigger("Q4019115N3159Trigger")
    this:DestroyNpcTrigger("Q4019117N15073Trigger")
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109, false)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, false)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109_02, false)
    this:CancelStoryByQuest(134019100)
    this:UnCallDelayByQuest("")
    this:UnCallDelayByQuest("4019124talk")
    this:CancelWeather()
    this:BanCrowdNpc(1202, 1, nil, false)
    globalActor:ResumePaimonInProfilePage({3})
    globalActor:ResumePaimonInProfilePage({1202})
end

function Quest40191:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 401911301 then
        this:SetWeather("BigWorld/Weather_Rain_Light")
    elseif arg1 == 401911302 then
        this:CancelWeather()
    elseif arg1 == 4019106 then
        this:DestroyQuestNpcActorByAlias(npcs.Npc1035.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc1040.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc15132_1.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc12941.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc12942.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc12943.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc15134_1.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc1037.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc15133_1.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc1038.alias, false)
        this:DestroyQuestNpcActorByAlias(npcs.Npc1057.alias, false)
    end
end

function Quest40191:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 4019118 then
        this:EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    end
end

function Quest40191:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40191:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40191:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40191:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40191:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40191:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40191:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40191:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest40191:OnSubStart4019101(arg1)
    print("OnSubStart4019101")
end

function Quest40191:OnSubFinish4019101(arg1)
    print("OnSubFinish4019101")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019101, nil)
    end)
end

function Quest40191:OnSubStart4019102(arg1)
    print("OnSubStart4019102")
    this:CreateQuestNpc(arg1, npcs.Npc15070.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15071.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15072.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc30761.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4019102Trigger", "Actor/Gadget/Q4019102Trigger", 70900002, 0, points._Q4019102TriggerPoint_.pos, points._Q4019102TriggerPoint_.rot, true, false, 3)
end

function Quest40191:OnSubFinish4019102(arg1)
    print("OnSubFinish4019102")
    this:SafeDestroyQuestNpc(npcs.Npc15070.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15072.alias, 3)
    this:TransmitPlayerByQuestId(4019102, 2, nil, nil, nil)
    this:LightNotifyTo(npcs.Npc30761.alias, 0, true)
end

function Quest40191:OnSubStart4019117(arg1)
    print("OnSubStart4019117")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019117, 0, 15, 1, npcs.Npc15073.id)
end

function Quest40191:OnSubFinish4019117(arg1)
    print("OnSubFinish4019117")
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15073.alias, 3)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest40191:OnSubStart4019104(arg1)
    print("OnSubStart4019104")
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15132_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15132_1.alias, 40191):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4019104Trigger", "Actor/Gadget/Q4019104Trigger", 70900002, 0, points._Q4019104TriggerPoint_.pos, points._Q4019104TriggerPoint_.rot, true, false, 3)
end

function Quest40191:OnSubFinish4019104(arg1)
    print("OnSubFinish4019104")
    this:ClearNarratorTask()
end

function Quest40191:OnSubStart4019103(arg1)
    print("OnSubStart4019103")
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1033.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12941.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12942.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12943.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15134_1.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12943.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15132_1.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15134_1.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DoFreeStyle(1090, true, nil, true, true, false, true)
    end)
end

function Quest40191:OnSubFinish4019103(arg1)
    print("OnSubFinish4019103")
end

function Quest40191:OnSubStart4019105(arg1)
    print("OnSubStart4019105")
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15133_1.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12943.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15132_1.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15134_1.alias, 40191):DisableInteeHeadCtrl(true)
end

function Quest40191:OnSubFinish4019105(arg1)
    print("OnSubFinish4019105")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019103, nil)
    end)
end

function Quest40191:OnSubStart4019106(arg1)
    print("OnSubStart4019106")
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1033.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12941.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12942.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1037.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15078.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14796.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1038.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1057.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12943.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15132_1.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15134_1.alias, 40191):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15133_1.alias, 40191):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4019106Trigger", "Actor/Gadget/Q4019106Trigger", 70900002, 0, points._Q4019106TriggerPoint_.pos, points._Q4019106TriggerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1035.alias, 40191):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1040.alias, 40191):DoFreeStyle(1110, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc12941.alias, 40191):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DoFreeStyle(1090, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1037.alias, 40191):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1038.alias, 40191):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1057.alias, 40191):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc15078.alias, 40191):WalkToTask({x = -2745.246, y = 236.329, z = -4379.713}, nil, nil, nil)
    end)
end

function Quest40191:OnSubFinish4019106(arg1)
    print("OnSubFinish4019106")
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14796.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
    this:ClearNarratorTask()
end

function Quest40191:OnSubStart4019114(arg1)
    print("OnSubStart4019114")
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40191):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15078.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15078.alias, 40191):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30761.alias, true, 1)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40191:OnSubFinish4019114(arg1)
    print("OnSubFinish4019114")
    this:NpcDestroyWithDither(3, npcs.Npc1033.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15078.alias)
end

function Quest40191:OnSubStart4019107(arg1)
    print("OnSubStart4019107")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15078.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15078.alias, 40191):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30761.alias, true, 1)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40191:OnSubFinish4019107(arg1)
    print("OnSubFinish4019107")
    this:NpcDestroyImmediately(3, npcs.Npc15078.alias)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest40191:OnSubStart4019108(arg1)
    print("OnSubStart4019108")
    this:DailyNpcSafeHideSelf(npcs.Npc30761.alias, true, 1)
    this:NotifyTo(npcs.Npc3038.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4019108Trigger", "Actor/Gadget/Q4019108Trigger", 70900002, 0, points._Q4019108TriggerPoint_.pos, points._Q4019108TriggerPoint_.rot, true, false, 1202)
    globalActor:DisablePaimonInProfilePage({3})
    globalActor:DisablePaimonInProfilePage({1202})
end

function Quest40191:OnSubFinish4019108(arg1)
    print("OnSubFinish4019108")
    this:NpcDestroyImmediately(1202, npcs.Npc15078.alias)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
    this:BanCrowdNpc(1202, 1, nil, false)
end

function Quest40191:OnSubStart4019109(arg1)
    print("OnSubStart4019109")
    this:DailyNpcSafeHideSelf(npcs.Npc30761.alias, true, 1)
    this:NotifyTo(npcs.Npc3038.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4019109Trigger", "Actor/Gadget/Q4019109Trigger", 70900002, 0, points._Q4019109TriggerPoint_.pos, points._Q4019109TriggerPoint_.rot, true, false, 3)
    globalActor:DisablePaimonInProfilePage({3})
    globalActor:DisablePaimonInProfilePage({1202})
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109, true)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, true)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109_02, true)
end

function Quest40191:OnSubFinish4019109(arg1)
    print("OnSubFinish4019109")
    this:SafeDestroyQuestNpc(npcs.Npc3024.alias, 3)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109, false)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, false)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019109_02, false)
    this:LightNotifyTo(npcs.Npc3038.alias, 0, true)
    this:TransmitPlayerByQuestId(4019109, 2, nil, nil, nil)
    this:LightNotifyTo(npcs.Npc30761.alias, 0, true)
end

function Quest40191:OnSubStart4019110(arg1)
    print("OnSubStart4019110")
    this:NpcCreateWithNpcTrigger(npcs.Npc1057.id, 0, 10, 4019110)
    this:CreateQuestNpc(arg1, npcs.Npc1038.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12941.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12943.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc15070.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc15071.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc15072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc30759.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc30760.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc12942.alias, 40191):DisableInteeHeadCtrl(true)
    globalActor:DisablePaimonInProfilePage({3})
    globalActor:DisablePaimonInProfilePage({1202})
end

function Quest40191:OnSubFinish4019110(arg1)
    print("OnSubFinish4019110")
    this:NpcDestroyImmediately(3, npcs.Npc1057.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1038.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12941.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12942.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12943.alias)
    this:PlayerEnterDungeonWithData(1507, 1237, 4019110, 1, nil, nil, nil)
    this:LightNotifyTo(npcs.Npc15070.alias, 0, true)
    this:LightNotifyTo(npcs.Npc15071.alias, 0, true)
    this:LightNotifyTo(npcs.Npc15072.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30759.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30760.alias, 0, true)
    globalActor:ResumePaimonInProfilePage({3})
    globalActor:ResumePaimonInProfilePage({1202})
end

function Quest40191:OnSubStart4019111(arg1)
    print("OnSubStart4019111")
end

function Quest40191:OnSubFinish4019111(arg1)
    print("OnSubFinish4019111")
end

function Quest40191:OnSubStart4019124(arg1)
    print("OnSubStart4019124")
    this:DeployStoryByQuest(134019100)
    this:CallDelayByQuest("4019124talk", 2, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019104, nil)
    end)
end

function Quest40191:OnSubFinish4019124(arg1)
    print("OnSubFinish4019124")
    this:CancelStoryByQuest(134019100)
end

function Quest40191:OnSubFailed4019124(arg1)
    print("OnSubFailed4019124")
    this:CancelStoryByQuest(134019100)
    this:UnCallDelayByQuest("4019124talk")
end

function Quest40191:OnSubStart4019118(arg1)
    print("OnSubStart4019118")
    this:CreateQuestNpc(arg1, npcs.Npc15136.id, 0, false, 0)
    this:CreateNpcWithCameraLookTrigger("Q4019118Trigger", 4019118, 15136, 0, 10, 4019129, true)
end

function Quest40191:OnSubFinish4019118(arg1)
    print("OnSubFinish4019118")
    this:SafeDestroyQuestNpc(npcs.Npc15136.alias, 20255)
end

function Quest40191:OnSubFailed4019118(arg1)
    print("OnSubFailed4019118")
    this:SafeDestroyQuestNpc(npcs.Npc15136.alias, 20255)
end

function Quest40191:OnSubStart4019119(arg1)
    print("OnSubStart4019119")
end

function Quest40191:OnSubFinish4019119(arg1)
    print("OnSubFinish4019119")
end

function Quest40191:OnSubStart4019120(arg1)
    print("OnSubStart4019120")
end

function Quest40191:OnSubFinish4019120(arg1)
    print("OnSubFinish4019120")
end

function Quest40191:OnSubStart4019121(arg1)
    print("OnSubStart4019121")
end

function Quest40191:OnSubFinish4019121(arg1)
    print("OnSubFinish4019121")
end

function Quest40191:OnSubStart4019122(arg1)
    print("OnSubStart4019122")
end

function Quest40191:OnSubFinish4019122(arg1)
    print("OnSubFinish4019122")
end

function Quest40191:OnSubStart4019123(arg1)
    print("OnSubStart4019123")
end

function Quest40191:OnSubFinish4019123(arg1)
    print("OnSubFinish4019123")
end

function Quest40191:OnSubStart4019112(arg1)
    print("OnSubStart4019112")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1038.id, 0, 4019112, 10, true)
    this:CallDelayByQuest("", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q4019112Trigger", "Actor/Gadget/Q4019112Trigger", 70900002, 0, points._Q4019112TriggerPoint_.pos, points._Q4019112TriggerPoint_.rot, true, false, 20255)
    end)
end

function Quest40191:OnSubFinish4019112(arg1)
    print("OnSubFinish4019112")
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
end

function Quest40191:OnSubStart4019115(arg1)
    print("OnSubStart4019115")
    this:NpcCreateWithNpcTrigger(npcs.Npc3159.id, 0, 10, 4019115)
    this:DailyNpcSafeHideSelf(npcs.Npc3160.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3188.alias, true, 1)
end

function Quest40191:OnSubFinish4019115(arg1)
    print("OnSubFinish4019115")
    this:SafeDestroyQuestNpc(npcs.Npc3159.alias, 3)
end

function Quest40191:OnSubStart4019113(arg1)
    print("OnSubStart4019113")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc3159.id, arg1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019113, 0, 15, 1, npcs.Npc1034.id)
    this:DailyNpcSafeHideSelf(npcs.Npc3160.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3188.alias, true, 1)
end

function Quest40191:OnSubFinish4019113(arg1)
    print("OnSubFinish4019113")
    this:CancelWeather()
end

function Quest40191:OnSubStart4019116(arg1)
    print("OnSubStart4019116")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1034.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1097.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15078.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc3160.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3188.alias, true, 1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15063.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15064.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15065.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 40191):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1034.alias, 40191):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15078.alias, 40191):DisableInteeHeadCtrl(true)
    end)
end

function Quest40191:OnSubFinish4019116(arg1)
    print("OnSubFinish4019116")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15064.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15065.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3159.alias, 3)
    this:LightNotifyTo(npcs.Npc3160.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3188.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3161.alias, 0, true)
end

return Quest40191
