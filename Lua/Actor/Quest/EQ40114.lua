require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40114 = class("Quest40114", QuestActorProxy)
Quest40114.defaultAlias = "Quest40114"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40114:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011401"] = self.OnSubStart4011401,
        ["4011402"] = self.OnSubStart4011402,
        ["4011419"] = self.OnSubStart4011419,
        ["4011426"] = self.OnSubStart4011426,
        ["4011403"] = self.OnSubStart4011403,
        ["4011404"] = self.OnSubStart4011404,
        ["4011422"] = self.OnSubStart4011422,
        ["4011405"] = self.OnSubStart4011405,
        ["4011424"] = self.OnSubStart4011424,
        ["4011406"] = self.OnSubStart4011406,
        ["4011407"] = self.OnSubStart4011407,
        ["4011408"] = self.OnSubStart4011408,
        ["4011409"] = self.OnSubStart4011409,
        ["4011410"] = self.OnSubStart4011410,
        ["4011411"] = self.OnSubStart4011411,
        ["4011412"] = self.OnSubStart4011412,
        ["4011425"] = self.OnSubStart4011425,
        ["4011413"] = self.OnSubStart4011413,
        ["4011414"] = self.OnSubStart4011414,
        ["4011420"] = self.OnSubStart4011420,
        ["4011415"] = self.OnSubStart4011415,
        ["4011418"] = self.OnSubStart4011418,
        ["4011416"] = self.OnSubStart4011416,
        ["4011417"] = self.OnSubStart4011417,
        ["4011421"] = self.OnSubStart4011421,
        ["4011423"] = self.OnSubStart4011423
    }
end

function Quest40114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011401"] = self.OnSubFinish4011401,
        ["4011402"] = self.OnSubFinish4011402,
        ["4011419"] = self.OnSubFinish4011419,
        ["4011426"] = self.OnSubFinish4011426,
        ["4011403"] = self.OnSubFinish4011403,
        ["4011404"] = self.OnSubFinish4011404,
        ["4011422"] = self.OnSubFinish4011422,
        ["4011405"] = self.OnSubFinish4011405,
        ["4011424"] = self.OnSubFinish4011424,
        ["4011406"] = self.OnSubFinish4011406,
        ["4011407"] = self.OnSubFinish4011407,
        ["4011408"] = self.OnSubFinish4011408,
        ["4011409"] = self.OnSubFinish4011409,
        ["4011410"] = self.OnSubFinish4011410,
        ["4011411"] = self.OnSubFinish4011411,
        ["4011412"] = self.OnSubFinish4011412,
        ["4011425"] = self.OnSubFinish4011425,
        ["4011413"] = self.OnSubFinish4011413,
        ["4011414"] = self.OnSubFinish4011414,
        ["4011420"] = self.OnSubFinish4011420,
        ["4011415"] = self.OnSubFinish4011415,
        ["4011418"] = self.OnSubFinish4011418,
        ["4011416"] = self.OnSubFinish4011416,
        ["4011417"] = self.OnSubFinish4011417,
        ["4011421"] = self.OnSubFinish4011421,
        ["4011423"] = self.OnSubFinish4011423
    }
end

function Quest40114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4011426"] = self.OnSubFailed4011426}
end

function Quest40114:Start()
    print("Start")
end

function Quest40114:OnDestroy()
    print("OnDestroy")
end

function Quest40114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40114:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13248Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13249Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13250Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    actorMgr:DestroyEntityActor("Q4011401Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011403Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011403Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011406Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011406Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011406Kaiche02", 10, false)
    actorMgr:DestroyEntityActor("Q4011408Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011408Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011411Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011415Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011415Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011415Kaiche02", 10, false)
    actorMgr:DestroyEntityActor("Q4011416Finish", 10, false)
    this:ActorDestroy("Q4011419baodi")
    this:ActorDestroy("Q4011420baodi")
    this:ActorDestroy("Q4011425Finish")
    this:ActorDestroy("Q4011414Talk")
end

function Quest40114:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest40114:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40114:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest40114:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40114:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4011422 then
        actorUtils.FinishQuestID(false, 4011422)
    end
end

function Quest40114:OnSubStart4011401(arg1)
    print("OnSubStart4011401")
    actorMgr:CreateActorWithPos("Q4011401Finish", "Actor/Gadget/Q4011401Finish", 70900002, 0, points.TPos_Q4011401Finish.pos, points.TPos_Q4011401Finish.rot, true, false, 10)
end

function Quest40114:OnSubFinish4011401(arg1)
    print("OnSubFinish4011401")
end

function Quest40114:OnSubStart4011402(arg1)
    print("OnSubStart4011402")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc13248Data.id, 0, npcs.Npc13248Data.alias)
end

function Quest40114:OnSubFinish4011402(arg1)
    print("OnSubFinish4011402")
    this:SafeDestroyQuestNpc(npcs.Npc13248Data.alias, 10)
end

