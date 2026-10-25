require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3034 = class("Quest3034", QuestActorProxy)
Quest3034.defaultAlias = "Quest3034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest3034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest3034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303401"] = self.OnSubStart303401,
        ["303403"] = self.OnSubStart303403,
        ["303404"] = self.OnSubStart303404,
        ["303405"] = self.OnSubStart303405,
        ["303406"] = self.OnSubStart303406,
        ["303407"] = self.OnSubStart303407,
        ["303413"] = self.OnSubStart303413,
        ["303408"] = self.OnSubStart303408,
        ["303409"] = self.OnSubStart303409,
        ["303410"] = self.OnSubStart303410,
        ["303411"] = self.OnSubStart303411,
        ["303402"] = self.OnSubStart303402,
        ["303412"] = self.OnSubStart303412
    }
end

function Quest3034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303401"] = self.OnSubFinish303401,
        ["303403"] = self.OnSubFinish303403,
        ["303404"] = self.OnSubFinish303404,
        ["303405"] = self.OnSubFinish303405,
        ["303406"] = self.OnSubFinish303406,
        ["303407"] = self.OnSubFinish303407,
        ["303413"] = self.OnSubFinish303413,
        ["303408"] = self.OnSubFinish303408,
        ["303409"] = self.OnSubFinish303409,
        ["303410"] = self.OnSubFinish303410,
        ["303411"] = self.OnSubFinish303411,
        ["303402"] = self.OnSubFinish303402,
        ["303412"] = self.OnSubFinish303412
    }
end

function Quest3034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3034:Start()
    print("Start")
end

function Quest3034:OnDestroy()
    print("OnDestroy")
end

function Quest3034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3034:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q303401_TriggerIn", 3034)
    this:ActorDestroy("Q303407_TriggerIn_02", 3034)
    this:ActorDestroy("Q303409_TriggerIn", 3034)
    this:ActorDestroy("Q303409_TriggerIn02", 3034)
    this:ActorDestroy("Q303410_TriggerIn", 3034)
    this:ActorDestroy("Q303411_TriggerIn", 3034)
    this:ActorDestroy("Q303402_TriggerIn", 3034)
    this:ActorDestroy("Q303412_TriggerIn", 3034)
end

function Quest3034:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest3034:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest3034:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest3034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest3034:OnSubStart303401(arg1)
    print("OnSubStart303401")
    this:CreateQuestNpc(arg1, npcs.Npc7000.id, 0, false, 0)
end

function Quest3034:OnSubFinish303401(arg1)
    print("OnSubFinish303401")
    this:NpcDestroyImmediately(3, npcs.Npc7000.alias)
    actorMgr:CreateActorWithPos("Q303401_TriggerIn", "Actor/Gadget/Q303401_TriggerIn", 70900002, 0, points._Q303401_TriggerInPoint_.pos, points._Q303401_TriggerInPoint_.rot, true, false, 3, nil, 0, 3034)
end

function Quest3034:OnSubStart303403(arg1)
    print("OnSubStart303403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1085.id, 0, 303403, 10, true)
    this:DeployStoryByQuest(110303404)
end

function Quest3034:OnSubFinish303403(arg1)
    print("OnSubFinish303403")
    this:NpcDestroyImmediately(20343, npcs.Npc1085.alias)
    this:ActorDestroy("Q303401_TriggerIn", 3034)
end

function Quest3034:OnSubStart303404(arg1)
    print("OnSubStart303404")
    this:DeployStoryByQuest(110303404)
end

function Quest3034:OnSubFinish303404(arg1)
    print("OnSubFinish303404")
    this:QuestNarratorTask(datas.NarratorWithId_Q303404, nil)
end

function Quest3034:OnSubStart303405(arg1)
    print("OnSubStart303405")
    this:DeployStoryByQuest(110303404)
end

function Quest3034:OnSubFinish303405(arg1)
    print("OnSubFinish303405")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_Q303405, nil)
end

function Quest3034:OnSubStart303406(arg1)
    print("OnSubStart303406")
    this:DeployStoryByQuest(110303404)
end

function Quest3034:OnSubFinish303406(arg1)
    print("OnSubFinish303406")
    this:CancelStoryByQuest(110303404)
end

function Quest3034:OnSubStart303407(arg1)
    print("OnSubStart303407")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303407, 5, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20343 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Q303407, nil, nil, nil)
            end
        end)
    end)
end

function Quest3034:OnSubFinish303407(arg1)
    print("OnSubFinish303407")
    this:NpcDestroyImmediately(3, npcs.Npc16565.alias)
end

