require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40133 = class("Quest40133", QuestActorProxy)
Quest40133.defaultAlias = "Quest40133"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40133:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40133:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013310"] = self.OnSubStart4013310,
        ["4013301"] = self.OnSubStart4013301,
        ["4013302"] = self.OnSubStart4013302,
        ["4013303"] = self.OnSubStart4013303,
        ["4013311"] = self.OnSubStart4013311,
        ["4013312"] = self.OnSubStart4013312,
        ["4013315"] = self.OnSubStart4013315,
        ["4013316"] = self.OnSubStart4013316,
        ["4013317"] = self.OnSubStart4013317,
        ["4013319"] = self.OnSubStart4013319,
        ["4013304"] = self.OnSubStart4013304,
        ["4013305"] = self.OnSubStart4013305,
        ["4013320"] = self.OnSubStart4013320,
        ["4013306"] = self.OnSubStart4013306,
        ["4013307"] = self.OnSubStart4013307,
        ["4013308"] = self.OnSubStart4013308,
        ["4013318"] = self.OnSubStart4013318,
        ["4013309"] = self.OnSubStart4013309,
        ["4013313"] = self.OnSubStart4013313,
        ["4013314"] = self.OnSubStart4013314
    }
end

function Quest40133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013310"] = self.OnSubFinish4013310,
        ["4013301"] = self.OnSubFinish4013301,
        ["4013302"] = self.OnSubFinish4013302,
        ["4013303"] = self.OnSubFinish4013303,
        ["4013311"] = self.OnSubFinish4013311,
        ["4013312"] = self.OnSubFinish4013312,
        ["4013315"] = self.OnSubFinish4013315,
        ["4013316"] = self.OnSubFinish4013316,
        ["4013317"] = self.OnSubFinish4013317,
        ["4013319"] = self.OnSubFinish4013319,
        ["4013304"] = self.OnSubFinish4013304,
        ["4013305"] = self.OnSubFinish4013305,
        ["4013320"] = self.OnSubFinish4013320,
        ["4013306"] = self.OnSubFinish4013306,
        ["4013307"] = self.OnSubFinish4013307,
        ["4013308"] = self.OnSubFinish4013308,
        ["4013318"] = self.OnSubFinish4013318,
        ["4013309"] = self.OnSubFinish4013309,
        ["4013313"] = self.OnSubFinish4013313,
        ["4013314"] = self.OnSubFinish4013314
    }
end

function Quest40133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40133:Start()
    print("Start")
end

function Quest40133:OnDestroy()
    print("OnDestroy")
end

function Quest40133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40133:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc30439Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc30436Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30451Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30444Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5064Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5089Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5092Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4013301Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013316Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q4013317Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q4013319Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q4013320Trigger", 3, false)
    this:DestroyNpcTrigger("Q4013302N1035Trigger")
    this:DestroyNpcTrigger("Q4013303N2604Trigger")
    this:DestroyNpcTrigger("Q4013309N1081Trigger")
    this:DestroyNpcTrigger("Q4013317N1073Trigger")
    this:DestroyNpcTrigger("Q4013319N1081Trigger")
end

function Quest40133:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40133:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40133:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40133:OnSubStart4013310(arg1)
    print("OnSubStart4013310")
end

function Quest40133:OnSubFinish4013310(arg1)
    print("OnSubFinish4013310")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40133:OnSubStart4013301(arg1)
    print("OnSubStart4013301")
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2604Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013301Trigger", "Actor/Gadget/Q4013301Trigger", 70900002, 0, points.TPos_Q4013301Trigger.pos, points.TPos_Q4013301Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5089Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
end

function Quest40133:OnSubFinish4013301(arg1)
    print("OnSubFinish4013301")
    this:TransmitPlayerWithDialogTextByQuestId(4013301, 1, datas.DialogsId, 0.5)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(false)
    this:ActorDestroy("Q4013301Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc2604Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40133:OnSubStart4013302(arg1)
    print("OnSubStart4013302")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1035Data.id, 4013302, 0, 15, 1, true)
    end)
end

function Quest40133:OnSubFinish4013302(arg1)
    print("OnSubFinish4013302")
    this:TransmitPlayerWithDialogTextByQuestId(4013302, 1, datas.DialogsId, 0.5)
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
end

function Quest40133:OnSubStart4013303(arg1)
    print("OnSubStart4013303")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc2604Data.id, 4013303, 0, 30, 1, false)
    this:NotifyTo(npcs.Npc5089Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
end

function Quest40133:OnSubFinish4013303(arg1)
    print("OnSubFinish4013303")
    this:DestroyQuestNpcActor(npcs.Npc2604Data.alias, 3)
end

function Quest40133:OnSubStart4013311(arg1)
    print("OnSubStart4013311")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
    end)
end

function Quest40133:OnSubFinish4013311(arg1)
    print("OnSubFinish4013311")
end

