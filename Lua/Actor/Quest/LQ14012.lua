require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14012 = class("Quest14012", QuestActorProxy)
Quest14012.defaultAlias = "Quest14012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401201"] = self.OnSubStart1401201,
        ["1401211"] = self.OnSubStart1401211,
        ["1401213"] = self.OnSubStart1401213,
        ["1401202"] = self.OnSubStart1401202,
        ["1401203"] = self.OnSubStart1401203,
        ["1401204"] = self.OnSubStart1401204,
        ["1401205"] = self.OnSubStart1401205,
        ["1401206"] = self.OnSubStart1401206,
        ["1401207"] = self.OnSubStart1401207,
        ["1401208"] = self.OnSubStart1401208,
        ["1401214"] = self.OnSubStart1401214,
        ["1401212"] = self.OnSubStart1401212,
        ["1401209"] = self.OnSubStart1401209
    }
end

function Quest14012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401201"] = self.OnSubFinish1401201,
        ["1401211"] = self.OnSubFinish1401211,
        ["1401213"] = self.OnSubFinish1401213,
        ["1401202"] = self.OnSubFinish1401202,
        ["1401203"] = self.OnSubFinish1401203,
        ["1401204"] = self.OnSubFinish1401204,
        ["1401205"] = self.OnSubFinish1401205,
        ["1401206"] = self.OnSubFinish1401206,
        ["1401207"] = self.OnSubFinish1401207,
        ["1401208"] = self.OnSubFinish1401208,
        ["1401214"] = self.OnSubFinish1401214,
        ["1401212"] = self.OnSubFinish1401212,
        ["1401209"] = self.OnSubFinish1401209
    }
end

function Quest14012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14012:Start()
    print("Start")
end

function Quest14012:OnDestroy()
    print("OnDestroy")
end

function Quest14012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14012:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14012:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14012:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 140121301 then
        actorUtils.FinishQuestID(false, 1401213)
    elseif arg1 == 140121401 then
        actorUtils.FinishQuestID(false, 1401214)
    end
end

function Quest14012:OnSubStart1401201(arg1)
    print("OnSubStart1401201")
    actorMgr:CreateActorWithPos("Q1401201Trigger", "Actor/Gadget/Q1401201Trigger", 70900002, 0, points.TPos_Q1401201Trigger.pos, points.TPos_Q1401201Trigger.rot, true, false, 3)
end

function Quest14012:OnSubFinish1401201(arg1)
    print("OnSubFinish1401201")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1401201)
end

function Quest14012:OnSubStart1401211(arg1)
    print("OnSubStart1401211")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13577Data.id, 1401211, 0, 30, 1)
end

function Quest14012:OnSubFinish1401211(arg1)
    print("OnSubFinish1401211")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13580Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 3)
end

function Quest14012:OnSubStart1401213(arg1)
    print("OnSubStart1401213")
end

function Quest14012:OnSubFinish1401213(arg1)
    print("OnSubFinish1401213")
end

function Quest14012:OnSubStart1401202(arg1)
    print("OnSubStart1401202")
end

function Quest14012:OnSubFinish1401202(arg1)
    print("OnSubFinish1401202")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1401202)
end

function Quest14012:OnSubStart1401203(arg1)
    print("OnSubStart1401203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13581Data.id, 1401203, 0, 8, 1)
end

function Quest14012:OnSubFinish1401203(arg1)
    print("OnSubFinish1401203")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13580Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13581Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 3)
end

function Quest14012:OnSubStart1401204(arg1)
    print("OnSubStart1401204")
    this:NpcCreateWithNpcTrigger(npcs.Npc5087Data.id, 1401204, 0, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc5088Data.alias, 1, true)
end

function Quest14012:OnSubFinish1401204(arg1)
    print("OnSubFinish1401204")
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 1083)
    this:SafeDestroyQuestNpc(npcs.Npc5087Data.alias, 1083)
