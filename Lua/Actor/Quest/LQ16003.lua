require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16003 = class("Quest16003", QuestActorProxy)
Quest16003.defaultAlias = "Quest16003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600301"] = self.OnSubStart1600301,
        ["1600302"] = self.OnSubStart1600302,
        ["1600303"] = self.OnSubStart1600303,
        ["1600322"] = self.OnSubStart1600322,
        ["1600304"] = self.OnSubStart1600304,
        ["1600305"] = self.OnSubStart1600305,
        ["1600306"] = self.OnSubStart1600306,
        ["1600308"] = self.OnSubStart1600308,
        ["1600312"] = self.OnSubStart1600312,
        ["1600315"] = self.OnSubStart1600315,
        ["1600319"] = self.OnSubStart1600319,
        ["1600320"] = self.OnSubStart1600320,
        ["1600321"] = self.OnSubStart1600321,
        ["1600307"] = self.OnSubStart1600307,
        ["1600309"] = self.OnSubStart1600309,
        ["1600323"] = self.OnSubStart1600323,
        ["1600313"] = self.OnSubStart1600313,
        ["1600314"] = self.OnSubStart1600314,
        ["1600316"] = self.OnSubStart1600316,
        ["1600317"] = self.OnSubStart1600317,
        ["1600318"] = self.OnSubStart1600318,
        ["1600310"] = self.OnSubStart1600310,
        ["1600311"] = self.OnSubStart1600311
    }
end

function Quest16003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600301"] = self.OnSubFinish1600301,
        ["1600302"] = self.OnSubFinish1600302,
        ["1600303"] = self.OnSubFinish1600303,
        ["1600322"] = self.OnSubFinish1600322,
        ["1600304"] = self.OnSubFinish1600304,
        ["1600305"] = self.OnSubFinish1600305,
        ["1600306"] = self.OnSubFinish1600306,
        ["1600308"] = self.OnSubFinish1600308,
        ["1600312"] = self.OnSubFinish1600312,
        ["1600315"] = self.OnSubFinish1600315,
        ["1600319"] = self.OnSubFinish1600319,
        ["1600320"] = self.OnSubFinish1600320,
        ["1600321"] = self.OnSubFinish1600321,
        ["1600307"] = self.OnSubFinish1600307,
        ["1600309"] = self.OnSubFinish1600309,
        ["1600323"] = self.OnSubFinish1600323,
        ["1600313"] = self.OnSubFinish1600313,
        ["1600314"] = self.OnSubFinish1600314,
        ["1600316"] = self.OnSubFinish1600316,
        ["1600317"] = self.OnSubFinish1600317,
        ["1600318"] = self.OnSubFinish1600318,
        ["1600310"] = self.OnSubFinish1600310,
        ["1600311"] = self.OnSubFinish1600311
    }
end

function Quest16003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600308"] = self.OnSubFailed1600308,
        ["1600312"] = self.OnSubFailed1600312,
        ["1600315"] = self.OnSubFailed1600315,
        ["1600319"] = self.OnSubFailed1600319,
        ["1600320"] = self.OnSubFailed1600320,
        ["1600309"] = self.OnSubFailed1600309,
        ["1600313"] = self.OnSubFailed1600313,
        ["1600316"] = self.OnSubFailed1600316
    }
end

function Quest16003:Start()
    print("Start")
end

function Quest16003:OnDestroy()
    print("OnDestroy")
end

function Quest16003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16003:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600306Trigger")
    this:ActorDestroy("Q1600322Trigger")
    this:ActorDestroy("Q1600310Trigger")
    this:ActorDestroy("Q1600318Trigger")
    this:ActorDestroy("Q1600318Trigger_1")
    this:ActorDestroy("Q1600318Trigger_2")
    this:ActorDestroy("Q1600314Trigger")
    this:ActorDestroy("Q1600317Trigger")
    this:ActorDestroy("Q1600311Trigger")
    this:ActorDestroy("Q1600309Trigger")
    this:ActorDestroy("Q1600316Trigger")
    this:ActorDestroy("Q1600313Trigger")
    this:ActorDestroy("Q1600307Trigger")
end

function Quest16003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1600323)
    end
