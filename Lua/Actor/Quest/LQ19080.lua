require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19080 = class("Quest19080", QuestActorProxy)
Quest19080.defaultAlias = "Quest19080"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19080:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908001"] = self.OnSubStart1908001,
        ["1908020"] = self.OnSubStart1908020,
        ["1908002"] = self.OnSubStart1908002,
        ["1908003"] = self.OnSubStart1908003,
        ["1908004"] = self.OnSubStart1908004,
        ["1908013"] = self.OnSubStart1908013,
        ["1908012"] = self.OnSubStart1908012,
        ["1908011"] = self.OnSubStart1908011,
        ["1908014"] = self.OnSubStart1908014,
        ["1908015"] = self.OnSubStart1908015,
        ["1908005"] = self.OnSubStart1908005,
        ["1908017"] = self.OnSubStart1908017,
        ["1908018"] = self.OnSubStart1908018,
        ["1908006"] = self.OnSubStart1908006,
        ["1908016"] = self.OnSubStart1908016,
        ["1908007"] = self.OnSubStart1908007,
        ["1908021"] = self.OnSubStart1908021,
        ["1908019"] = self.OnSubStart1908019,
        ["1908008"] = self.OnSubStart1908008,
        ["1908009"] = self.OnSubStart1908009
    }
end

function Quest19080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908001"] = self.OnSubFinish1908001,
        ["1908020"] = self.OnSubFinish1908020,
        ["1908002"] = self.OnSubFinish1908002,
        ["1908003"] = self.OnSubFinish1908003,
        ["1908004"] = self.OnSubFinish1908004,
        ["1908013"] = self.OnSubFinish1908013,
        ["1908012"] = self.OnSubFinish1908012,
        ["1908011"] = self.OnSubFinish1908011,
        ["1908014"] = self.OnSubFinish1908014,
        ["1908015"] = self.OnSubFinish1908015,
        ["1908005"] = self.OnSubFinish1908005,
        ["1908017"] = self.OnSubFinish1908017,
        ["1908018"] = self.OnSubFinish1908018,
        ["1908006"] = self.OnSubFinish1908006,
        ["1908016"] = self.OnSubFinish1908016,
        ["1908007"] = self.OnSubFinish1908007,
        ["1908021"] = self.OnSubFinish1908021,
        ["1908019"] = self.OnSubFinish1908019,
        ["1908008"] = self.OnSubFinish1908008,
        ["1908009"] = self.OnSubFinish1908009
    }
end

function Quest19080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19080:Start()
    print("Start")
end

function Quest19080:OnDestroy()
    print("OnDestroy")
end

function Quest19080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19080:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13308Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13340Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13319Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2102Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2056Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2011Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1626Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2036Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4122Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4129Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2010Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2102Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2011Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1626Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2036Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19080Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1908003TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1908004TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1908005TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1908007TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1908021TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1908001N516Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1908009N516Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1908016N516Trigger", 3, false)
    this:UnCallDelayByQuest("1908020")
    this:LightNotifyTo(npcs.Npc2041Data.alias, 0, true)
end

function Quest19080:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19080:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19080:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19080:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19080:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest19080:OnSubStart1908001(arg1)
    print("OnSubStart1908001")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908001)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1908001, 1, 5, 1)
    this:NpcCreate(arg1, npcs.Npc13304Data.id, 5)
    this:NpcCreate(arg1, npcs.Npc13305Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:NpcCreate(arg1, npcs.Npc13456Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19080:OnSubFinish1908001(arg1)
    print("OnSubFinish1908001")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
end

function Quest19080:OnSubStart1908020(arg1)
    print("OnSubStart1908020")
    this:CreateQuestNpc(arg1, npcs.Npc2020Data.id, 2)
    actorMgr:CreateActorWithPos("Q19080Trigger", "Actor/Gadget/Q19080Trigger", 70900002, 0, {x = -575.554, y = 229.065, z = 340.656}, {x = 0.0, y = 46.778, z = 0.0}, true, false, 3)
end

function Quest19080:OnSubFinish1908020(arg1)
    print("OnSubFinish1908020")
end

function Quest19080:OnSubStart1908002(arg1)
    print("OnSubStart1908002")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908002)
end

function Quest19080:OnSubFinish1908002(arg1)
    print("OnSubFinish1908002")
    this:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
end

function Quest19080:OnSubStart1908003(arg1)
    print("OnSubStart1908003")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908003)
    this:CreateQuestNpc(arg1, npcs.Npc2054Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908003(arg1)
    print("OnSubFinish1908003")
    this:SafeDestroyQuestNpc(npcs.Npc2054Data.alias, 3)
end

function Quest19080:OnSubStart1908004(arg1)
    print("OnSubStart1908004")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908004)
    this:CreateQuestNpc(arg1, npcs.Npc13340Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13319Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1908004TriggerRequest", "Actor/Gadget/Q1908004TriggerRequest", 70900002, 0, {x = -566.626, y = 240.0, z = 315.017}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2041Data.id, 2)
end

function Quest19080:OnSubFinish1908004(arg1)
    print("OnSubFinish1908004")
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
end

function Quest19080:OnSubStart1908013(arg1)
    print("OnSubStart1908013")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908013)
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908013(arg1)
    print("OnSubFinish1908013")
