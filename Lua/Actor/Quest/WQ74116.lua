require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74116 = class("Quest74116", QuestActorProxy)
Quest74116.defaultAlias = "Quest74116"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74116:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411647"] = self.OnSubStart7411647,
        ["7411601"] = self.OnSubStart7411601,
        ["7411602"] = self.OnSubStart7411602,
        ["7411603"] = self.OnSubStart7411603,
        ["7411604"] = self.OnSubStart7411604,
        ["7411605"] = self.OnSubStart7411605,
        ["7411606"] = self.OnSubStart7411606,
        ["7411607"] = self.OnSubStart7411607,
        ["7411608"] = self.OnSubStart7411608,
        ["7411609"] = self.OnSubStart7411609,
        ["7411610"] = self.OnSubStart7411610,
        ["7411638"] = self.OnSubStart7411638,
        ["7411639"] = self.OnSubStart7411639,
        ["7411611"] = self.OnSubStart7411611,
        ["7411612"] = self.OnSubStart7411612,
        ["7411640"] = self.OnSubStart7411640,
        ["7411613"] = self.OnSubStart7411613,
        ["7411614"] = self.OnSubStart7411614,
        ["7411615"] = self.OnSubStart7411615,
        ["7411616"] = self.OnSubStart7411616,
        ["7411617"] = self.OnSubStart7411617,
        ["7411618"] = self.OnSubStart7411618,
        ["7411619"] = self.OnSubStart7411619,
        ["7411636"] = self.OnSubStart7411636,
        ["7411648"] = self.OnSubStart7411648,
        ["7411620"] = self.OnSubStart7411620,
        ["7411621"] = self.OnSubStart7411621,
        ["7411622"] = self.OnSubStart7411622,
        ["7411623"] = self.OnSubStart7411623,
        ["7411624"] = self.OnSubStart7411624,
        ["7411625"] = self.OnSubStart7411625,
        ["7411626"] = self.OnSubStart7411626,
        ["7411627"] = self.OnSubStart7411627,
        ["7411628"] = self.OnSubStart7411628,
        ["7411629"] = self.OnSubStart7411629,
        ["7411630"] = self.OnSubStart7411630,
        ["7411631"] = self.OnSubStart7411631,
        ["7411649"] = self.OnSubStart7411649,
        ["7411641"] = self.OnSubStart7411641,
        ["7411632"] = self.OnSubStart7411632,
        ["7411633"] = self.OnSubStart7411633,
        ["7411634"] = self.OnSubStart7411634,
        ["7411637"] = self.OnSubStart7411637,
        ["7411635"] = self.OnSubStart7411635,
        ["7411645"] = self.OnSubStart7411645,
        ["7411642"] = self.OnSubStart7411642,
        ["7411643"] = self.OnSubStart7411643,
        ["7411644"] = self.OnSubStart7411644,
        ["7411646"] = self.OnSubStart7411646
    }
end