end

function Quest14012:OnSubStart1401205(arg1)
    print("OnSubStart1401205")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13578Data.id, 1401205, 0, 15, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5088Data.alias, 1, true)
end

function Quest14012:OnSubFinish1401205(arg1)
    print("OnSubFinish1401205")
    this:LightNotifyTo(npcs.Npc5088Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 1087)
end

function Quest14012:OnSubStart1401206(arg1)
    print("OnSubStart1401206")
    this:CreateQuestNpc(arg1, npcs.Npc13579Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13580Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13581Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1076Data.id, 1401206, 0, 8)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13578Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13697Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13698Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13698Data.alias):DoFreeStyle(1320, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1401206Trigger", "Actor/Gadget/Q1401206Trigger", 70900002, 0, points.TPos_Q1401206Trigger.pos, points.TPos_Q1401206Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):SitOnChair(8040, true)
    this:GetQuestNpcActor(npcs.Npc13581Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14012:OnSubFinish1401206(arg1)
    print("OnSubFinish1401206")
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DisableInteeHeadCtrl(false)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
end

function Quest14012:OnSubStart1401207(arg1)
    print("OnSubStart1401207")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13578Data.id, 1401207, 0, 15, 1, true)
end

function Quest14012:OnSubFinish1401207(arg1)
    print("OnSubFinish1401207")
    this:TransmitPlayerByData(arg1, 1401207, datas.TransmitWithPicData1401207)
    this:DestroyQuestNpcActor(npcs.Npc13579Data.alias, 1087)
    this:DestroyQuestNpcActor(npcs.Npc13580Data.alias, 1087)
    this:DestroyQuestNpcActor(npcs.Npc13577Data.alias, 1087)
    this:DestroyQuestNpcActor(npcs.Npc13581Data.alias, 1087)
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13697Data.alias, 1087)
    this:DestroyQuestNpcActor(npcs.Npc13698Data.alias, 1087)
end

function Quest14012:OnSubStart1401208(arg1)
    print("OnSubStart1401208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13584Data.id, 1401208, 0, 40, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401208Trigger", "Actor/Gadget/Q1401208Trigger", 70900002, 0, {x = -0.133, y = 7.296, z = 150.328}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
end

function Quest14012:OnSubFinish1401208(arg1)
    print("OnSubFinish1401208")
    this:ActorDestroy("Q1401208Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13584Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13585Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13583Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13699Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13700Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13793Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13794Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13795Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13816Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13817Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13697Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13698Data.alias, 1085)
end

function Quest14012:OnSubStart1401214(arg1)
    print("OnSubStart1401214")
end

function Quest14012:OnSubFinish1401214(arg1)
    print("OnSubFinish1401214")
end

function Quest14012:OnSubStart1401212(arg1)
    print("OnSubStart1401212")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1073Data.id, 1401212, 0, 40, 1)
        this:CreateQuestNpc(arg1, npcs.Npc13699Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13700Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13793Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13794Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13795Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13816Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13817Data.id, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc13699Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13700Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13793Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13794Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13816Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13817Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13699Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13700Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13793Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13816Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13817Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest14012:OnSubFinish1401212(arg1)
    print("OnSubFinish1401212")
    this:SafeDestroyQuestNpc(npcs.Npc13584Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13585Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13697Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13698Data.alias, 1085)
end

function Quest14012:OnSubStart1401209(arg1)
    print("OnSubStart1401209")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13579Data.id, 1401209, 0, 40, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13578Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13699Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13700Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13793Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13794Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13816Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13817Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13699Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13700Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13793Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13816Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13817Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14012:OnSubFinish1401209(arg1)
    print("OnSubFinish1401209")
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc13699Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13700Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13793Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13794Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13816Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13817Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13581Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13699Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13700Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13793Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13794Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13795Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13816Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13817Data.alias, 1085)
end

return Quest14012
