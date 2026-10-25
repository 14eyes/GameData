require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74113 = class("Quest74113", QuestActorProxy)
Quest74113.defaultAlias = "Quest74113"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74113:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411301"] = self.OnSubStart7411301,
        ["7411302"] = self.OnSubStart7411302,
        ["7411303"] = self.OnSubStart7411303,
        ["7411304"] = self.OnSubStart7411304,
        ["7411320"] = self.OnSubStart7411320,
        ["7411321"] = self.OnSubStart7411321,
        ["7411322"] = self.OnSubStart7411322,
        ["7411325"] = self.OnSubStart7411325,
        ["7411327"] = self.OnSubStart7411327,
        ["7411323"] = self.OnSubStart7411323,
        ["7411305"] = self.OnSubStart7411305,
        ["7411306"] = self.OnSubStart7411306,
        ["7411307"] = self.OnSubStart7411307,
        ["7411324"] = self.OnSubStart7411324,
        ["7411308"] = self.OnSubStart7411308,
        ["7411310"] = self.OnSubStart7411310,
        ["7411309"] = self.OnSubStart7411309,
        ["7411331"] = self.OnSubStart7411331,
        ["7411328"] = self.OnSubStart7411328,
        ["7411329"] = self.OnSubStart7411329,
        ["7411311"] = self.OnSubStart7411311,
        ["7411312"] = self.OnSubStart7411312,
        ["7411326"] = self.OnSubStart7411326,
        ["7411313"] = self.OnSubStart7411313,
        ["7411314"] = self.OnSubStart7411314,
        ["7411315"] = self.OnSubStart7411315,
        ["7411316"] = self.OnSubStart7411316,
        ["7411317"] = self.OnSubStart7411317,
        ["7411332"] = self.OnSubStart7411332,
        ["7411330"] = self.OnSubStart7411330,
        ["7411318"] = self.OnSubStart7411318,
        ["7411319"] = self.OnSubStart7411319
    }
end

function Quest74113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411301"] = self.OnSubFinish7411301,
        ["7411302"] = self.OnSubFinish7411302,
        ["7411303"] = self.OnSubFinish7411303,
        ["7411304"] = self.OnSubFinish7411304,
        ["7411320"] = self.OnSubFinish7411320,
        ["7411321"] = self.OnSubFinish7411321,
        ["7411322"] = self.OnSubFinish7411322,
        ["7411325"] = self.OnSubFinish7411325,
        ["7411327"] = self.OnSubFinish7411327,
        ["7411323"] = self.OnSubFinish7411323,
        ["7411305"] = self.OnSubFinish7411305,
        ["7411306"] = self.OnSubFinish7411306,
        ["7411307"] = self.OnSubFinish7411307,
        ["7411324"] = self.OnSubFinish7411324,
        ["7411308"] = self.OnSubFinish7411308,
        ["7411310"] = self.OnSubFinish7411310,
        ["7411309"] = self.OnSubFinish7411309,
        ["7411331"] = self.OnSubFinish7411331,
        ["7411328"] = self.OnSubFinish7411328,
        ["7411329"] = self.OnSubFinish7411329,
        ["7411311"] = self.OnSubFinish7411311,
        ["7411312"] = self.OnSubFinish7411312,
        ["7411326"] = self.OnSubFinish7411326,
        ["7411313"] = self.OnSubFinish7411313,
        ["7411314"] = self.OnSubFinish7411314,
        ["7411315"] = self.OnSubFinish7411315,
        ["7411316"] = self.OnSubFinish7411316,
        ["7411317"] = self.OnSubFinish7411317,
        ["7411332"] = self.OnSubFinish7411332,
        ["7411330"] = self.OnSubFinish7411330,
        ["7411318"] = self.OnSubFinish7411318,
        ["7411319"] = self.OnSubFinish7411319
    }
end

function Quest74113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74113:Start()
    print("Start")
end

function Quest74113:OnDestroy()
    print("OnDestroy")
end

function Quest74113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74113:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21169Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21162Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21171Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21165Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21166Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21279Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21280Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21281Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21283Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21170Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7411301RMDTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411301Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411302Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411307Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411312Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411313RMDTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411313Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411315Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411330Trigger", 3, false)
end

function Quest74113:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74113:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest74113:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74113:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74113:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74113:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74113:OnSubStart7411301(arg1)
    print("OnSubStart7411301")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21170Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7411301Trigger", "Actor/Gadget/Q7411301Trigger", 70900002, 0, points.TPos_Q7411301Trigger.pos, points.TPos_Q7411301Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7411301RMDTrigger", "Actor/Gadget/Q7411301RMDTrigger", 70900002, 0, {x = 3493.999, y = 455.938, z = 4659.271}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74113:OnSubFinish7411301(arg1)
    print("OnSubFinish7411301")
    this:ActorDestroy("Q7411301Trigger")
end

