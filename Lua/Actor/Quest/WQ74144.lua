require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74144 = class("Quest74144", QuestActorProxy)
Quest74144.defaultAlias = "Quest74144"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74144:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414401"] = self.OnSubStart7414401,
        ["7414418"] = self.OnSubStart7414418,
        ["7414402"] = self.OnSubStart7414402,
        ["7414426"] = self.OnSubStart7414426,
        ["7414403"] = self.OnSubStart7414403,
        ["7414404"] = self.OnSubStart7414404,
        ["7414421"] = self.OnSubStart7414421,
        ["7414405"] = self.OnSubStart7414405,
        ["7414422"] = self.OnSubStart7414422,
        ["7414423"] = self.OnSubStart7414423,
        ["7414406"] = self.OnSubStart7414406,
        ["7414407"] = self.OnSubStart7414407,
        ["7414408"] = self.OnSubStart7414408,
        ["7414409"] = self.OnSubStart7414409,
        ["7414410"] = self.OnSubStart7414410,
        ["7414411"] = self.OnSubStart7414411,
        ["7414412"] = self.OnSubStart7414412,
        ["7414413"] = self.OnSubStart7414413,
        ["7414424"] = self.OnSubStart7414424,
        ["7414419"] = self.OnSubStart7414419,
        ["7414414"] = self.OnSubStart7414414,
        ["7414420"] = self.OnSubStart7414420,
        ["7414415"] = self.OnSubStart7414415,
        ["7414416"] = self.OnSubStart7414416,
        ["7414427"] = self.OnSubStart7414427,
        ["7414425"] = self.OnSubStart7414425,
        ["7414417"] = self.OnSubStart7414417
    }
end

function Quest74144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414401"] = self.OnSubFinish7414401,
        ["7414418"] = self.OnSubFinish7414418,
        ["7414402"] = self.OnSubFinish7414402,
        ["7414426"] = self.OnSubFinish7414426,
        ["7414403"] = self.OnSubFinish7414403,
        ["7414404"] = self.OnSubFinish7414404,
        ["7414421"] = self.OnSubFinish7414421,
        ["7414405"] = self.OnSubFinish7414405,
        ["7414422"] = self.OnSubFinish7414422,
        ["7414423"] = self.OnSubFinish7414423,
        ["7414406"] = self.OnSubFinish7414406,
        ["7414407"] = self.OnSubFinish7414407,
        ["7414408"] = self.OnSubFinish7414408,
        ["7414409"] = self.OnSubFinish7414409,
        ["7414410"] = self.OnSubFinish7414410,
        ["7414411"] = self.OnSubFinish7414411,
        ["7414412"] = self.OnSubFinish7414412,
        ["7414413"] = self.OnSubFinish7414413,
        ["7414424"] = self.OnSubFinish7414424,
        ["7414419"] = self.OnSubFinish7414419,
        ["7414414"] = self.OnSubFinish7414414,
        ["7414420"] = self.OnSubFinish7414420,
        ["7414415"] = self.OnSubFinish7414415,
        ["7414416"] = self.OnSubFinish7414416,
        ["7414427"] = self.OnSubFinish7414427,
        ["7414425"] = self.OnSubFinish7414425,
        ["7414417"] = self.OnSubFinish7414417
    }
end

function Quest74144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74144:Start()
    print("Start")
end

function Quest74144:OnDestroy()
    print("OnDestroy")
end

function Quest74144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74144:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74144:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74144:OnSubStart7414401(arg1)
    print("OnSubStart7414401")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414401(arg1)
    print("OnSubFinish7414401")
end

function Quest74144:OnSubStart7414418(arg1)
    print("OnSubStart7414418")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21233Data.id, 0, npcs.Npc21233Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414418(arg1)
    print("OnSubFinish7414418")
end

function Quest74144:OnSubStart7414402(arg1)
    print("OnSubStart7414402")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414402Trigger", "Actor/Gadget/Q7414402Trigger", 70900002, 0, {x = 3190.288, y = 441.398, z = 3608.994}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414402reminder", "Actor/Gadget/Q7414402reminder", 70900002, 0, {x = 3195.311, y = 441.394, z = 3607.039}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74144:OnSubFinish7414402(arg1)
    print("OnSubFinish7414402")