function Quest40133:OnSubStart4013312(arg1)
    print("OnSubStart4013312")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30439Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40133:OnSubFinish4013312(arg1)
    print("OnSubFinish4013312")
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc30439Data.alias, 1084)
end

function Quest40133:OnSubStart4013315(arg1)
    print("OnSubStart4013315")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc2604Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30436Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1047Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):SitOnChair(8080, true)
        this:NotifyTo(npcs.Npc5089Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
    end)
end

function Quest40133:OnSubFinish4013315(arg1)
    print("OnSubFinish4013315")
end

function Quest40133:OnSubStart4013316(arg1)
    print("OnSubStart4013316")
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013316Trigger", "Actor/Gadget/Q4013316Trigger", 70900002, 0, points.TPos_Q4013316Trigger.pos, points.TPos_Q4013316Trigger.rot, true, false, 1084)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):SitOnChair(8080, true)
    this:NotifyTo(npcs.Npc5089Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
end

function Quest40133:OnSubFinish4013316(arg1)
    print("OnSubFinish4013316")
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(false)
    this:ActorDestroy("Q4013316Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1081Data.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc2604Data.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc30436Data.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc1073Data.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc1082Data.alias, 1084)
end

function Quest40133:OnSubStart4013317(arg1)
    print("OnSubStart4013317")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1073Data.id, 4013317, 0, 30, 1)
    end)

    this:NotifyTo(npcs.Npc5089Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
end

function Quest40133:OnSubFinish4013317(arg1)
    print("OnSubFinish4013317")
    this:TransmitPlayerWithDialogTextByQuestId(4013317, 1, datas.DialogsId, 0.5)
    this:LightNotifyTo(npcs.Npc5089Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5092Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093Data.alias, 0, true)
    this:DestroyQuestNpcActor(npcs.Npc1073Data.alias, 1084)
end

function Quest40133:OnSubStart4013319(arg1)
    print("OnSubStart4013319")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1081Data.id, 4013319, 0, 30, 1, false)
end

function Quest40133:OnSubFinish4013319(arg1)
    print("OnSubFinish4013319")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40133:OnSubStart4013304(arg1)
    print("OnSubStart4013304")
    this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5029Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40133:OnSubFinish4013304(arg1)
    print("OnSubFinish4013304")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
end

function Quest40133:OnSubStart4013305(arg1)
    print("OnSubStart4013305")
    this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5033Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40133:OnSubFinish4013305(arg1)
    print("OnSubFinish4013305")
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
end

function Quest40133:OnSubStart4013320(arg1)
    print("OnSubStart4013320")
    actorMgr:CreateActorWithPos("Q4013320Trigger", "Actor/Gadget/Q4013320Trigger", 70900002, 0, points.TPos_Q4013320Trigger.pos, points.TPos_Q4013320Trigger.rot, true, false, 3)
end

function Quest40133:OnSubFinish4013320(arg1)
    print("OnSubFinish4013320")
    this:ActorDestroy("Q4013320Trigger")
end

function Quest40133:OnSubStart4013306(arg1)
    print("OnSubStart4013306")
    this:CreateQuestNpc(arg1, npcs.Npc5064Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5064Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40133:OnSubFinish4013306(arg1)
    print("OnSubFinish4013306")
    this:SafeDestroyQuestNpc(npcs.Npc5064Data.alias, 3)
end

function Quest40133:OnSubStart4013307(arg1)
    print("OnSubStart4013307")
    this:CreateQuestNpc(arg1, npcs.Npc30444Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30444Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40133:OnSubFinish4013307(arg1)
    print("OnSubFinish4013307")
    this:SafeDestroyQuestNpc(npcs.Npc30444Data.alias, 3)
end

function Quest40133:OnSubStart4013308(arg1)
    print("OnSubStart4013308")
    this:CreateQuestNpc(arg1, npcs.Npc30451Data.id, 0)
end

function Quest40133:OnSubFinish4013308(arg1)
    print("OnSubFinish4013308")
end

function Quest40133:OnSubStart4013318(arg1)
    print("OnSubStart4013318")
end

function Quest40133:OnSubFinish4013318(arg1)
    print("OnSubFinish4013318")
    this:TransmitPlayerWithDialogTextByQuestId(4013318, 1, datas.DialogsId, 0.5)
    this:SafeDestroyQuestNpc(npcs.Npc30451Data.alias, 3)
end

function Quest40133:OnSubStart4013309(arg1)
    print("OnSubStart4013309")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013309, 0, 45, 1)
    end)
end

function Quest40133:OnSubFinish4013309(arg1)
    print("OnSubFinish4013309")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40133:OnSubStart4013313(arg1)
    print("OnSubStart4013313")
end

function Quest40133:OnSubFinish4013313(arg1)
    print("OnSubFinish4013313")
end

function Quest40133:OnSubStart4013314(arg1)
    print("OnSubStart4013314")
end

function Quest40133:OnSubFinish4013314(arg1)
    print("OnSubFinish4013314")
end

return Quest40133
