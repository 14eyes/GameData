require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6035 = class("Quest6035", QuestActorProxy)
Quest6035.defaultAlias = "Quest6035"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["603509"] = self.OnSubStart603509,
        ["603510"] = self.OnSubStart603510,
        ["603517"] = self.OnSubStart603517,
        ["603518"] = self.OnSubStart603518,
        ["603519"] = self.OnSubStart603519,
        ["603511"] = self.OnSubStart603511,
        ["603512"] = self.OnSubStart603512,
        ["603513"] = self.OnSubStart603513,
        ["603520"] = self.OnSubStart603520,
        ["603514"] = self.OnSubStart603514,
        ["603521"] = self.OnSubStart603521,
        ["603522"] = self.OnSubStart603522,
        ["603527"] = self.OnSubStart603527,
        ["603523"] = self.OnSubStart603523,
        ["603524"] = self.OnSubStart603524,
        ["603515"] = self.OnSubStart603515,
        ["603501"] = self.OnSubStart603501,
        ["603502"] = self.OnSubStart603502,
        ["603503"] = self.OnSubStart603503,
        ["603525"] = self.OnSubStart603525,
        ["603526"] = self.OnSubStart603526,
        ["603504"] = self.OnSubStart603504,
        ["603505"] = self.OnSubStart603505,
        ["603506"] = self.OnSubStart603506,
        ["603507"] = self.OnSubStart603507,
        ["603516"] = self.OnSubStart603516,
        ["603508"] = self.OnSubStart603508
    }
end

function Quest6035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["603509"] = self.OnSubFinish603509,
        ["603510"] = self.OnSubFinish603510,
        ["603517"] = self.OnSubFinish603517,
        ["603518"] = self.OnSubFinish603518,
        ["603519"] = self.OnSubFinish603519,
        ["603511"] = self.OnSubFinish603511,
        ["603512"] = self.OnSubFinish603512,
        ["603513"] = self.OnSubFinish603513,
        ["603520"] = self.OnSubFinish603520,
        ["603514"] = self.OnSubFinish603514,
        ["603521"] = self.OnSubFinish603521,
        ["603522"] = self.OnSubFinish603522,
        ["603527"] = self.OnSubFinish603527,
        ["603523"] = self.OnSubFinish603523,
        ["603524"] = self.OnSubFinish603524,
        ["603515"] = self.OnSubFinish603515,
        ["603501"] = self.OnSubFinish603501,
        ["603502"] = self.OnSubFinish603502,
        ["603503"] = self.OnSubFinish603503,
        ["603525"] = self.OnSubFinish603525,
        ["603526"] = self.OnSubFinish603526,
        ["603504"] = self.OnSubFinish603504,
        ["603505"] = self.OnSubFinish603505,
        ["603506"] = self.OnSubFinish603506,
        ["603507"] = self.OnSubFinish603507,
        ["603516"] = self.OnSubFinish603516,
        ["603508"] = self.OnSubFinish603508
    }
end

function Quest6035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["603514"] = self.OnSubFailed603514,
        ["603522"] = self.OnSubFailed603522,
        ["603524"] = self.OnSubFailed603524
    }
end

function Quest6035:Start()
    print("Start")
end

function Quest6035:OnDestroy()
    print("OnDestroy")
end

function Quest6035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6035:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q603501Trigger", 6035)
    this:ActorDestroy("Q603502Trigger", 6035)
    this:ActorDestroy("Q603503Trigger", 6035)
    this:ActorDestroy("Q603510Trigger", 6035)
    this:ActorDestroy("Q603512Trigger", 6035)
    this:ActorDestroy("Q603513Trigger", 6035)
    this:ActorDestroy("Q603518Trigger", 6035)
end