function Quest74116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411647"] = self.OnSubFinish7411647,
        ["7411601"] = self.OnSubFinish7411601,
        ["7411602"] = self.OnSubFinish7411602,
        ["7411603"] = self.OnSubFinish7411603,
        ["7411604"] = self.OnSubFinish7411604,
        ["7411605"] = self.OnSubFinish7411605,
        ["7411606"] = self.OnSubFinish7411606,
        ["7411607"] = self.OnSubFinish7411607,
        ["7411608"] = self.OnSubFinish7411608,
        ["7411609"] = self.OnSubFinish7411609,
        ["7411610"] = self.OnSubFinish7411610,
        ["7411638"] = self.OnSubFinish7411638,
        ["7411639"] = self.OnSubFinish7411639,
        ["7411611"] = self.OnSubFinish7411611,
        ["7411612"] = self.OnSubFinish7411612,
        ["7411640"] = self.OnSubFinish7411640,
        ["7411613"] = self.OnSubFinish7411613,
        ["7411614"] = self.OnSubFinish7411614,
        ["7411615"] = self.OnSubFinish7411615,
        ["7411616"] = self.OnSubFinish7411616,
        ["7411617"] = self.OnSubFinish7411617,
        ["7411618"] = self.OnSubFinish7411618,
        ["7411619"] = self.OnSubFinish7411619,
        ["7411636"] = self.OnSubFinish7411636,
        ["7411648"] = self.OnSubFinish7411648,
        ["7411620"] = self.OnSubFinish7411620,
        ["7411621"] = self.OnSubFinish7411621,
        ["7411622"] = self.OnSubFinish7411622,
        ["7411623"] = self.OnSubFinish7411623,
        ["7411624"] = self.OnSubFinish7411624,
        ["7411625"] = self.OnSubFinish7411625,
        ["7411626"] = self.OnSubFinish7411626,
        ["7411627"] = self.OnSubFinish7411627,
        ["7411628"] = self.OnSubFinish7411628,
        ["7411629"] = self.OnSubFinish7411629,
        ["7411630"] = self.OnSubFinish7411630,
        ["7411631"] = self.OnSubFinish7411631,
        ["7411649"] = self.OnSubFinish7411649,
        ["7411641"] = self.OnSubFinish7411641,
        ["7411632"] = self.OnSubFinish7411632,
        ["7411633"] = self.OnSubFinish7411633,
        ["7411634"] = self.OnSubFinish7411634,
        ["7411637"] = self.OnSubFinish7411637,
        ["7411635"] = self.OnSubFinish7411635,
        ["7411645"] = self.OnSubFinish7411645,
        ["7411642"] = self.OnSubFinish7411642,
        ["7411643"] = self.OnSubFinish7411643,
        ["7411644"] = self.OnSubFinish7411644,
        ["7411646"] = self.OnSubFinish7411646
    }
end

function Quest74116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74116:Start()
    print("Start")
end

function Quest74116:OnDestroy()
    print("OnDestroy")
end

function Quest74116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74116:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74116:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74116:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74116:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74116:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74116:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74116:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74116:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74116:OnSubStart7411647(arg1)
    print("OnSubStart7411647")
end

function Quest74116:OnSubFinish7411647(arg1)
    print("OnSubFinish7411647")
end

function Quest74116:OnSubStart7411601(arg1)
    print("OnSubStart7411601")
    this:CreateQuestNpc(arg1, npcs.Npc21170Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411601Trigger", "Actor/Gadget/Q7411601Trigger", 70900002, 0, points.TPos_Q7411601Trigger.pos, points.TPos_Q7411601Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411601(arg1)
    print("OnSubFinish7411601")
end

function Quest74116:OnSubStart7411602(arg1)
    print("OnSubStart7411602")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21170Data.id, 0, npcs.Npc21170Data.alias)
end

function Quest74116:OnSubFinish7411602(arg1)
    print("OnSubFinish7411602")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11322)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc21170Data.alias)
end

function Quest74116:OnSubStart7411603(arg1)
    print("OnSubStart7411603")
    actorMgr:CreateActorWithPos("Q7411603Trigger", "Actor/Gadget/Q7411603Trigger", 70900002, 0, points.TPos_Q7411603Trigger.pos, points.TPos_Q7411603Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411603(arg1)
    print("OnSubFinish7411603")
end

function Quest74116:OnSubStart7411604(arg1)
    print("OnSubStart7411604")
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21162Data.id, 0, npcs.Npc21162Data.alias)
end

function Quest74116:OnSubFinish7411604(arg1)
    print("OnSubFinish7411604")
end

function Quest74116:OnSubStart7411605(arg1)
    print("OnSubStart7411605")
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0)
end

function Quest74116:OnSubFinish7411605(arg1)
    print("OnSubFinish7411605")
end

function Quest74116:OnSubStart7411606(arg1)
    print("OnSubStart7411606")
end

function Quest74116:OnSubFinish7411606(arg1)
    print("OnSubFinish7411606")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7411606)
end

function Quest74116:OnSubStart7411607(arg1)
    print("OnSubStart7411607")
end

function Quest74116:OnSubFinish7411607(arg1)
    print("OnSubFinish7411607")
end