function Quest40114:OnSubStart4011419(arg1)
    print("OnSubStart4011419")
    actorMgr:CreateActorWithPos("Q4011419baodi", "Actor/Gadget/Q4011419baodi", 70900002, 0, {x = 531.496, y = 204.941, z = 816.596}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011403Kaiche", "Actor/Gadget/Q4011403Kaiche", 70900002, 0, {x = 619.123, y = 194.974, z = 762.865}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40114:OnSubFinish4011419(arg1)
    print("OnSubFinish4011419")
    this:ActorDestroy("Q4011419baodi")
end

function Quest40114:OnSubStart4011426(arg1)
    print("OnSubStart4011426")
end

function Quest40114:OnSubFinish4011426(arg1)
    print("OnSubFinish4011426")
end

function Quest40114:OnSubFailed4011426(arg1)
    print("OnSubFailed4011426")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40114:OnSubStart4011403(arg1)
    print("OnSubStart4011403")
    actorMgr:CreateActorWithPos("Q4011403Finish", "Actor/Gadget/Q4011403Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011404_N10090").pos, sceneData:GetDummyPoint(10, "Q4011404_N10090").rot, true, false, 10)
end

function Quest40114:OnSubFinish4011403(arg1)
    print("OnSubFinish4011403")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q4011403Kaiche")
end

function Quest40114:OnSubStart4011404(arg1)
    print("OnSubStart4011404")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40114:OnSubFinish4011404(arg1)
    print("OnSubFinish4011404")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
end

function Quest40114:OnSubStart4011422(arg1)
    print("OnSubStart4011422")
end

function Quest40114:OnSubFinish4011422(arg1)
    print("OnSubFinish4011422")
end

function Quest40114:OnSubStart4011405(arg1)
    print("OnSubStart4011405")
end

function Quest40114:OnSubFinish4011405(arg1)
    print("OnSubFinish4011405")
end

function Quest40114:OnSubStart4011424(arg1)
    print("OnSubStart4011424")
    actorMgr:CreateActorWithPos("Q4011406Kaiche", "Actor/Gadget/Q4011406Kaiche", 70900002, 0, {x = 496.941, y = 229.926, z = 1016.517}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011424Finish", "Actor/Gadget/Q4011424Finish", 70900002, 0, points.TPos_Q4011424Finish.pos, points.TPos_Q4011424Finish.rot, true, false, 10)
end

function Quest40114:OnSubFinish4011424(arg1)
    print("OnSubFinish4011424")
    this:ActorDestroy("Q4011406Kaiche")
end

function Quest40114:OnSubStart4011406(arg1)
    print("OnSubStart4011406")
    actorMgr:CreateActorWithPos("Q4011406Finish", "Actor/Gadget/Q4011406Finish", 70900002, 0, points.TPos_Q4011406Finish.pos, points.TPos_Q4011406Finish.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011406Kaiche02", "Actor/Gadget/Q4011406Kaiche02", 70900002, 0, {x = 175.11, y = 215.801, z = 1082.278}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40114:OnSubFinish4011406(arg1)
    print("OnSubFinish4011406")
    this:NarratorOnlyTaskByData(datas.Q401140603Kaiche)
    this:ActorDestroy("Q4011406Kaiche02")
end

function Quest40114:OnSubStart4011407(arg1)
    print("OnSubStart4011407")
    this:NpcCreateWithTriggerBlack(npcs.Npc10090Data.id, 4011407, 0)
end

function Quest40114:OnSubFinish4011407(arg1)
    print("OnSubFinish4011407")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40114:OnSubStart4011408(arg1)
    print("OnSubStart4011408")
    this:CreateQuestNpc(arg1, npcs.Npc13249Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011408Finish", "Actor/Gadget/Q4011408Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011409_N13249").pos, sceneData:GetDummyPoint(10, "Q4011409_N13249").rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011408Kaiche", "Actor/Gadget/Q4011408Kaiche", 70900002, 0, {x = 226.643, y = 119.029, z = 976.991}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40114:OnSubFinish4011408(arg1)
    print("OnSubFinish4011408")
    this:ActorDestroy("Q4011408Kaiche")
end

function Quest40114:OnSubStart4011409(arg1)
    print("OnSubStart4011409")
    this:RequestInteraction(npcs.Npc13249Data.alias)
end

function Quest40114:OnSubFinish4011409(arg1)
    print("OnSubFinish4011409")
    this:SafeDestroyQuestNpc(npcs.Npc13249Data.alias, 10)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4011410StartKaiche)
    end)
end

function Quest40114:OnSubStart4011410(arg1)
    print("OnSubStart4011410")
end

function Quest40114:OnSubFinish4011410(arg1)
    print("OnSubFinish4011410")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4011410Finishkaiche)
    end)
end