function Quest74113:OnSubStart7411302(arg1)
    print("OnSubStart7411302")
    actorMgr:CreateActorWithPos("Q7411302Trigger", "Actor/Gadget/Q7411302Trigger", 70900002, 0, points.TPos_Q7411302Trigger.pos, points.TPos_Q7411302Trigger.rot, true, false, 3)
end

function Quest74113:OnSubFinish7411302(arg1)
    print("OnSubFinish7411302")
end

function Quest74113:OnSubStart7411303(arg1)
    print("OnSubStart7411303")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:RequestInteraction(npcs.Npc21158Data.alias)
end

function Quest74113:OnSubFinish7411303(arg1)
    print("OnSubFinish7411303")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11309)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11310)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11311)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
end

function Quest74113:OnSubStart7411304(arg1)
    print("OnSubStart7411304")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411304(arg1)
    print("OnSubFinish7411304")
    this:SafeDestroyQuestNpc(npcs.Npc21330Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21331Data.alias, 3)
end

function Quest74113:OnSubStart7411320(arg1)
    print("OnSubStart7411320")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411320(arg1)
    print("OnSubFinish7411320")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11301)
    end)
end

function Quest74113:OnSubStart7411321(arg1)
    print("OnSubStart7411321")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411321(arg1)
    print("OnSubFinish7411321")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11304)
    end)
end

function Quest74113:OnSubStart7411322(arg1)
    print("OnSubStart7411322")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411322(arg1)
    print("OnSubFinish7411322")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11303)
    end)
end

function Quest74113:OnSubStart7411325(arg1)
    print("OnSubStart7411325")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411325(arg1)
    print("OnSubFinish7411325")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11302)
    end)
end

function Quest74113:OnSubStart7411327(arg1)
    print("OnSubStart7411327")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411327(arg1)
    print("OnSubFinish7411327")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11305)
    end)
end

function Quest74113:OnSubStart7411323(arg1)
    print("OnSubStart7411323")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411323(arg1)
    print("OnSubFinish7411323")
end

function Quest74113:OnSubStart7411305(arg1)
    print("OnSubStart7411305")
end

function Quest74113:OnSubFinish7411305(arg1)
    print("OnSubFinish7411305")
end

function Quest74113:OnSubStart7411306(arg1)
    print("OnSubStart7411306")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411306(arg1)
    print("OnSubFinish7411306")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74113:OnSubStart7411307(arg1)
    print("OnSubStart7411307")
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21163Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21165Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21166Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7411307Trigger", "Actor/Gadget/Q7411307Trigger", 70900002, 0, points.TPos_Q7411307Trigger.pos, points.TPos_Q7411307Trigger.rot, true, false, 3)
end

function Quest74113:OnSubFinish7411307(arg1)
    print("OnSubFinish7411307")
    this:NpcDestroy(npcs.Npc5042Data.alias, 0)
end

function Quest74113:OnSubStart7411324(arg1)
    print("OnSubStart7411324")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21163Data.id, 0, npcs.Npc21163Data.alias)
end

function Quest74113:OnSubFinish7411324(arg1)
    print("OnSubFinish7411324")
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21165Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21166Data.alias, 3)
end

function Quest74113:OnSubStart7411308(arg1)
    print("OnSubStart7411308")
end

function Quest74113:OnSubFinish7411308(arg1)
    print("OnSubFinish7411308")
end

function Quest74113:OnSubStart7411310(arg1)
    print("OnSubStart7411310")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21171Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21163Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21165Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21166Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21158Data.alias)
end

function Quest74113:OnSubFinish7411310(arg1)
    print("OnSubFinish7411310")
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21165Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21166Data.alias, 3)
end

function Quest74113:OnSubStart7411309(arg1)
    print("OnSubStart7411309")
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21279Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21280Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21281Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411309(arg1)
    print("OnSubFinish7411309")
end

function Quest74113:OnSubStart7411331(arg1)
    print("OnSubStart7411331")
    this:CreateQuestNpc(arg1, npcs.Npc21283Data.id, 0, false, 0)
    this:CallDelayByQuest("1", 2, function(arg1_2)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21171Data.alias, 74113)
        this:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData7411331)
        this:CreateQuestNpc(arg1, npcs.Npc21283Data.id, 0)
        actorMgr:CreateActorWithPos("Q7411331Trigger", "Actor/Gadget/Q7411331Trigger", 70900002, 0, {x = 3252.197, y = 441.023, z = 3642.999}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74113:OnSubFinish7411331(arg1)
    print("OnSubFinish7411331")
    this:SafeDestroyQuestNpc(npcs.Npc21283Data.alias, 3)
end

function Quest74113:OnSubStart7411328(arg1)
    print("OnSubStart7411328")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21161Data.id, 0, npcs.Npc21161Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411328(arg1)
    print("OnSubFinish7411328")
end

function Quest74113:OnSubStart7411329(arg1)
    print("OnSubStart7411329")
    this:CreateQuestNpc(arg1, npcs.Npc21161Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411329(arg1)
    print("OnSubFinish7411329")
end

function Quest74113:OnSubStart7411311(arg1)
    print("OnSubStart7411311")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21171Data.id, 0)
end

function Quest74113:OnSubFinish7411311(arg1)
    print("OnSubFinish7411311")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21158Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21160Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21161Data.alias)
