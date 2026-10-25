require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40184 = class("Quest40184", QuestActorProxy)
Quest40184.defaultAlias = "Quest40184"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40184:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40184:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4018401"] = self.OnSubStart4018401,
        ["4018402"] = self.OnSubStart4018402,
        ["4018403"] = self.OnSubStart4018403,
        ["4018404"] = self.OnSubStart4018404,
        ["4018407"] = self.OnSubStart4018407,
        ["4018408"] = self.OnSubStart4018408,
        ["4018409"] = self.OnSubStart4018409,
        ["4018410"] = self.OnSubStart4018410,
        ["4018411"] = self.OnSubStart4018411,
        ["4018406"] = self.OnSubStart4018406
    }
end

function Quest40184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4018401"] = self.OnSubFinish4018401,
        ["4018402"] = self.OnSubFinish4018402,
        ["4018403"] = self.OnSubFinish4018403,
        ["4018404"] = self.OnSubFinish4018404,
        ["4018407"] = self.OnSubFinish4018407,
        ["4018408"] = self.OnSubFinish4018408,
        ["4018409"] = self.OnSubFinish4018409,
        ["4018410"] = self.OnSubFinish4018410,
        ["4018411"] = self.OnSubFinish4018411,
        ["4018406"] = self.OnSubFinish4018406
    }
end

function Quest40184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40184:Start()
    print("Start")
end

function Quest40184:OnDestroy()
    print("OnDestroy")
end

function Quest40184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40184:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1587.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:LightNotifyTo(npcs.Npc2083.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1587.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
    this:ActorDestroy("Q4018407TriggerMora")
    this:ActorDestroy("Q4018407TriggerYanhua")
    this:ActorDestroy("Q4018410Trigger")
    this:DestroyNpcTrigger("Q4018402N1012Trigger")
    this:DestroyNpcTrigger("Q4018403N1012Trigger")
    this:DestroyNpcTrigger("Q4018404N1012Trigger")
    this:DestroyNpcTrigger("Q4018407N2611Trigger")
    this:DestroyNpcTrigger("Q4018408N1012Trigger")
    this:DestroyNpcTrigger("Q4018409N1068Trigger")
    this:DestroyNpcTrigger("Q4018411N2084Trigger")
    this:DestroyNpcTrigger("Q4018406N1046Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15135.alias, 3)
end

function Quest40184:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40184:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40184:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40184:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40184:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40184:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40184:OnSubStart4018401(arg1)
    print("OnSubStart4018401")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_4018401, nil)
    actorUtils.FinishQuestID(false, 4018401)
end

function Quest40184:OnSubFinish4018401(arg1)
    print("OnSubFinish4018401")
end

function Quest40184:OnSubStart4018402(arg1)
    print("OnSubStart4018402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018402, 0, 25, 1, npcs.Xiangling.id)
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
end

function Quest40184:OnSubFinish4018402(arg1)
    print("OnSubFinish4018402")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:ClearNarratorTask()
end

function Quest40184:OnSubStart4018403(arg1)
    print("OnSubStart4018403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018403, 0, 20, 1, npcs.Xiangling.id)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2611.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc2611.alias, 40184):DoFreeStyle(1090, true, nil, true, true, false, true)
    end)
end

function Quest40184:OnSubFinish4018403(arg1)
    print("OnSubFinish4018403")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
end

function Quest40184:OnSubStart4018404(arg1)
    print("OnSubStart4018404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018404, 0, 15, 1, npcs.Xiangling.id)
end

function Quest40184:OnSubFinish4018404(arg1)
    print("OnSubFinish4018404")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("LanternRiteV5MainPage", 0)
    end)
end

function Quest40184:OnSubStart4018407(arg1)
    print("OnSubStart4018407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018407, 0, 30, 1, npcs.Npc2611.id)
    actorMgr:CreateActorWithPos("Q4018407TriggerMora", "Actor/Gadget/Q4018407TriggerMora", 70900002, 0, points._Q4018407TriggerMoraPoint_.pos, points._Q4018407TriggerMoraPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4018407TriggerYanhua", "Actor/Gadget/Q4018407TriggerYanhua", 70900002, 0, points._Q4018407TriggerYanhuaPoint_.pos, points._Q4018407TriggerYanhuaPoint_.rot, true, false, 3)
end

function Quest40184:OnSubFinish4018407(arg1)
    print("OnSubFinish4018407")
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:ActorDestroy("Q4018407TriggerMora")
    this:ActorDestroy("Q4018407TriggerYanhua")
end

function Quest40184:OnSubStart4018408(arg1)
    print("OnSubStart4018408")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018408, 0, 15, 1, npcs.Xiangling.id)
    this:DailyNpcSafeHideSelf(npcs.Npc2083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
end

function Quest40184:OnSubFinish4018408(arg1)
    print("OnSubFinish4018408")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
end

function Quest40184:OnSubStart4018409(arg1)
    print("OnSubStart4018409")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1068.id, 0, 4018409, 15, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiangling.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2045.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc2083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
end

function Quest40184:OnSubFinish4018409(arg1)
    print("OnSubFinish4018409")
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
end

function Quest40184:OnSubStart4018410(arg1)
    print("OnSubStart4018410")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2083.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1587.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc2083.alias, 40184):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1587.alias, 40184):SitOnChair(0, true)
        actorMgr:CreateActorWithPos("Q4018410Trigger", "Actor/Gadget/Q4018410Trigger", 70900002, 0, points._Q4018410TriggerPoint_.pos, points._Q4018410TriggerPoint_.rot, true, false, 3)
    end)

    this:NpcCreateWithActionSafeCall(0, npcs.Npc1068.id, arg1)
end

function Quest40184:OnSubFinish4018410(arg1)
    print("OnSubFinish4018410")
    this:LightNotifyTo(npcs.Npc2083.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc2083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:LightNotifyTo(npcs.Npc1587.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1587.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15135.alias, 3)
end

function Quest40184:OnSubStart4018411(arg1)
    print("OnSubStart4018411")
    this:NpcCreateWithNpcTrigger(npcs.Npc2084.id, 0, 15, 4018411)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2083.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1587.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc2083.alias, 40184):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1587.alias, 40184):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1587.alias, 40184):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2083.alias, 40184):DisableInteeHeadCtrl(true)
    end)
end

function Quest40184:OnSubFinish4018411(arg1)
    print("OnSubFinish4018411")
    this:SafeDestroyQuestNpc(npcs.Npc2084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1587.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1587.alias, 40184):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2083.alias, 40184):DisableInteeHeadCtrl(false)
end

function Quest40184:OnSubStart4018406(arg1)
    print("OnSubStart4018406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018406, 0, 15, 1, npcs.Npc1046.id)
end

function Quest40184:OnSubFinish4018406(arg1)
    print("OnSubFinish4018406")
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134018401)
    end)
end

return Quest40184