function Quest40114:OnSubStart4011411(arg1)
    print("OnSubStart4011411")
    this:CreateQuestNpc(arg1, npcs.Npc13250Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011411Finish", "Actor/Gadget/Q4011411Finish", 70900002, 0, {x = -74.576, y = 189.137, z = 866.57}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40114:OnSubFinish4011411(arg1)
    print("OnSubFinish4011411")
end

function Quest40114:OnSubStart4011412(arg1)
    print("OnSubStart4011412")
    actorMgr:CreateActorWithPos("Q4011412Talk", "Actor/Gadget/Q4011412Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011412_N13250_Q4011414").pos, sceneData:GetDummyPoint(10, "Q4011412_N13250_Q4011414").rot, true, false, 10)
end

function Quest40114:OnSubFinish4011412(arg1)
    print("OnSubFinish4011412")
    this:SafeDestroyQuestNpc(npcs.Npc13250Data.alias, 10)
end

function Quest40114:OnSubStart4011425(arg1)
    print("OnSubStart4011425")
    actorMgr:CreateActorWithPos("Q4011425Finish", "Actor/Gadget/Q4011425Finish", 70900002, 0, points.TPos_Q4011425Finish.pos, points.TPos_Q4011425Finish.rot, true, false, 10)
end

function Quest40114:OnSubFinish4011425(arg1)
    print("OnSubFinish4011425")
end

function Quest40114:OnSubStart4011413(arg1)
    print("OnSubStart4011413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13245Data.id, 4011413, 0, 6, 1)
end

function Quest40114:OnSubFinish4011413(arg1)
    print("OnSubFinish4011413")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc13245Data.alias, 10)
        actorMgr:CreateActorWithPos("Q4011414Talk", "Actor/Gadget/Q4011414Talk", 70900002, 0, points.TPos_Q4011414Talk.pos, points.TPos_Q4011414Talk.rot, true, false, 10)
    end)
end

function Quest40114:OnSubStart4011414(arg1)
    print("OnSubStart4011414")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13250Data.id, 4011414, 0, 9, 1)
end

function Quest40114:OnSubFinish4011414(arg1)
    print("OnSubFinish4011414")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
end

function Quest40114:OnSubStart4011420(arg1)
    print("OnSubStart4011420")
    actorMgr:CreateActorWithPos("Q4011420baodi", "Actor/Gadget/Q4011420baodi", 70900002, 0, {x = -44.467, y = 188.18, z = 842.884}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13248Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13250Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest40114:OnSubFinish4011420(arg1)
    print("OnSubFinish4011420")
    this:ActorDestroy("Q4011420baodi")
end

function Quest40114:OnSubStart4011415(arg1)
    print("OnSubStart4011415")
    actorMgr:CreateActorWithPos("Q4011415Finish", "Actor/Gadget/Q4011415Finish", 70900002, 0, points.TPos_Q4011415Finish.pos, points.TPos_Q4011415Finish.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011415Kaiche", "Actor/Gadget/Q4011415Kaiche", 70900002, 0, {x = 6.566, y = 154.813, z = 846.431}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011415Kaiche02", "Actor/Gadget/Q4011415Kaiche02", 70900002, 0, {x = 19.32, y = 122.083, z = 670.654}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    this:GetQuestNpcActor(npcs.Npc13248Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13250Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40114:OnSubFinish4011415(arg1)
    print("OnSubFinish4011415")
    this:DestroyQuestNpcActor(npcs.Npc13248Data.alias, 10)
    this:DestroyQuestNpcActor(npcs.Npc13249Data.alias, 10)
    this:DestroyQuestNpcActor(npcs.Npc13250Data.alias, 10)
    this:ActorDestroy("Q4011415Kaiche")
    this:ActorDestroy("Q4011415Kaiche02")
end

function Quest40114:OnSubStart4011418(arg1)
    print("OnSubStart4011418")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1037Data.id, 4011418, 0, 7, 1)
end

function Quest40114:OnSubFinish4011418(arg1)
    print("OnSubFinish4011418")
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
end

function Quest40114:OnSubStart4011416(arg1)
    print("OnSubStart4011416")
    this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011416Finish", "Actor/Gadget/Q4011416Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011417_N13247").pos, sceneData:GetDummyPoint(10, "Q4011417_N13247").rot, true, false, 10)
end

function Quest40114:OnSubFinish4011416(arg1)
    print("OnSubFinish4011416")
end

function Quest40114:OnSubStart4011417(arg1)
    print("OnSubStart4011417")
    this:RequestInteraction(npcs.Npc13247Data.alias)
end

function Quest40114:OnSubFinish4011417(arg1)
    print("OnSubFinish4011417")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40114:OnSubStart4011421(arg1)
    print("OnSubStart4011421")
end

function Quest40114:OnSubFinish4011421(arg1)
    print("OnSubFinish4011421")
end

function Quest40114:OnSubStart4011423(arg1)
    print("OnSubStart4011423")
end

function Quest40114:OnSubFinish4011423(arg1)
    print("OnSubFinish4011423")
end

return Quest40114