function Quest6035:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 1 then
        actorUtils.InterruptReminder()
    end

    if arg1.valueInt == 2 then
        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest6035:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 25 then
        this:TransmitPlayerWithQuestIdByData(603508, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    end

    if arg1 == 22 then
        this:TransmitPlayerWithQuestIdByData(603508, 2, datas.TransmitData_CommonBlack, nil, nil, nil)
    end

    if arg1 == 23 then
        this:TransmitPlayerWithQuestIdByData(603508, 3, datas.TransmitData_CommonBlack, nil, nil, nil)
    end

    if arg1 == 24 then
        this:TransmitPlayerWithQuestIdByData(603508, 4, datas.TransmitData_CommonBlack, nil, nil, nil)
    end

    if arg1 == 26 then
        this:TransmitPlayerWithQuestIdByData(603508, 5, nil, nil, function(arg1)
            actorUtils.FinishQuestWithParam({false}, {603526})
        end, nil)
    end
end

function Quest6035:ActorDestroy(arg1, arg2)
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

function Quest6035:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6035:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6035:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest6035:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6035:QuestVarNotes() end

function Quest6035:OnSubStart603509(arg1)
    print("OnSubStart603509")
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13993.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 6035):DisableInteeHeadCtrl(true)
end

function Quest6035:OnSubFinish603509(arg1)
    print("OnSubFinish603509")
    this:NpcDestroyImmediately(20343, npcs.Npc1064.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1053.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
end

function Quest6035:OnSubStart603510(arg1)
    print("OnSubStart603510")
    actorMgr:CreateActorWithPos("Q603510Trigger", "Actor/Gadget/Q603510Trigger", 70900002, 0, points._Q603510TriggerPoint_.pos, points._Q603510TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603510(arg1)
    print("OnSubFinish603510")
end

function Quest6035:OnSubStart603517(arg1)
    print("OnSubStart603517")
end

function Quest6035:OnSubFinish603517(arg1)
    print("OnSubFinish603517")
end

function Quest6035:OnSubStart603518(arg1)
    print("OnSubStart603518")
    actorMgr:CreateActorWithPos("Q603518Trigger", "Actor/Gadget/Q603518Trigger", 70900002, 0, points._Q603518TriggerPoint_.pos, points._Q603518TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603518(arg1)
    print("OnSubFinish603518")
    this:EnterSceneLookCamera({x = -2606.426, y = 19.532, z = 5616.408}, 0, 3, true, false)
    this:QuestNarratorTask(datas.NarratorWithId_603502, nil)
    this:ActorDestroy("Q603518Trigger", 6035)
end

function Quest6035:OnSubStart603519(arg1)
    print("OnSubStart603519")
    this:GetQuestNpcActor(npcs.Npc16768_1.alias, 6035):DoFreeStyle(1040, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16766_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16766_1.alias, 6035):DoFreeStyle(6060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16765_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16765_1.alias, 6035):DoFreeStyle(6090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17028.alias, 6035):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16770_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16770_1.alias, 6035):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16769_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16769_1.alias, 6035):DoFreeStyle(8020, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16767_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16767_1.alias, 6035):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest6035:OnSubFinish603519(arg1)
    print("OnSubFinish603519")
end

function Quest6035:OnSubStart603511(arg1)
    print("OnSubStart603511")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(603511, 0, 10, 0, npcs.Npc16975.id)
    this:GetQuestNpcActor(npcs.Npc16768_1.alias, 6035):DoFreeStyle(1040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16765_1.alias, 6035):DoFreeStyle(6090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17028.alias, 6035):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16766_1.alias, 6035):DoFreeStyle(6060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16770_1.alias, 6035):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16769_1.alias, 6035):DoFreeStyle(8020, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16767_1.alias, 6035):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest6035:OnSubFinish603511(arg1)
    print("OnSubFinish603511")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16768_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16765_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16766_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16770_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16769_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16767_1.alias)
end