end

function Quest16003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest16003:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16003:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16003:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16003:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16003:OnSubStart1600301(arg1)
    print("OnSubStart1600301")
    actorUtils.FinishQuestID(false, 1600301)
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Qin16002")
        actorMgr:DestroyNpcActorByAlias("Gaia16002")
        actorMgr:DestroyNpcActorByAlias("Lisa16002")
    end)
end

function Quest16003:OnSubFinish1600301(arg1)
    print("OnSubFinish1600301")
    this:QuestNarratorTask(datas.NarratorWithId_1600301, nil)
    this:SetNavigationByMainId(16003, true)
end

function Quest16003:OnSubStart1600302(arg1)
    print("OnSubStart1600302")
    this:AfterInterCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 10, 1600302)
        this:GetQuestNpcActor(npcs.Qin.alias, 16003):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Qin.alias, 16003):SitOnChair(8013, true)
    end)
end

function Quest16003:OnSubFinish1600302(arg1)
    print("OnSubFinish1600302")
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 3)
    this:ClearNarratorTask()
end

function Quest16003:OnSubStart1600303(arg1)
    print("OnSubStart1600303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600303, 0, 20, 1, npcs.Npc1320.id)
end

function Quest16003:OnSubFinish1600303(arg1)
    print("OnSubFinish1600303")
    this:NpcDestroyImmediately(1073, npcs.Npc1320.alias)
end

function Quest16003:OnSubStart1600322(arg1)
    print("OnSubStart1600322")
    actorMgr:CreateActorWithPos("Q1600322Trigger", "Actor/Gadget/Q1600322Trigger", 70900002, 0, points._Q1600322TriggerPoint_.pos, points._Q1600322TriggerPoint_.rot, true, false, 1073)
end

function Quest16003:OnSubFinish1600322(arg1)
    print("OnSubFinish1600322")
    this:ActorDestroy("Q1600322Trigger")
end

function Quest16003:OnSubStart1600304(arg1)
    print("OnSubStart1600304")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600304, true, 1600304)
    this:CreateQuestNpc(arg1, npcs.Npc15877.id, 0, false, 0)
end

function Quest16003:OnSubFinish1600304(arg1)
    print("OnSubFinish1600304")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16003:OnSubStart1600305(arg1)
    print("OnSubStart1600305")
    this:NpcCreateWithNpcTrigger(npcs.Npc15877.id, 0, 15, 1600305)
end

function Quest16003:OnSubFinish1600305(arg1)
    print("OnSubFinish1600305")
end

function Quest16003:OnSubStart1600306(arg1)
    print("OnSubStart1600306")
    this:CreateQuestNpc(arg1, npcs.Npc15938.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1600306Trigger", "Actor/Gadget/Q1600306Trigger", 70900002, 0, points._Q1600306TriggerPoint_.pos, points._Q1600306TriggerPoint_.rot, true, false, 20297)
    this:CancelRangeStoryByQuest(121600304)
    this:CancelRangeStoryByQuest(121600303)
end

function Quest16003:OnSubFinish1600306(arg1)
    print("OnSubFinish1600306")
    this:SafeDestroyQuestNpc(npcs.Npc15938.alias, 20297)
    if this:GetQuestGlobalVar(1600304) == 2 then
        if this:GetQuestVar(1600306, 1) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId_1600306, nil)
            this:SetQuestVarByMainId(1, 1)
        end
    end
end

