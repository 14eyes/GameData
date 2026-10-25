require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10003 = class("Quest10003", QuestActorProxy)
Quest10003.defaultAlias = "Quest10003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000301"] = self.OnSubStart1000301,
        ["1000313"] = self.OnSubStart1000313,
        ["1000302"] = self.OnSubStart1000302,
        ["1000303"] = self.OnSubStart1000303,
        ["1000304"] = self.OnSubStart1000304,
        ["1000305"] = self.OnSubStart1000305,
        ["1000306"] = self.OnSubStart1000306,
        ["1000307"] = self.OnSubStart1000307,
        ["1000308"] = self.OnSubStart1000308,
        ["1000316"] = self.OnSubStart1000316,
        ["1000309"] = self.OnSubStart1000309,
        ["1000315"] = self.OnSubStart1000315,
        ["1000310"] = self.OnSubStart1000310,
        ["1000314"] = self.OnSubStart1000314,
        ["1000311"] = self.OnSubStart1000311,
        ["1000317"] = self.OnSubStart1000317,
        ["1000312"] = self.OnSubStart1000312
    }
end

function Quest10003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000301"] = self.OnSubFinish1000301,
        ["1000313"] = self.OnSubFinish1000313,
        ["1000302"] = self.OnSubFinish1000302,
        ["1000303"] = self.OnSubFinish1000303,
        ["1000304"] = self.OnSubFinish1000304,
        ["1000305"] = self.OnSubFinish1000305,
        ["1000306"] = self.OnSubFinish1000306,
        ["1000307"] = self.OnSubFinish1000307,
        ["1000308"] = self.OnSubFinish1000308,
        ["1000316"] = self.OnSubFinish1000316,
        ["1000309"] = self.OnSubFinish1000309,
        ["1000315"] = self.OnSubFinish1000315,
        ["1000310"] = self.OnSubFinish1000310,
        ["1000314"] = self.OnSubFinish1000314,
        ["1000311"] = self.OnSubFinish1000311,
        ["1000317"] = self.OnSubFinish1000317,
        ["1000312"] = self.OnSubFinish1000312
    }
end

function Quest10003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1000309"] = self.OnSubFailed1000309,
        ["1000314"] = self.OnSubFailed1000314,
        ["1000311"] = self.OnSubFailed1000311,
        ["1000312"] = self.OnSubFailed1000312
    }
end

function Quest10003:Start()
    print("Start")
end

function Quest10003:OnDestroy()
    print("OnDestroy")
end

function Quest10003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10003:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000301Trigger")
    this:ActorDestroy("Q1000303Trigger")
    this:ActorDestroy("Q1000309Trigger")
    this:ActorDestroy("Q1000308Trigger")
    this:ActorDestroy("Q1000311Trigger")
end

function Quest10003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10003:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10003:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest10003:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest10003:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest10003:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10003:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest10003:OnSubStart1000301(arg1)
    print("OnSubStart1000301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000301, 0, 5, 1, npcs.Npc10011.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000301(arg1)
    print("OnSubFinish1000301")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 3)
end

function Quest10003:OnSubStart1000313(arg1)
    print("OnSubStart1000313")
    this:NpcCreateWithNpcTrigger(npcs.Npc30139.id, 0, 5, 1000313)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000313(arg1)
    print("OnSubFinish1000313")
end

function Quest10003:OnSubStart1000302(arg1)
    print("OnSubStart1000302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000302, 0, 5, 1, npcs.Npc10011.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000302(arg1)
    print("OnSubFinish1000302")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 3)
end

function Quest10003:OnSubStart1000303(arg1)
    print("OnSubStart1000303")
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000303(arg1)
    print("OnSubFinish1000303")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100039901, nil)
    end)
end

function Quest10003:OnSubStart1000304(arg1)
    print("OnSubStart1000304")
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000304(arg1)
    print("OnSubFinish1000304")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100039902, nil)
    end)
end

function Quest10003:OnSubStart1000305(arg1)
    print("OnSubStart1000305")
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000305(arg1)
    print("OnSubFinish1000305")
end

function Quest10003:OnSubStart1000306(arg1)
    print("OnSubStart1000306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000306, 0, 30, 1, npcs.Npc10011.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000306(arg1)
    print("OnSubFinish1000306")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 3)
end

