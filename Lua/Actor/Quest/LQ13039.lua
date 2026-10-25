require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13039 = class("Quest13039", QuestActorProxy)
Quest13039.defaultAlias = "Quest13039"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13039:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303910"] = self.OnSubStart1303910,
        ["1303901"] = self.OnSubStart1303901,
        ["1303902"] = self.OnSubStart1303902,
        ["1303903"] = self.OnSubStart1303903,
        ["1303904"] = self.OnSubStart1303904,
        ["1303905"] = self.OnSubStart1303905,
        ["1303909"] = self.OnSubStart1303909,
        ["1303906"] = self.OnSubStart1303906,
        ["1303908"] = self.OnSubStart1303908,
        ["1303907"] = self.OnSubStart1303907
    }
end

function Quest13039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303910"] = self.OnSubFinish1303910,
        ["1303901"] = self.OnSubFinish1303901,
        ["1303902"] = self.OnSubFinish1303902,
        ["1303903"] = self.OnSubFinish1303903,
        ["1303904"] = self.OnSubFinish1303904,
        ["1303905"] = self.OnSubFinish1303905,
        ["1303909"] = self.OnSubFinish1303909,
        ["1303906"] = self.OnSubFinish1303906,
        ["1303908"] = self.OnSubFinish1303908,
        ["1303907"] = self.OnSubFinish1303907
    }
end

function Quest13039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1303907"] = self.OnSubFailed1303907}
end

function Quest13039:Start()
    print("Start")
end

function Quest13039:OnDestroy()
    print("OnDestroy")
end

function Quest13039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13039:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest13039:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13039:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13039:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest13039:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13039:OnSubStart1303910(arg1)
    print("OnSubStart1303910")
    actorUtils.FinishQuestID(false, 1303910)
end

function Quest13039:OnSubFinish1303910(arg1)
    print("OnSubFinish1303910")
    this:TransmitPlayerByData(arg1, 130910, datas.TransmitData130910)
end

function Quest13039:OnSubStart1303901(arg1)
    print("OnSubStart1303901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1085Data.id, 1303901, 0, 10, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13992Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13039:OnSubFinish1303901(arg1)
    print("OnSubFinish1303901")
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1091)
end

function Quest13039:OnSubStart1303902(arg1)
    print("OnSubStart1303902")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1085Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13993Data.id, 1303902, 0, 20)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1085Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13039:OnSubFinish1303902(arg1)
    print("OnSubFinish1303902")
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13993Data.alias, 3)
end

function Quest13039:OnSubStart1303903(arg1)
    print("OnSubStart1303903")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13993Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1067Data.id, 1303903, 0, 20)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DisableInteeHeadCtrl(true)
    end)

    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13039:OnSubFinish1303903(arg1)
    print("OnSubFinish1303903")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13993Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
end

function Quest13039:OnSubStart1303904(arg1)
    print("OnSubStart1303904")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13993Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1064Data.id, 1303904, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1064Data.alias):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(0, false)
    end)
end

function Quest13039:OnSubFinish1303904(arg1)
    print("OnSubFinish1303904")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13993Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
end

function Quest13039:OnSubStart1303905(arg1)
    print("OnSubStart1303905")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1058Data.id, 1303905, 0, 40, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13993Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13993Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13039:OnSubFinish1303905(arg1)
    print("OnSubFinish1303905")
    this:TransmitPlayerByData(arg1, 1303905, datas.TransmitData1303905)
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13993Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13993Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1074)
end

function Quest13039:OnSubStart1303909(arg1)
    print("OnSubStart1303909")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1058Data.id, 1303909, 0, 10, 1, true)
end

function Quest13039:OnSubFinish1303909(arg1)
    print("OnSubFinish1303909")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13039:OnSubStart1303906(arg1)
    print("OnSubStart1303906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1058Data.id, 1303906, 0, 10, 1)
end

function Quest13039:OnSubFinish1303906(arg1)
    print("OnSubFinish1303906")
    this:TransmitPlayerByData(arg1, 1303906, datas.TransmitData1303906)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13039:OnSubStart1303908(arg1)
    print("OnSubStart1303908")
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4088Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4090Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1303908Trigger", "Actor/Gadget/Q1303908Trigger", 70900002, 0, {x = -394.796, y = 306.268, z = 2890.229}, {x = 0.0, y = 52.959, z = 0.0}, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:DestroyNpcTrigger("Q1303907N13992Trigger")
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13039:OnSubFinish1303908(arg1)
    print("OnSubFinish1303908")
end

function Quest13039:OnSubStart1303907(arg1)
    print("OnSubStart1303907")
    this:NpcCreateWithNpcTrigger(npcs.Npc13992Data.id, 1303907, 0, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc4088Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4090Data.alias, 1, true)
    globalActor:DisablePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13039:OnSubFinish1303907(arg1)
    print("OnSubFinish1303907")
    this:LightNotifyTo(npcs.Npc4088Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4090Data.alias, 0, true)
    globalActor:ResumePaimonInProfilePage({3})
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
end

function Quest13039:OnSubFailed1303907(arg1)
    print("OnSubFailed1303907")
    globalActor:ResumePaimonInProfilePage({3})
end

return Quest13039