function Quest16003:OnSubStart1600308(arg1)
    print("OnSubStart1600308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600308, 0, 10, 1, npcs.Npc15972.id)
end

function Quest16003:OnSubFinish1600308(arg1)
    print("OnSubFinish1600308")
    this:SafeDestroyQuestNpc(npcs.Npc15972.alias, 20297)
end

function Quest16003:OnSubFailed1600308(arg1)
    print("OnSubFailed1600308")
    this:ClearNpcTriggerByQuestId(1600308)
    this:SafeDestroyQuestNpc(npcs.Npc15972.alias, 20297)
end

function Quest16003:OnSubStart1600312(arg1)
    print("OnSubStart1600312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600312, 0, 7, 1, npcs.Npc15973.id)
end

function Quest16003:OnSubFinish1600312(arg1)
    print("OnSubFinish1600312")
    this:SafeDestroyQuestNpc(npcs.Npc15973.alias, 20297)
end

function Quest16003:OnSubFailed1600312(arg1)
    print("OnSubFailed1600312")
    this:ClearNpcTriggerByQuestId(1600312)
    this:SafeDestroyQuestNpc(npcs.Npc15973.alias, 20297)
end

function Quest16003:OnSubStart1600315(arg1)
    print("OnSubStart1600315")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600315, 0, 5, 1, npcs.Npc15974.id)
end

function Quest16003:OnSubFinish1600315(arg1)
    print("OnSubFinish1600315")
    this:SafeDestroyQuestNpc(npcs.Npc15974.alias, 20297)
end

function Quest16003:OnSubFailed1600315(arg1)
    print("OnSubFailed1600315")
    this:ClearNpcTriggerByQuestId(1600315)
    this:SafeDestroyQuestNpc(npcs.Npc15974.alias, 20297)
end

function Quest16003:OnSubStart1600319(arg1)
    print("OnSubStart1600319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600319, 0, 7, 1, npcs.Npc15973.id)
end

function Quest16003:OnSubFinish1600319(arg1)
    print("OnSubFinish1600319")
    this:SafeDestroyQuestNpc(npcs.Npc15973.alias, 20297)
end

function Quest16003:OnSubFailed1600319(arg1)
    print("OnSubFailed1600319")
    this:ClearNpcTriggerByQuestId(1600319)
    this:NpcDestroyImmediately(20297, npcs.Npc15973.alias)
end

function Quest16003:OnSubStart1600320(arg1)
    print("OnSubStart1600320")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600320, 0, 7, 1, npcs.Npc15974.id)
end

function Quest16003:OnSubFinish1600320(arg1)
    print("OnSubFinish1600320")
    this:SafeDestroyQuestNpc(npcs.Npc15974.alias, 20297)
end

function Quest16003:OnSubFailed1600320(arg1)
    print("OnSubFailed1600320")
    this:ClearNpcTriggerByQuestId(1600320)
    this:NpcDestroyImmediately(20297, npcs.Npc15974.alias)
end

function Quest16003:OnSubStart1600321(arg1)
    print("OnSubStart1600321")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600321, true, 1600324)
end