function Quest10003:OnSubStart1000307(arg1)
    print("OnSubStart1000307")
    this:DailyNpcSafeHideSelf(npcs.Npc1624.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000307(arg1)
    print("OnSubFinish1000307")
end

function Quest10003:OnSubStart1000308(arg1)
    print("OnSubStart1000308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000308, 0, 30, 1, npcs.Npc10011.id)
    this:LightNotifyTo(npcs.Npc1624.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000308(arg1)
    print("OnSubFinish1000308")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc10011.alias)
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1766, 1277, 1000308, 1, datas.PlayerEnterDungeonData_10003, nil, nil)
    end)
end

function Quest10003:OnSubStart1000316(arg1)
    print("OnSubStart1000316")
    this:AfterInterCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1624.id, 0, false, 0)
        this:NotifyTo(npcs.Npc1463.alias, 1, true)
    end)
end

function Quest10003:OnSubFinish1000316(arg1)
    print("OnSubFinish1000316")
end

function Quest10003:OnSubStart1000309(arg1)
    print("OnSubStart1000309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000309, 0, 30, 1, npcs.Npc10011.id)
    this:CreateQuestNpc(arg1, npcs.Npc15873.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc1463.alias, true, 1)
end

function Quest10003:OnSubFinish1000309(arg1)
    print("OnSubFinish1000309")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20299)
    this:NpcDestroyImmediately(3, npcs.Npc30139.alias)
    this:LightNotifyTo(npcs.Npc1463.alias, 0, true)
end

function Quest10003:OnSubFailed1000309(arg1)
    print("OnSubFailed1000309")
    this:DestroyQuestNpcActor(npcs.Npc10011.alias, 20299)
    this:DestroyQuestNpcActor(npcs.Npc15873.alias, 20299)
    this:ClearNpcTriggerByQuestId(1000309)
end

function Quest10003:OnSubStart1000315(arg1)
    print("OnSubStart1000315")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15873.id, arg1)
end

function Quest10003:OnSubFinish1000315(arg1)
    print("OnSubFinish1000315")
end

function Quest10003:OnSubStart1000310(arg1)
    print("OnSubStart1000310")
end

function Quest10003:OnSubFinish1000310(arg1)
    print("OnSubFinish1000310")
end

function Quest10003:OnSubStart1000314(arg1)
    print("OnSubStart1000314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000314, 0, 30, 1, npcs.Npc10011.id)
end

function Quest10003:OnSubFinish1000314(arg1)
    print("OnSubFinish1000314")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20299)
end

function Quest10003:OnSubFailed1000314(arg1)
    print("OnSubFailed1000314")
    this:DestroyQuestNpcActor(npcs.Npc10011.alias, 20299)
    this:ClearNpcTriggerByQuestId(1000314)
end

function Quest10003:OnSubStart1000311(arg1)
    print("OnSubStart1000311")
    actorMgr:CreateActorWithPos("Q1000311Trigger", "Actor/Gadget/Q1000311Trigger", 70900002, 0, points._Q1000311TriggerPoint_.pos, points._Q1000311TriggerPoint_.rot, true, false, 20299)
    this:DeployStoryByQuest(121000301)
end

function Quest10003:OnSubFinish1000311(arg1)
    print("OnSubFinish1000311")
    this:CancelAllStory()
end

function Quest10003:OnSubFailed1000311(arg1)
    print("OnSubFailed1000311")
    this:DestroyQuestTrigger("Q1000311Trigger", false)
    this:CancelAllStory()
end

function Quest10003:OnSubStart1000317(arg1)
    print("OnSubStart1000317")
end

function Quest10003:OnSubFinish1000317(arg1)
    print("OnSubFinish1000317")
end

function Quest10003:OnSubStart1000312(arg1)
    print("OnSubStart1000312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000312, 0, 10, 0, npcs.Npc10011.id)
end

function Quest10003:OnSubFinish1000312(arg1)
    print("OnSubFinish1000312")
    this:NpcDestroyWithAfterIntercall(20299, npcs.Npc10011.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1624.alias)
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000031)
    end)
end

function Quest10003:OnSubFailed1000312(arg1)
    print("OnSubFailed1000312")
    this:DestroyQuestNpcActor(npcs.Npc10011.alias, 20299)
    this:ClearNpcTriggerByQuestId(1000312)
end

return Quest10003