function Quest6035:OnSubStart603512(arg1)
    print("OnSubStart603512")
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 6035):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 6035):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 6035):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q603512Trigger", "Actor/Gadget/Q603512Trigger", 70900002, 0, points._Q603512TriggerPoint_.pos, points._Q603512TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603512(arg1)
    print("OnSubFinish603512")
    this:NpcDestroyImmediately(20343, npcs.Npc1067.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
    this:ActorDestroy("Q603512Trigger", 6035)
end

function Quest6035:OnSubStart603513(arg1)
    print("OnSubStart603513")
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6035):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16975.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16566.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16567.alias, 6035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16568.alias, 6035):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q603513Trigger", "Actor/Gadget/Q603513Trigger", 70900002, 0, points._Q603513TriggerPoint_.pos, points._Q603513TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603513(arg1)
    print("OnSubFinish603513")
    this:NpcDestroyImmediately(20343, npcs.Npc1053.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ActorDestroy("Q603513Trigger", 6035)
end

function Quest6035:OnSubStart603520(arg1)
    print("OnSubStart603520")
    this:CreateQuestNpc(arg1, npcs.Npc16977.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    if self:GetQuestVar(603520, 0) == 0 then
        actorUtils.FinishQuestWithParam({false}, {603520})
    end

    if self:GetQuestVar(603520, 0) == 1 then
        this:RemoveLocalGadget(73163025, "1")
    end
end

function Quest6035:OnSubFinish603520(arg1)
    print("OnSubFinish603520")
    this:NpcDestroyImmediately(20343, npcs.Npc16977.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
end

function Quest6035:OnSubStart603514(arg1)
    print("OnSubStart603514")
    this:DeployStoryByQuest(110603500)
    this:SetNavigationByMainId(6035, true)
    this:CreateLocalGadget(73163025, "1", {x = -2344.95, y = -255.94, z = 5559.57}, {x = 0, y = 0, z = 0}, 20343, nil, nil, false, 0, true)
end

function Quest6035:OnSubFinish603514(arg1)
    print("OnSubFinish603514")
    this:CancelAllStory()
    actorUtils.InterruptReminder()
end

function Quest6035:OnSubFailed603514(arg1)
    print("OnSubFailed603514")
    this:RecycleAllRes()
    actorUtils.InterruptReminder()
end

function Quest6035:OnSubStart603521(arg1)
    print("OnSubStart603521")
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    if self:GetQuestVar(603521, 0) == 0 then
        actorUtils.FinishQuestWithParam({false}, {603521})
    end

    if self:GetQuestVar(603521, 0) == 1 then
        this:RemoveLocalGadget(73163025, "1")
    end
end

function Quest6035:OnSubFinish603521(arg1)
    print("OnSubFinish603521")
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
end

function Quest6035:OnSubStart603522(arg1)
    print("OnSubStart603522")
    this:DeployStoryByQuest(110603501)
    this:SetNavigationByMainId(6035, true)
    this:CreateLocalGadget(73163025, "1", {x = -2344.95, y = -255.94, z = 5559.57}, {x = 0, y = 0, z = 0}, 20343, nil, nil, false, 0, true)
end

function Quest6035:OnSubFinish603522(arg1)
    print("OnSubFinish603522")
    this:CancelAllStory()
    actorUtils.InterruptReminder()
end

function Quest6035:OnSubFailed603522(arg1)
    print("OnSubFailed603522")
    this:RecycleAllRes()
    actorUtils.InterruptReminder()
end

function Quest6035:OnSubStart603527(arg1)
    print("OnSubStart603527")
end

function Quest6035:OnSubFinish603527(arg1)
    print("OnSubFinish603527")
end

function Quest6035:OnSubStart603523(arg1)
    print("OnSubStart603523")
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    if self:GetQuestVar(603523, 0) == 0 then
        actorUtils.FinishQuestWithParam({false}, {603523})
    end

    if self:GetQuestVar(603523, 0) == 1 then
        this:RemoveLocalGadget(73163025, "1")
    end
end

function Quest6035:OnSubFinish603523(arg1)
    print("OnSubFinish603523")
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
end

function Quest6035:OnSubStart603524(arg1)
    print("OnSubStart603524")
    this:DeployStoryByQuest(110603502)
    this:SetNavigationByMainId(6035, true)
    this:CreateLocalGadget(73163025, "1", {x = -2344.95, y = -255.94, z = 5559.57}, {x = 0, y = 0, z = 0}, 20343, nil, nil, false, 0, true)
end

function Quest6035:OnSubFinish603524(arg1)
    print("OnSubFinish603524")
    this:NpcDestroyImmediately(20343, npcs.Npc16977.alias)
    this:CancelAllStory()
    actorUtils.InterruptReminder()
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:RemoveLocalGadget(73163025, "1")
end

function Quest6035:OnSubFailed603524(arg1)
    print("OnSubFailed603524")
    this:RecycleAllRes()
    actorUtils.InterruptReminder()
end

function Quest6035:OnSubStart603515(arg1)
    print("OnSubStart603515")
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16975.id, 0, 603515, 10, true)
end

function Quest6035:OnSubFinish603515(arg1)
    print("OnSubFinish603515")
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
end

function Quest6035:OnSubStart603501(arg1)
    print("OnSubStart603501")
    this:CreateQuestNpc(arg1, npcs.Npc1056.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q603501Trigger", "Actor/Gadget/Q603501Trigger", 70900002, 0, points._Q603501TriggerPoint_.pos, points._Q603501TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603501(arg1)
    print("OnSubFinish603501")
    this:NpcDestroyImmediately(20343, npcs.Npc1056.alias)
    this:ActorDestroy("Q603501Trigger", 6035)
    this:ClearNarratorTask()
end

function Quest6035:OnSubStart603502(arg1)
    print("OnSubStart603502")
    this:NpcCreateWithNoBlack(npcs.Npc16975.id, 0, 20, 603502, true, 603502)
    actorMgr:CreateActorWithPos("Q603502Trigger", "Actor/Gadget/Q603502Trigger", 70900002, 0, points._Q603502TriggerPoint_.pos, points._Q603502TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603502(arg1)
    print("OnSubFinish603502")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ActorDestroy("Q603502Trigger", 6035)
end

function Quest6035:OnSubStart603503(arg1)
    print("OnSubStart603503")
    this:CreateQuestNpc(arg1, npcs.Npc1056.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q603503Trigger", "Actor/Gadget/Q603503Trigger", 70900002, 0, points._Q603503TriggerPoint_.pos, points._Q603503TriggerPoint_.rot, true, false, 20343, nil, 0, 6035)
end

function Quest6035:OnSubFinish603503(arg1)
    print("OnSubFinish603503")
    this:ActorDestroy("Q603503Trigger", 6035)
end

function Quest6035:OnSubStart603525(arg1)
    print("OnSubStart603525")
end

function Quest6035:OnSubFinish603525(arg1)
    print("OnSubFinish603525")
end

function Quest6035:OnSubStart603526(arg1)
    print("OnSubStart603526")
end

function Quest6035:OnSubFinish603526(arg1)
    print("OnSubFinish603526")
end

function Quest6035:OnSubStart603504(arg1)
    print("OnSubStart603504")
end

function Quest6035:OnSubFinish603504(arg1)
    print("OnSubFinish603504")
end

function Quest6035:OnSubStart603505(arg1)
    print("OnSubStart603505")
end

function Quest6035:OnSubFinish603505(arg1)
    print("OnSubFinish603505")
end

function Quest6035:OnSubStart603506(arg1)
    print("OnSubStart603506")
end

function Quest6035:OnSubFinish603506(arg1)
    print("OnSubFinish603506")
end

function Quest6035:OnSubStart603507(arg1)
    print("OnSubStart603507")
end

function Quest6035:OnSubFinish603507(arg1)
    print("OnSubFinish603507")
end

function Quest6035:OnSubStart603516(arg1)
    print("OnSubStart603516")
end

function Quest6035:OnSubFinish603516(arg1)
    print("OnSubFinish603516")
end

function Quest6035:OnSubStart603508(arg1)
    print("OnSubStart603508")
    this:CreateQuestNpc(arg1, npcs.Npc16994.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16995.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16996.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16997.id, 0, false, 0)
    this:DeployRangeStoryByQuest(110603510, 20343, {x = -2349.28, y = 300, z = 5530.185}, 600, 600)
end

function Quest6035:OnSubFinish603508(arg1)
    print("OnSubFinish603508")
    this:NpcDestroyImmediately(20343, npcs.Npc1056.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16994.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16995.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16996.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16997.alias)
    this:CancelRangeStoryByQuest(110603510)
end

return Quest6035