function Quest3034:OnSubStart303413(arg1)
    print("OnSubStart303413")
    actorMgr:CreateActorWithPos("Q303407_TriggerIn_02", "Actor/Gadget/Q303407_TriggerIn_02", 70900002, 0, points._Q303407_TriggerIn_02Point_.pos, points._Q303407_TriggerIn_02Point_.rot, true, false, 3, nil, 0, 3034)
end

function Quest3034:OnSubFinish303413(arg1)
    print("OnSubFinish303413")
    this:ActorDestroy("Q303407_TriggerIn_02", 3034)
end

function Quest3034:OnSubStart303408(arg1)
    print("OnSubStart303408")
    this:NpcCreateWithNpcTrigger(npcs.Npc16565.id, 0, 15, 303408)
    this:DeployStoryByQuest(110303408)
end

function Quest3034:OnSubFinish303408(arg1)
    print("OnSubFinish303408")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:CancelStoryByQuest(110303408)
end

function Quest3034:OnSubStart303409(arg1)
    print("OnSubStart303409")
    this:CreateQuestNpc(arg1, npcs.Npc16680.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12816.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12817.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q303409_TriggerIn", "Actor/Gadget/Q303409_TriggerIn", 70900002, 0, points._Q303409_TriggerInPoint_.pos, points._Q303409_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3034)
    actorMgr:CreateActorWithPos("Q303409_TriggerIn02", "Actor/Gadget/Q303409_TriggerIn02", 70900002, 0, points._Q303409_TriggerIn02Point_.pos, points._Q303409_TriggerIn02Point_.rot, true, false, 20343, nil, 0, 3034)
end

function Quest3034:OnSubFinish303409(arg1)
    print("OnSubFinish303409")
    this:NpcDestroyImmediately(20343, npcs.Npc16680.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc12816.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc12817.alias)
    this:ActorDestroy("Q303409_TriggerIn", 3034)
    this:ActorDestroy("Q303409_TriggerIn02", 3034)
end

function Quest3034:OnSubStart303410(arg1)
    print("OnSubStart303410")
    actorMgr:CreateActorWithPos("Q303410_TriggerIn", "Actor/Gadget/Q303410_TriggerIn", 70900002, 0, points._Q303410_TriggerInPoint_.pos, points._Q303410_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3034)
    this:CreateLocalGadget(73164030, "111", {x = 0, y = 128.278, z = 0}, {x = 0, y = 270, z = 0}, 20345, nil, nil, true, 0, true)
    this:DeployRangeStoryByQuest(110303410, 20345, {x = 0, y = 128.278, z = 0}, 300, 310)
end

function Quest3034:OnSubFinish303410(arg1)
    print("OnSubFinish303410")
    this:ActorDestroy("Q303410_TriggerIn", 3034)
    this:CancelRangeStoryByQuest(110303410)
    this:RemoveLocalGadget(73164030, "111")
end

function Quest3034:OnSubStart303411(arg1)
    print("OnSubStart303411")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303411, 20, true)
    actorMgr:CreateActorWithPos("Q303411_TriggerIn", "Actor/Gadget/Q303411_TriggerIn", 70900002, 0, points._Q303411_TriggerInPoint_.pos, points._Q303411_TriggerInPoint_.rot, true, false, 20345, nil, 0, 3034)
end

function Quest3034:OnSubFinish303411(arg1)
    print("OnSubFinish303411")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303411_TriggerIn", 3034)
end

function Quest3034:OnSubStart303402(arg1)
    print("OnSubStart303402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303402, 20, true)
    actorMgr:CreateActorWithPos("Q303402_TriggerIn", "Actor/Gadget/Q303402_TriggerIn", 70900002, 0, points._Q303402_TriggerInPoint_.pos, points._Q303402_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3034)
end

function Quest3034:OnSubFinish303402(arg1)
    print("OnSubFinish303402")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303402_TriggerIn", 3034)
end

function Quest3034:OnSubStart303412(arg1)
    print("OnSubStart303412")
    actorMgr:CreateActorWithPos("Q303412_TriggerIn", "Actor/Gadget/Q303412_TriggerIn", 70900002, 0, points._Q303412_TriggerInPoint_.pos, points._Q303412_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3034)
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 20343 then
                this:TransmitPlayerWithQuestIdByData(303412, 1, datas.TransmitData_Q303412, nil, nil, nil)
            end
        end)
    end)
end

function Quest3034:OnSubFinish303412(arg1)
    print("OnSubFinish303412")
    this:ActorDestroy("Q303412_TriggerIn", 3034)
end

return Quest3034
