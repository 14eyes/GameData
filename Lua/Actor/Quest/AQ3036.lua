require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3036 = class("Quest3036", QuestActorProxy)
Quest3036.defaultAlias = "Quest3036"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest3036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest3036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303601"] = self.OnSubStart303601,
        ["303602"] = self.OnSubStart303602,
        ["303603"] = self.OnSubStart303603,
        ["303604"] = self.OnSubStart303604,
        ["303607"] = self.OnSubStart303607,
        ["303611"] = self.OnSubStart303611,
        ["303614"] = self.OnSubStart303614,
        ["303615"] = self.OnSubStart303615,
        ["303605"] = self.OnSubStart303605,
        ["303606"] = self.OnSubStart303606,
        ["303616"] = self.OnSubStart303616,
        ["303608"] = self.OnSubStart303608,
        ["303609"] = self.OnSubStart303609,
        ["303610"] = self.OnSubStart303610,
        ["303612"] = self.OnSubStart303612,
        ["303613"] = self.OnSubStart303613,
        ["303617"] = self.OnSubStart303617
    }
end

function Quest3036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303601"] = self.OnSubFinish303601,
        ["303602"] = self.OnSubFinish303602,
        ["303603"] = self.OnSubFinish303603,
        ["303604"] = self.OnSubFinish303604,
        ["303607"] = self.OnSubFinish303607,
        ["303611"] = self.OnSubFinish303611,
        ["303614"] = self.OnSubFinish303614,
        ["303615"] = self.OnSubFinish303615,
        ["303605"] = self.OnSubFinish303605,
        ["303606"] = self.OnSubFinish303606,
        ["303616"] = self.OnSubFinish303616,
        ["303608"] = self.OnSubFinish303608,
        ["303609"] = self.OnSubFinish303609,
        ["303610"] = self.OnSubFinish303610,
        ["303612"] = self.OnSubFinish303612,
        ["303613"] = self.OnSubFinish303613,
        ["303617"] = self.OnSubFinish303617
    }
end

function Quest3036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3036:Start()
    print("Start")
end

function Quest3036:OnDestroy()
    print("OnDestroy")
end

function Quest3036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3036:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q303602_TriggerIn", 3036)
    this:ActorDestroy("Q3036_Retrun01", 3036)
    this:ActorDestroy("Q3036_Retrun02", 3036)
    this:ActorDestroy("Q3036_Retrun02", 3036)
    this:ActorDestroy("Q3036_Retrun01", 3036)
    this:ActorDestroy("Q3036_Retrun02", 3036)
    this:ActorDestroy("Q3036_Retrun01", 3036)
    this:ActorDestroy("Q3036_Retrun02", 3036)
    this:ActorDestroy("Q3036_Retrun01", 3036)
    this:ActorDestroy("Q303606_TriggerIn", 3036)
    this:ActorDestroy("Q303614_TriggerIn", 3036)
    this:ActorDestroy("Q303614_TriggerIn02", 3036)
    this:ActorDestroy("Q303614_TriggerIn03", 3036)
    this:ActorDestroy("Q303614_TriggerInFinish", 3036)
end

function Quest3036:ActorDestroy(arg1, arg2)
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

function Quest3036:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest3036:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest3036:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest3036:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest3036:OnSubStart303601(arg1)
    print("OnSubStart303601")
    if sceneData.currSceneID == 20343 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:ActionSafeCall(function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_Q303601, nil)
            end)
        end)
    end
end

function Quest3036:OnSubFinish303601(arg1)
    print("OnSubFinish303601")
end

function Quest3036:OnSubStart303602(arg1)
    print("OnSubStart303602")
    actorMgr:CreateActorWithPos("Q303602_TriggerIn", "Actor/Gadget/Q303602_TriggerIn", 70900002, 0, points._Q303602_TriggerInPoint_.pos, points._Q303602_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3036)
    this:DeployRangeStoryByQuest(110303602, 20344, {x = 571.453, y = 83.673, z = 505.078}, 500, 510)
    actorMgr:CreateActorWithPos("Q3036_Retrun01", "Actor/Gadget/Q3036_Retrun01", 70900002, 0, points._Q3036_Retrun01Point_.pos, points._Q3036_Retrun01Point_.rot, true, false, 20344, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q3036_Retrun02", "Actor/Gadget/Q3036_Retrun02", 70900002, 0, points._Q3036_Retrun02Point_.pos, points._Q3036_Retrun02Point_.rot, true, false, 20344, nil, 0, 3036)
end

function Quest3036:OnSubFinish303602(arg1)
    print("OnSubFinish303602")
    this:ActorDestroy("Q303602_TriggerIn", 3036)
    if sceneData.currSceneID == 20344 then
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:TransmitPlayerWithQuestIdByData(303603, 1, nil, nil, nil, datas.TransmitData_Q303614)
        end, nil, nil, 0, false, true)
    end