function Quest74116:OnSubStart7411608(arg1)
    print("OnSubStart7411608")
    this:CreateQuestNpc(arg1, npcs.Npc21164Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21163Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411608Trigger", "Actor/Gadget/Q7411608Trigger", 70900002, 0, points.TPos_Q7411608Trigger.pos, points.TPos_Q7411608Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411608(arg1)
    print("OnSubFinish7411608")
    this:ActorDestroy("Q7411608Trigger")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21164Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
end

function Quest74116:OnSubStart7411609(arg1)
    print("OnSubStart7411609")
end

function Quest74116:OnSubFinish7411609(arg1)
    print("OnSubFinish7411609")
end

function Quest74116:OnSubStart7411610(arg1)
    print("OnSubStart7411610")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21161Data.id, 0, npcs.Npc21161Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21164Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21163Data.id, 0)
end

function Quest74116:OnSubFinish7411610(arg1)
    print("OnSubFinish7411610")
end

function Quest74116:OnSubStart7411638(arg1)
    print("OnSubStart7411638")
end

function Quest74116:OnSubFinish7411638(arg1)
    print("OnSubFinish7411638")
end

function Quest74116:OnSubStart7411639(arg1)
    print("OnSubStart7411639")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21161Data.id, 0, npcs.Npc21161Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21164Data.id, 0)
end

function Quest74116:OnSubFinish7411639(arg1)
    print("OnSubFinish7411639")
    this:SafeDestroyQuestNpc(npcs.Npc21164Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
end

function Quest74116:OnSubStart7411611(arg1)
    print("OnSubStart7411611")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21169Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21295Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21296Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411611Trigger", "Actor/Gadget/Q7411611Trigger", 70900002, 0, points.TPos_Q7411611Trigger.pos, points.TPos_Q7411611Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411611(arg1)
    print("OnSubFinish7411611")
    this:ActorDestroy("Q7411611Trigger")
end

function Quest74116:OnSubStart7411612(arg1)
    print("OnSubStart7411612")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
end

function Quest74116:OnSubFinish7411612(arg1)
    print("OnSubFinish7411612")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21169Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21295Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21296Data.alias, 3)
end

function Quest74116:OnSubStart7411640(arg1)
    print("OnSubStart7411640")
end

function Quest74116:OnSubFinish7411640(arg1)
    print("OnSubFinish7411640")
end

function Quest74116:OnSubStart7411613(arg1)
    print("OnSubStart7411613")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21169Data.id, 0, npcs.Npc21169Data.alias)
end

function Quest74116:OnSubFinish7411613(arg1)
    print("OnSubFinish7411613")
end

function Quest74116:OnSubStart7411614(arg1)
    print("OnSubStart7411614")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21167Data.id, 0)
    this:CallDelayByQuest("1", 1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21167Data.alias, 74116)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData7411614)
        actorMgr:CreateActorWithPos("Q7411614Trigger", "Actor/Gadget/Q7411614Trigger", 70900002, 0, {x = 2716.249, y = 547.983, z = 3362.998}, {x = 0, y = 0, z = 0}, true, false, 3, nil, 0, 0)
    end)
end

function Quest74116:OnSubFinish7411614(arg1)
    print("OnSubFinish7411614")
    this:ActorDestroy("Q7411614Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21167Data.alias, 3)
end

function Quest74116:OnSubStart7411615(arg1)
    print("OnSubStart7411615")
    actorMgr:CreateActorWithPos("Q7411615Trigger", "Actor/Gadget/Q7411615Trigger", 70900002, 0, points.TPos_Q7411615Trigger.pos, points.TPos_Q7411615Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411615(arg1)
    print("OnSubFinish7411615")
end

function Quest74116:OnSubStart7411616(arg1)
    print("OnSubStart7411616")
end

function Quest74116:OnSubFinish7411616(arg1)
    print("OnSubFinish7411616")
end

function Quest74116:OnSubStart7411617(arg1)
    print("OnSubStart7411617")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411617(arg1)
    print("OnSubFinish7411617")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74116:OnSubStart7411618(arg1)
    print("OnSubStart7411618")
    actorMgr:CreateActorWithPos("Q7411618Trigger", "Actor/Gadget/Q7411618Trigger", 70900002, 0, points.TPos_Q7411618Trigger.pos, points.TPos_Q7411618Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411618(arg1)
    print("OnSubFinish7411618")
end

function Quest74116:OnSubStart7411619(arg1)
    print("OnSubStart7411619")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411619(arg1)
    print("OnSubFinish7411619")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74116:OnSubStart7411636(arg1)
    print("OnSubStart7411636")
    actorMgr:CreateActorWithPos("Q7411636Trigger", "Actor/Gadget/Q7411636Trigger", 70900002, 0, points.TPos_Q7411636Trigger.pos, points.TPos_Q7411636Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411636(arg1)
    print("OnSubFinish7411636")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7411636)
end

function Quest74116:OnSubStart7411648(arg1)
    print("OnSubStart7411648")
    actorMgr:CreateActorWithPos("Q7411648Trigger", "Actor/Gadget/Q7411648Trigger", 70900002, 0, points.TPos_Q7411648Trigger.pos, points.TPos_Q7411648Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411648(arg1)
    print("OnSubFinish7411648")
    this:ActorDestroy("Q7411648Trigger")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7411648)
end

function Quest74116:OnSubStart7411620(arg1)
    print("OnSubStart7411620")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411620Trigger", "Actor/Gadget/Q7411620Trigger", 70900002, 0, points.TPos_Q7411620Trigger.pos, points.TPos_Q7411620Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411620(arg1)
    print("OnSubFinish7411620")
    this:ActorDestroy("Q7411620Trigger")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21158Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21160Data.alias)
end

function Quest74116:OnSubStart7411621(arg1)
    print("OnSubStart7411621")
    this:CreateQuestNpc(arg1, npcs.Npc21282Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21327Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21329Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21328Data.id, 0)
end

function Quest74116:OnSubFinish7411621(arg1)
    print("OnSubFinish7411621")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21158Data.id, 0)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21160Data.id, 0)
    this:SafeDestroyQuestNpc(npcs.Npc21282Data.alias, 3)