end

function Quest74144:OnSubStart7414426(arg1)
    print("OnSubStart7414426")
end

function Quest74144:OnSubFinish7414426(arg1)
    print("OnSubFinish7414426")
end

function Quest74144:OnSubStart7414403(arg1)
    print("OnSubStart7414403")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414403(arg1)
    print("OnSubFinish7414403")
end

function Quest74144:OnSubStart7414404(arg1)
    print("OnSubStart7414404")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414404(arg1)
    print("OnSubFinish7414404")
end

function Quest74144:OnSubStart7414421(arg1)
    print("OnSubStart7414421")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414421(arg1)
    print("OnSubFinish7414421")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7414402)
end

function Quest74144:OnSubStart7414405(arg1)
    print("OnSubStart7414405")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21318Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414405reminder", "Actor/Gadget/Q7414405reminder", 70900002, 0, {x = 3240.168, y = 409.116, z = 3742.048}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74144:OnSubFinish7414405(arg1)
    print("OnSubFinish7414405")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7414403)
end

function Quest74144:OnSubStart7414422(arg1)
    print("OnSubStart7414422")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21318Data.id, 0)
end

function Quest74144:OnSubFinish7414422(arg1)
    print("OnSubFinish7414422")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7414405)
end

function Quest74144:OnSubStart7414423(arg1)
    print("OnSubStart7414423")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21318Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414423Trigger", "Actor/Gadget/Q7414423Trigger", 70900002, 0, {x = 3108.657, y = 423.792, z = 3544.283}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74144:OnSubFinish7414423(arg1)
    print("OnSubFinish7414423")
    this:ActorDestroy("Q7414423Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21318Data.alias, 3)
end

function Quest74144:OnSubStart7414406(arg1)
    print("OnSubStart7414406")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414406(arg1)
    print("OnSubFinish7414406")
end

function Quest74144:OnSubStart7414407(arg1)
    print("OnSubStart7414407")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414407Trigger", "Actor/Gadget/Q7414407Trigger", 70900002, 0, points.TPos_Q7414407Trigger.pos, points.TPos_Q7414407Trigger.rot, true, false, 3)
    this:CallDelayByQuest("1", 2.5, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21233Data.alias, 74144)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData)
    end)
end

function Quest74144:OnSubFinish7414407(arg1)
    print("OnSubFinish7414407")
end

function Quest74144:OnSubStart7414408(arg1)
    print("OnSubStart7414408")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21233Data.id, 0, npcs.Npc21233Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414408(arg1)
    print("OnSubFinish7414408")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
end

function Quest74144:OnSubStart7414409(arg1)
    print("OnSubStart7414409")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414409Trigger", "Actor/Gadget/Q7414409Trigger", 70900002, 0, {x = 3094.59, y = 409.29, z = 3481.421}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74144:OnSubFinish7414409(arg1)
    print("OnSubFinish7414409")
    this:NarratorOnlyTaskByData(datas.N7414417)
end

function Quest74144:OnSubStart7414410(arg1)
    print("OnSubStart7414410")
    actorMgr:CreateActorWithPos("Q7414410Trigger1", "Actor/Gadget/Q7414410Trigger1", 70900002, 0, points.TPos_Q7414410Trigger1.pos, points.TPos_Q7414410Trigger1.rot, true, false, 3)
end

function Quest74144:OnSubFinish7414410(arg1)
    print("OnSubFinish7414410")
end

function Quest74144:OnSubStart7414411(arg1)
    print("OnSubStart7414411")
end

function Quest74144:OnSubFinish7414411(arg1)
    print("OnSubFinish7414411")
end

function Quest74144:OnSubStart7414412(arg1)
    print("OnSubStart7414412")
    actorMgr:CreateActorWithPos("Q7414412Trigger2", "Actor/Gadget/Q7414412Trigger2", 70900002, 0, points.TPos_Q7414412Trigger2.pos, points.TPos_Q7414412Trigger2.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414412reminder", "Actor/Gadget/Q7414412reminder", 70900002, 0, {x = 3116.471, y = 398.951, z = 3353.842}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74144:OnSubFinish7414412(arg1)
    print("OnSubFinish7414412")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_03)