end

function Quest19080:OnSubStart1908012(arg1)
    print("OnSubStart1908012")
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908012(arg1)
    print("OnSubFinish1908012")
end

function Quest19080:OnSubStart1908011(arg1)
    print("OnSubStart1908011")
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908011(arg1)
    print("OnSubFinish1908011")
end

function Quest19080:OnSubStart1908014(arg1)
    print("OnSubStart1908014")
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908014(arg1)
    print("OnSubFinish1908014")
end

function Quest19080:OnSubStart1908015(arg1)
    print("OnSubStart1908015")
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13340Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13319Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908015(arg1)
    print("OnSubFinish1908015")
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19080:OnSubStart1908005(arg1)
    print("OnSubStart1908005")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908005)
    this:CreateQuestNpc(arg1, npcs.Npc2010Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1908005TriggerRequest", "Actor/Gadget/Q1908005TriggerRequest", 70900002, 0, {x = -569.671, y = 240.0, z = 316.595}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908005(arg1)
    print("OnSubFinish1908005")
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
end

function Quest19080:OnSubStart1908017(arg1)
    print("OnSubStart1908017")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908017)
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2041Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13319Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13340Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2010Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19080:OnSubFinish1908017(arg1)
    print("OnSubFinish1908017")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19080:OnSubStart1908018(arg1)
    print("OnSubStart1908018")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908018)
    this:GetQuestNpcActor(npcs.Npc2010Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908018(arg1)
    print("OnSubFinish1908018")
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
end

function Quest19080:OnSubStart1908006(arg1)
    print("OnSubStart1908006")
    this:CreateQuestNpc(arg1, npcs.Npc13340Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13319Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908006(arg1)
    print("OnSubFinish1908006")
    this:LightNotifyTo(npcs.Npc2010Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2011Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1626Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13340Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13319Data.alias, 3)
end

function Quest19080:OnSubStart1908016(arg1)
    print("OnSubStart1908016")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908016)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1908016, 1, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908016(arg1)
    print("OnSubFinish1908016")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19080:OnSubStart1908007(arg1)
    print("OnSubStart1908007")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908007)
    this:CreateQuestNpc(arg1, npcs.Npc13319Data.id, 5)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc2041Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13308Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13340Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2102Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc13308Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):SitOnChair(8060)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):SitOnChair(8040)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1908007TriggerRequest", "Actor/Gadget/Q1908007TriggerRequest", 70900002, 0, {x = -629.995, y = 228.313, z = 296.398}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19080:OnSubFinish1908007(arg1)
    print("OnSubFinish1908007")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2102Data.alias, 3)
end

function Quest19080:OnSubStart1908021(arg1)
    print("OnSubStart1908021")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908021)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2102Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1908021TriggerRequest", "Actor/Gadget/Q1908021TriggerRequest", 70900002, 0, points.TPos_Q1908021TriggerRequest.pos, points.TPos_Q1908021TriggerRequest.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):SitOnChair(8040, true)
end

function Quest19080:OnSubFinish1908021(arg1)
    print("OnSubFinish1908021")
    this:GetQuestNpcActor(npcs.Npc13308Data.alias):StandFromChairEx(90)
    this:LightNotifyTo(npcs.Npc2102Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
end

function Quest19080:OnSubStart1908019(arg1)
    print("OnSubStart1908019")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908019)
    this:NpcCreateWithBlackscreen(arg1, npcs.Coop_KaeyaData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13308Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13340Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13319Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2102Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13308Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2102Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13340Data.alias):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc13319Data.alias):SitOnChair(8040, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908019(arg1)
    print("OnSubFinish1908019")
    this:SafeDestroyQuestNpc(npcs.Npc13340Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13319Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13308Data.alias, 3)
end

function Quest19080:OnSubStart1908008(arg1)
    print("OnSubStart1908008")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908008)
    this:CreateQuestNpc(arg1, npcs.Npc2041Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc2102Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2041Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19080:OnSubFinish1908008(arg1)
    print("OnSubFinish1908008")
    this:LightNotifyTo(npcs.Npc2036Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2102Data.alias, 3)
end

function Quest19080:OnSubStart1908009(arg1)
    print("OnSubStart1908009")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1908009)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1908009, 1, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2041Data.alias, 1, true)
end

function Quest19080:OnSubFinish1908009(arg1)
    print("OnSubFinish1908009")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:LightNotifyTo(npcs.Npc2041Data.alias, 0, true)
end

return Quest19080