end

function Quest3036:OnSubStart303603(arg1)
    print("OnSubStart303603")
    this:DeployRangeStoryByQuest(110303602, 20344, {x = 571.453, y = 83.673, z = 505.078}, 500, 510)
    actorMgr:CreateActorWithPos("Q3036_Retrun01", "Actor/Gadget/Q3036_Retrun01", 70900002, 0, points._Q3036_Retrun01Point_.pos, points._Q3036_Retrun01Point_.rot, true, false, 20344, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q3036_Retrun02", "Actor/Gadget/Q3036_Retrun02", 70900002, 0, points._Q3036_Retrun02Point_.pos, points._Q3036_Retrun02Point_.rot, true, false, 20344, nil, 0, 3036)
end

function Quest3036:OnSubFinish303603(arg1)
    print("OnSubFinish303603")
end

function Quest3036:OnSubStart303604(arg1)
    print("OnSubStart303604")
    this:DeployRangeStoryByQuest(110303602, 20344, {x = 571.453, y = 83.673, z = 505.078}, 500, 510)
    actorMgr:CreateActorWithPos("Q3036_Retrun01", "Actor/Gadget/Q3036_Retrun01", 70900002, 0, points._Q3036_Retrun01Point_.pos, points._Q3036_Retrun01Point_.rot, true, false, 20344, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q3036_Retrun02", "Actor/Gadget/Q3036_Retrun02", 70900002, 0, points._Q3036_Retrun02Point_.pos, points._Q3036_Retrun02Point_.rot, true, false, 20344, nil, 0, 3036)
end

function Quest3036:OnSubFinish303604(arg1)
    print("OnSubFinish303604")
end

function Quest3036:OnSubStart303607(arg1)
    print("OnSubStart303607")
end

function Quest3036:OnSubFinish303607(arg1)
    print("OnSubFinish303607")
end

function Quest3036:OnSubStart303611(arg1)
    print("OnSubStart303611")
    this:DeployRangeStoryByQuest(110303602, 20344, {x = 571.453, y = 83.673, z = 505.078}, 500, 510)
    actorMgr:CreateActorWithPos("Q3036_Retrun01", "Actor/Gadget/Q3036_Retrun01", 70900002, 0, points._Q3036_Retrun01Point_.pos, points._Q3036_Retrun01Point_.rot, true, false, 20344, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q3036_Retrun02", "Actor/Gadget/Q3036_Retrun02", 70900002, 0, points._Q3036_Retrun02Point_.pos, points._Q3036_Retrun02Point_.rot, true, false, 20344, nil, 0, 3036)
end

function Quest3036:OnSubFinish303611(arg1)
    print("OnSubFinish303611")
    this:CancelRangeStoryByQuest(110303602)
    this:ActorDestroy("Q3036_Retrun01", 3036)
    this:ActorDestroy("Q3036_Retrun02", 3036)
end

function Quest3036:OnSubStart303614(arg1)
    print("OnSubStart303614")
    actorMgr:CreateActorWithPos("Q303614_TriggerIn", "Actor/Gadget/Q303614_TriggerIn", 70900002, 0, points._Q303614_TriggerInPoint_.pos, points._Q303614_TriggerInPoint_.rot, true, false, 20344, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q303614_TriggerIn02", "Actor/Gadget/Q303614_TriggerIn02", 70900002, 0, points._Q303614_TriggerIn02Point_.pos, points._Q303614_TriggerIn02Point_.rot, true, false, 20343, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q303614_TriggerIn03", "Actor/Gadget/Q303614_TriggerIn03", 70900002, 0, points._Q303614_TriggerIn03Point_.pos, points._Q303614_TriggerIn03Point_.rot, true, false, 20343, nil, 0, 3036)
    actorMgr:CreateActorWithPos("Q303614_TriggerInFinish", "Actor/Gadget/Q303614_TriggerInFinish", 70900002, 0, points._Q303614_TriggerInFinishPoint_.pos, points._Q303614_TriggerInFinishPoint_.rot, true, false, 20343, nil, 0, 3036)
    this:CreateLocalGadget(73160007, "1", {x = -2355.3, y = -254.44, z = 5533.01}, {x = 0, y = 0, z = 0}, 20343, nil, nil, true, 0, true)
    this:CreateLocalGadget(73160007, "2", {x = -2335.3, y = -254.44, z = 5532.97}, {x = 0, y = 180, z = 0}, 20343, nil, nil, true, 0, true)
end

function Quest3036:OnSubFinish303614(arg1)
    print("OnSubFinish303614")
    this:ActorDestroy("Q303614_TriggerIn", 3036)
    this:ActorDestroy("Q303614_TriggerIn02", 3036)
    this:ActorDestroy("Q303614_TriggerIn03", 3036)
    this:ActorDestroy("Q303614_TriggerInFinish", 3036)
end

function Quest3036:OnSubStart303615(arg1)
    print("OnSubStart303615")
    this:NpcCreateWithNoBlack(npcs.Npc16565.id, 0, 15, 303615, true, 303606)
    this:CreateLocalGadget(73160007, "1", {x = -2355.3, y = -254.44, z = 5533.01}, {x = 0, y = 0, z = 0}, 20343, nil, nil, true, 0, true)
    this:CreateLocalGadget(73160007, "2", {x = -2335.3, y = -254.44, z = 5532.97}, {x = 0, y = 180, z = 0}, 20343, nil, nil, true, 0, true)
end

function Quest3036:OnSubFinish303615(arg1)
    print("OnSubFinish303615")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:RemoveLocalGadget(73160007, "1")
    this:RemoveLocalGadget(73160007, "2")
end

function Quest3036:OnSubStart303605(arg1)
    print("OnSubStart303605")
    this:NpcCreateWithNpcTrigger(npcs.Npc16565.id, 0, 20, 303605)
end

function Quest3036:OnSubFinish303605(arg1)
    print("OnSubFinish303605")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
end

function Quest3036:OnSubStart303606(arg1)
    print("OnSubStart303606")
    actorMgr:CreateActorWithPos("Q303606_TriggerIn", "Actor/Gadget/Q303606_TriggerIn", 70900002, 0, points._Q303606_TriggerInPoint_.pos, points._Q303606_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3036)
end

function Quest3036:OnSubFinish303606(arg1)
    print("OnSubFinish303606")
end

function Quest3036:OnSubStart303616(arg1)
    print("OnSubStart303616")
    this:NpcCreateWithNpcTriggerAndBlackscreen(303616, 0, 60, 0.5, npcs.Npc16565.id)
end

function Quest3036:OnSubFinish303616(arg1)
    print("OnSubFinish303616")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
end

function Quest3036:OnSubStart303608(arg1)
    print("OnSubStart303608")
end

function Quest3036:OnSubFinish303608(arg1)
    print("OnSubFinish303608")
end

function Quest3036:OnSubStart303609(arg1)
    print("OnSubStart303609")
end

function Quest3036:OnSubFinish303609(arg1)
    print("OnSubFinish303609")
end

function Quest3036:OnSubStart303610(arg1)
    print("OnSubStart303610")
end

function Quest3036:OnSubFinish303610(arg1)
    print("OnSubFinish303610")
end

function Quest3036:OnSubStart303612(arg1)
    print("OnSubStart303612")
end

function Quest3036:OnSubFinish303612(arg1)
    print("OnSubFinish303612")
end

function Quest3036:OnSubStart303613(arg1)
    print("OnSubStart303613")
end

function Quest3036:OnSubFinish303613(arg1)
    print("OnSubFinish303613")
end

function Quest3036:OnSubStart303617(arg1)
    print("OnSubStart303617")
end

function Quest3036:OnSubFinish303617(arg1)
    print("OnSubFinish303617")
end

return Quest3036