end

function Quest74144:OnSubStart7414413(arg1)
    print("OnSubStart7414413")
end

function Quest74144:OnSubFinish7414413(arg1)
    print("OnSubFinish7414413")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_04)
end

function Quest74144:OnSubStart7414424(arg1)
    print("OnSubStart7414424")
    this:CreateQuestNpc(arg1, npcs.Npc21318Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414424reminder", "Actor/Gadget/Q7414424reminder", 70900002, 0, {x = 3028.385, y = 404.08, z = 3008.412}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7414424Trigger", "Actor/Gadget/Q7414424Trigger", 70900002, 0, points.TPos_Q7414424Trigger.pos, points.TPos_Q7414424Trigger.rot, true, false, 3)
end

function Quest74144:OnSubFinish7414424(arg1)
    print("OnSubFinish7414424")
    this:SafeDestroyQuestNpc(npcs.Npc21318Data.alias, 3)
end

function Quest74144:OnSubStart7414419(arg1)
    print("OnSubStart7414419")
end

function Quest74144:OnSubFinish7414419(arg1)
    print("OnSubFinish7414419")
end

function Quest74144:OnSubStart7414414(arg1)
    print("OnSubStart7414414")
    actorMgr:CreateActorWithPos("Q7414414Trigger3", "Actor/Gadget/Q7414414Trigger3", 70900002, 0, points.TPos_Q7414414Trigger3.pos, points.TPos_Q7414414Trigger3.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414414reminder", "Actor/Gadget/Q7414414reminder", 70900002, 0, {x = 2910.446, y = 422.733, z = 2970.162}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74144:OnSubFinish7414414(arg1)
    print("OnSubFinish7414414")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_07)
end

function Quest74144:OnSubStart7414420(arg1)
    print("OnSubStart7414420")
end

function Quest74144:OnSubFinish7414420(arg1)
    print("OnSubFinish7414420")
end

function Quest74144:OnSubStart7414415(arg1)
    print("OnSubStart7414415")
end

function Quest74144:OnSubFinish7414415(arg1)
    print("OnSubFinish7414415")
end

function Quest74144:OnSubStart7414416(arg1)
    print("OnSubStart7414416")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
end

function Quest74144:OnSubFinish7414416(arg1)
    print("OnSubFinish7414416")
end

function Quest74144:OnSubStart7414427(arg1)
    print("OnSubStart7414427")
    actorMgr:CreateActorWithPos("Q7414427Trigger", "Actor/Gadget/Q7414427Trigger", 70900002, 0, {x = 3163.67, y = 432.668, z = 3592.313}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74144:OnSubFinish7414427(arg1)
    print("OnSubFinish7414427")
end

function Quest74144:OnSubStart7414425(arg1)
    print("OnSubStart7414425")
    actorMgr:CreateActorWithPos("Q7414425reminder", "Actor/Gadget/Q7414425reminder", 70900002, 0, {x = 3164.076, y = 428.317, z = 3588.28}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7414425reminder2", "Actor/Gadget/Q7414425reminder2", 70900002, 0, {x = 3082.624, y = 419.72, z = 3283.165}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7414425Trigger", "Actor/Gadget/Q7414425Trigger", 70900002, 0, {x = 3080.603, y = 434.616, z = 3277.495}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74144:OnSubFinish7414425(arg1)
    print("OnSubFinish7414425")
end

function Quest74144:OnSubStart7414417(arg1)
    print("OnSubStart7414417")
    this:CreateQuestNpc(arg1, npcs.Npc21232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21234Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414417Trigger", "Actor/Gadget/Q7414417Trigger", 70900002, 0, {x = 3046.037, y = 440.896, z = 3278.694}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74144:OnSubFinish7414417(arg1)
    print("OnSubFinish7414417")
    this:ActorDestroy("Q7414417Trigger")
end

return Quest74144