function Quest16003:OnSubFinish1600321(arg1)
    print("OnSubFinish1600321")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16003:OnSubStart1600307(arg1)
    print("OnSubStart1600307")
    this:DeployRangeStoryByQuest(121600300, 20297, {x = 346.013, y = 30.625, z = 813.286}, 160, 200)
    actorMgr:CreateActorWithPos("Q1600307Trigger", "Actor/Gadget/Q1600307Trigger", 70900002, 0, points._Q1600307TriggerPoint_.pos, points._Q1600307TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600307(arg1)
    print("OnSubFinish1600307")
    this:CancelRangeStoryByQuest(121600300)
    this:ActorDestroy("Q1600307Trigger")
end

function Quest16003:OnSubStart1600309(arg1)
    print("OnSubStart1600309")
    this:CreateQuestNpc(arg1, npcs.Npc15951.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121600302, 20297, {x = 441.564, y = 46.913, z = 863.179}, 100, 120)
    actorMgr:CreateActorWithPos("Q1600309Trigger", "Actor/Gadget/Q1600309Trigger", 70900002, 0, points._Q1600309TriggerPoint_.pos, points._Q1600309TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600309(arg1)
    print("OnSubFinish1600309")
    this:NpcDestroyImmediately(20297, npcs.Npc15951.alias)
    this:ActorDestroy("Q1600309Trigger")
    this:CancelAllStory()
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16003:OnSubFailed1600309(arg1)
    print("OnSubFailed1600309")
    this:NpcDestroyImmediately(20297, npcs.Npc15951.alias)
    this:CancelRangeStoryByQuest(121600302)
    this:ActorDestroy("Q1600309Trigger")
end

function Quest16003:OnSubStart1600323(arg1)
    print("OnSubStart1600323")
end

function Quest16003:OnSubFinish1600323(arg1)
    print("OnSubFinish1600323")
end

function Quest16003:OnSubStart1600313(arg1)
    print("OnSubStart1600313")
    this:DeployRangeStoryByQuest(121600304, 20297, {x = 294.936, y = 37.909, z = 818.533}, 100, 120)
    actorMgr:CreateActorWithPos("Q1600313Trigger", "Actor/Gadget/Q1600313Trigger", 70900002, 0, points._Q1600313TriggerPoint_.pos, points._Q1600313TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600313(arg1)
    print("OnSubFinish1600313")
    this:ActorDestroy("Q1600313Trigger")
end

function Quest16003:OnSubFailed1600313(arg1)
    print("OnSubFailed1600313")
    this:CancelRangeStoryByQuest(121600304)
    this:ActorDestroy("Q1600313Trigger")
end

function Quest16003:OnSubStart1600314(arg1)
    print("OnSubStart1600314")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600314, true, 1600314)
    actorMgr:CreateActorWithPos("Q1600314Trigger", "Actor/Gadget/Q1600314Trigger", 70900002, 0, points._Q1600314TriggerPoint_.pos, points._Q1600314TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600314(arg1)
    print("OnSubFinish1600314")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ActorDestroy("Q1600314Trigger")
end

function Quest16003:OnSubStart1600316(arg1)
    print("OnSubStart1600316")
    this:DeployRangeStoryByQuest(121600303, 20297, {x = 369.742, y = 19.173, z = 781.231}, 100, 120)
    actorMgr:CreateActorWithPos("Q1600316Trigger", "Actor/Gadget/Q1600316Trigger", 70900002, 0, points._Q1600316TriggerPoint_.pos, points._Q1600316TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600316(arg1)
    print("OnSubFinish1600316")
    this:ActorDestroy("Q1600316Trigger")
end

function Quest16003:OnSubFailed1600316(arg1)
    print("OnSubFailed1600316")
    this:CancelRangeStoryByQuest(121600303)
    this:ActorDestroy("Q1600316Trigger")
end

function Quest16003:OnSubStart1600317(arg1)
    print("OnSubStart1600317")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600317, true, 1600317)
    actorMgr:CreateActorWithPos("Q1600317Trigger", "Actor/Gadget/Q1600317Trigger", 70900002, 0, points._Q1600317TriggerPoint_.pos, points._Q1600317TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600317(arg1)
    print("OnSubFinish1600317")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ActorDestroy("Q1600317Trigger")
end

function Quest16003:OnSubStart1600318(arg1)
    print("OnSubStart1600318")
    actorMgr:CreateActorWithPos("Q1600318Trigger", "Actor/Gadget/Q1600318Trigger", 70900002, 0, points._Q1600318TriggerPoint_.pos, points._Q1600318TriggerPoint_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600318Trigger_1", "Actor/Gadget/Q1600318Trigger_1", 70900002, 0, points._Q1600318Trigger_1Point_.pos, points._Q1600318Trigger_1Point_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600318Trigger_2", "Actor/Gadget/Q1600318Trigger_2", 70900002, 0, points._Q1600318Trigger_2Point_.pos, points._Q1600318Trigger_2Point_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600318(arg1)
    print("OnSubFinish1600318")
    this:ActorDestroy("Q1600318Trigger")
    this:ActorDestroy("Q1600318Trigger_1")
    this:ActorDestroy("Q1600318Trigger_2")
end

function Quest16003:OnSubStart1600310(arg1)
    print("OnSubStart1600310")
end

function Quest16003:OnSubFinish1600310(arg1)
    print("OnSubFinish1600310")
end

function Quest16003:OnSubStart1600311(arg1)
    print("OnSubStart1600311")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600311, true, 1600311)
    actorMgr:CreateActorWithPos("Q1600311Trigger", "Actor/Gadget/Q1600311Trigger", 70900002, 0, points._Q1600311TriggerPoint_.pos, points._Q1600311TriggerPoint_.rot, true, false, 20297)
end

function Quest16003:OnSubFinish1600311(arg1)
    print("OnSubFinish1600311")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 1073)
    this:ActorDestroy("Q1600311Trigger")
end

return Quest16003