end

function Quest74116:OnSubStart7411622(arg1)
    print("OnSubStart7411622")
    actorMgr:CreateActorWithPos("Q7411622Trigger", "Actor/Gadget/Q7411622Trigger", 70900002, 0, points.TPos_Q7411622Trigger.pos, points.TPos_Q7411622Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411622(arg1)
    print("OnSubFinish7411622")
end

function Quest74116:OnSubStart7411623(arg1)
    print("OnSubStart7411623")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21159Data.id, 0, npcs.Npc21159Data.alias)
end

function Quest74116:OnSubFinish7411623(arg1)
    print("OnSubFinish7411623")
    this:NPCDestroyImmediately(npcs.Npc21159Data.alias, 3)
end

function Quest74116:OnSubStart7411624(arg1)
    print("OnSubStart7411624")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411624(arg1)
    print("OnSubFinish7411624")
end

function Quest74116:OnSubStart7411625(arg1)
    print("OnSubStart7411625")
    actorMgr:CreateActorWithPos("Q7411625Trigger", "Actor/Gadget/Q7411625Trigger", 70900002, 0, points.TPos_Q7411625Trigger.pos, points.TPos_Q7411625Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411625(arg1)
    print("OnSubFinish7411625")
end

function Quest74116:OnSubStart7411626(arg1)
    print("OnSubStart7411626")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21159Data.id, 0, npcs.Npc21159Data.alias)
end

function Quest74116:OnSubFinish7411626(arg1)
    print("OnSubFinish7411626")
    this:NPCDestroyImmediately(npcs.Npc21159Data.alias, 3)
end

function Quest74116:OnSubStart7411627(arg1)
    print("OnSubStart7411627")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411627(arg1)
    print("OnSubFinish7411627")
end

function Quest74116:OnSubStart7411628(arg1)
    print("OnSubStart7411628")
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411628Trigger", "Actor/Gadget/Q7411628Trigger", 70900002, 0, points.TPos_Q7411628Trigger.pos, points.TPos_Q7411628Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411628(arg1)
    print("OnSubFinish7411628")
end

function Quest74116:OnSubStart7411629(arg1)
    print("OnSubStart7411629")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21160Data.id, 0, npcs.Npc21160Data.alias)
end

function Quest74116:OnSubFinish7411629(arg1)
    print("OnSubFinish7411629")
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74116:OnSubStart7411630(arg1)
    print("OnSubStart7411630")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
end

function Quest74116:OnSubFinish7411630(arg1)
    print("OnSubFinish7411630")
end

function Quest74116:OnSubStart7411631(arg1)
    print("OnSubStart7411631")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21332Data.id, 7411631, 0, 50, 1)
        actorMgr:CreateActorWithPos("Q7411631Trigger", "Actor/Gadget/Q7411631Trigger", 70900002, 0, points.TPos_Q7411631Trigger.pos, points.TPos_Q7411631Trigger.rot, true, false, 3, nil, 0, 0)
    end)