end

function Quest74113:OnSubStart7411312(arg1)
    print("OnSubStart7411312")
    this:CreateQuestNpc(arg1, npcs.Npc21171Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7411312Trigger", "Actor/Gadget/Q7411312Trigger", 70900002, 0, points.TPos_Q7411312Trigger.pos, points.TPos_Q7411312Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21171Data.alias, 74113)
    this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePoints7411312)
end

function Quest74113:OnSubFinish7411312(arg1)
    print("OnSubFinish7411312")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId7411312, 5)
    this:SafeDestroyQuestNpc(npcs.Npc21279Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21280Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21281Data.alias, 3)
end

function Quest74113:OnSubStart7411326(arg1)
    print("OnSubStart7411326")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc21171Data.id, 7411326, 0, 20)
        this:GetQuestNpcActor(npcs.Npc21171Data.alias):Standby()
    end)
end

function Quest74113:OnSubFinish7411326(arg1)
    print("OnSubFinish7411326")
end

function Quest74113:OnSubStart7411313(arg1)
    print("OnSubStart7411313")
    this:CreateQuestNpc(arg1, npcs.Npc21169Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21169Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21162Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7411313Trigger", "Actor/Gadget/Q7411313Trigger", 70900002, 0, points.TPos_Q7411313Trigger.pos, points.TPos_Q7411313Trigger.rot, true, false, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7411313RMDTrigger", "Actor/Gadget/Q7411313RMDTrigger", 70900002, 0, points.TPos_Q7411313RMDTrigger.pos, points.TPos_Q7411313RMDTrigger.rot, true, false, 3)
    end)
end

function Quest74113:OnSubFinish7411313(arg1)
    print("OnSubFinish7411313")
end

function Quest74113:OnSubStart7411314(arg1)
    print("OnSubStart7411314")
    this:CreateQuestNpc(arg1, npcs.Npc21169Data.id, 0, false, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21162Data.id, 0, npcs.Npc21162Data.alias)
    this:RequestInteraction(npcs.Npc21162Data.alias)
end

function Quest74113:OnSubFinish7411314(arg1)
    print("OnSubFinish7411314")
end

function Quest74113:OnSubStart7411315(arg1)
    print("OnSubStart7411315")
    this:GetQuestNpcActor(npcs.Npc21169Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21162Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7411315Trigger", "Actor/Gadget/Q7411315Trigger", 70900002, 0, points.TPos_Q7411315Trigger.pos, points.TPos_Q7411315Trigger.rot, true, false, 3)
end

function Quest74113:OnSubFinish7411315(arg1)
    print("OnSubFinish7411315")
    this:NarratorOnlyTaskByData(datas.Q7411315)
    this:EnterSceneLookCamera({x = 3345.6, y = 445.0, z = 3242.451}, 1, 2, false, false)
end

function Quest74113:OnSubStart7411316(arg1)
    print("OnSubStart7411316")
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21162Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74113:OnSubFinish7411316(arg1)
    print("OnSubFinish7411316")
end

function Quest74113:OnSubStart7411317(arg1)
    print("OnSubStart7411317")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21162Data.id, 0)
    this:RequestInteraction(npcs.Npc21162Data.alias)
end

function Quest74113:OnSubFinish7411317(arg1)
    print("OnSubFinish7411317")
end

function Quest74113:OnSubStart7411332(arg1)
    print("OnSubStart7411332")
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7411332Trigger", "Actor/Gadget/Q7411332Trigger", 70900002, 0, points.TPos_Q7411332Trigger.pos, points.TPos_Q7411332Trigger.rot, true, false, 3)
end

function Quest74113:OnSubFinish7411332(arg1)
    print("OnSubFinish7411332")
end

function Quest74113:OnSubStart7411330(arg1)
    print("OnSubStart7411330")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411330(arg1)
    print("OnSubFinish7411330")
end

function Quest74113:OnSubStart7411318(arg1)
    print("OnSubStart7411318")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21169Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
    this:ActorDestroy("Q7411330Trigger")
end

function Quest74113:OnSubFinish7411318(arg1)
    print("OnSubFinish7411318")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11320)
    end)
end

function Quest74113:OnSubStart7411319(arg1)
    print("OnSubStart7411319")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21169Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21162Data.id, 0, false, 0)
end

function Quest74113:OnSubFinish7411319(arg1)
    print("OnSubFinish7411319")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21158Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

return Quest74113