end

function Quest74116:OnSubFinish7411631(arg1)
    print("OnSubFinish7411631")
    this:ActorDestroy("Q7411631Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21332Data.alias, 3)
end

function Quest74116:OnSubStart7411649(arg1)
    print("OnSubStart7411649")
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411649(arg1)
    print("OnSubFinish7411649")
end

function Quest74116:OnSubStart7411641(arg1)
    print("OnSubStart7411641")
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74116:OnSubFinish7411641(arg1)
    print("OnSubFinish7411641")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 741169950, false, true)
end

function Quest74116:OnSubStart7411632(arg1)
    print("OnSubStart7411632")
    actorMgr:CreateActorWithPos("Q7411632Trigger", "Actor/Gadget/Q7411632Trigger", 70900002, 0, points.TPos_Q7411632Trigger.pos, points.TPos_Q7411632Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411632(arg1)
    print("OnSubFinish7411632")
end

function Quest74116:OnSubStart7411633(arg1)
    print("OnSubStart7411633")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
end

function Quest74116:OnSubFinish7411633(arg1)
    print("OnSubFinish7411633")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74116:OnSubStart7411634(arg1)
    print("OnSubStart7411634")
    actorMgr:CreateActorWithPos("Q7411634Trigger", "Actor/Gadget/Q7411634Trigger", 70900002, 0, {x = 3136.01, y = 400.396, z = 3811.937}, {x = 0, y = 0, z = 0}, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411634(arg1)
    print("OnSubFinish7411634")
    this:TransmitPlayerById(arg1, 1)
    this:ActorDestroy("Q7411634Trigger")
end

function Quest74116:OnSubStart7411637(arg1)
    print("OnSubStart7411637")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411637Trigger", "Actor/Gadget/Q7411637Trigger", 70900002, 0, points.TPos_Q7411637Trigger.pos, points.TPos_Q7411637Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411637(arg1)
    print("OnSubFinish7411637")
    this:ActorDestroy("Q7411637Trigger")
    this:TransmitPlayerById(arg1, 4)
end

function Quest74116:OnSubStart7411635(arg1)
    print("OnSubStart7411635")
end

function Quest74116:OnSubFinish7411635(arg1)
    print("OnSubFinish7411635")
end

function Quest74116:OnSubStart7411645(arg1)
    print("OnSubStart7411645")
    this:CreateQuestNpc(arg1, npcs.Npc5042Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411645Trigger", "Actor/Gadget/Q7411645Trigger", 70900002, 0, {x = 3471.431, y = 454.922, z = 4643.932}, {x = 0, y = 0, z = 0}, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411645(arg1)
    print("OnSubFinish7411645")
    this:SafeDestroyQuestNpc(npcs.Npc21327Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21329Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21328Data.alias, 3)
end

function Quest74116:OnSubStart7411642(arg1)
    print("OnSubStart7411642")
    this:CreateQuestNpc(arg1, npcs.Npc21161Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21284Data.id, 0)
end

function Quest74116:OnSubFinish7411642(arg1)
    print("OnSubFinish7411642")
end

function Quest74116:OnSubStart7411643(arg1)
    print("OnSubStart7411643")
    this:CreateQuestNpc(arg1, npcs.Npc21159Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411643Trigger", "Actor/Gadget/Q7411643Trigger", 70900002, 0, {x = 3256.138, y = 442.977, z = 3196.982}, {x = 0, y = 0, z = 0}, true, false, 3, nil, 0, 0)
end

function Quest74116:OnSubFinish7411643(arg1)
    print("OnSubFinish7411643")
    this:ActorDestroy("Q7411643Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21159Data.alias, 3)
end

function Quest74116:OnSubStart7411644(arg1)
    print("OnSubStart7411644")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
end

function Quest74116:OnSubFinish7411644(arg1)
    print("OnSubFinish7411644")
end

function Quest74116:OnSubStart7411646(arg1)
    print("OnSubStart7411646")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
end

function Quest74116:OnSubFinish7411646(arg1)
    print("OnSubFinish7411646")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
end

return Quest74116
