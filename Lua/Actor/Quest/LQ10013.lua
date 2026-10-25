require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10013 = class("Quest10013", QuestActorProxy)
Quest10013.defaultAlias = "Quest10013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1001301"] = self.OnSubStart1001301,
        ["1001302"] = self.OnSubStart1001302,
        ["1001303"] = self.OnSubStart1001303,
        ["1001304"] = self.OnSubStart1001304,
        ["1001305"] = self.OnSubStart1001305,
        ["1001306"] = self.OnSubStart1001306,
        ["1001307"] = self.OnSubStart1001307,
        ["1001308"] = self.OnSubStart1001308,
        ["1001309"] = self.OnSubStart1001309,
        ["1001310"] = self.OnSubStart1001310,
        ["1001311"] = self.OnSubStart1001311,
        ["1001312"] = self.OnSubStart1001312,
        ["1001313"] = self.OnSubStart1001313
    }
end

function Quest10013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1001301"] = self.OnSubFinish1001301,
        ["1001302"] = self.OnSubFinish1001302,
        ["1001303"] = self.OnSubFinish1001303,
        ["1001304"] = self.OnSubFinish1001304,
        ["1001305"] = self.OnSubFinish1001305,
        ["1001306"] = self.OnSubFinish1001306,
        ["1001307"] = self.OnSubFinish1001307,
        ["1001308"] = self.OnSubFinish1001308,
        ["1001309"] = self.OnSubFinish1001309,
        ["1001310"] = self.OnSubFinish1001310,
        ["1001311"] = self.OnSubFinish1001311,
        ["1001312"] = self.OnSubFinish1001312,
        ["1001313"] = self.OnSubFinish1001313
    }
end

function Quest10013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1001304"] = self.OnSubFailed1001304,
        ["1001305"] = self.OnSubFailed1001305,
        ["1001306"] = self.OnSubFailed1001306,
        ["1001308"] = self.OnSubFailed1001308,
        ["1001309"] = self.OnSubFailed1001309,
        ["1001310"] = self.OnSubFailed1001310,
        ["1001311"] = self.OnSubFailed1001311,
        ["1001312"] = self.OnSubFailed1001312
    }
end

function Quest10013:Start()
    print("Start")
end

function Quest10013:OnDestroy()
    print("OnDestroy")
end

function Quest10013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10013:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1001303Trigger", 10013)
    this:ActorDestroy("Q1001305Trigger", 10013)
    this:ActorDestroy("Q1001307Trigger", 10013)
    this:ActorDestroy("Q1001313Trigger", 10013)
    this:BanCrowdNpc(3009, 21, datas.InstanceIDList_1, false, true)
end

function Quest10013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:EnableElementView(true)
    elseif arg1 == 2 then
        this:EnableElementView(false)
    end
end

function Quest10013:ActorDestroy(arg1, arg2)
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

function Quest10013:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10013:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest10013:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest10013:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10013:OnSubStart1001301(arg1)
    print("OnSubStart1001301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001301, 0, 15, 1, npcs.Diluc.id)
    this:BanCrowdNpc(3009, 21, datas.InstanceIDList_1, true, true)
end

function Quest10013:OnSubFinish1001301(arg1)
    print("OnSubFinish1001301")
    this:NpcDestroyImmediately(3, npcs.Diluc.alias)
    this:BanCrowdNpc(3009, 21, datas.InstanceIDList_1, false, true)
end

function Quest10013:OnSubStart1001302(arg1)
    print("OnSubStart1001302")
    this:DeployRangeStoryByQuest(121001300, 3, {x = 2992.986, y = 202.4, z = -272.749}, 150, 160)
end

function Quest10013:OnSubFinish1001302(arg1)
    print("OnSubFinish1001302")
end

function Quest10013:OnSubStart1001303(arg1)
    print("OnSubStart1001303")
    actorMgr:CreateActorWithPos("Q1001303Trigger", "Actor/Gadget/Q1001303Trigger", 70900002, 0, points._Q1001303TriggerPoint_.pos, points._Q1001303TriggerPoint_.rot, true, false, 3, nil, 0, 10013)
    this:DeployRangeStoryByQuest(121001300, 3, {x = 2992.986, y = 202.4, z = -272.749}, 150, 160)
end

function Quest10013:OnSubFinish1001303(arg1)
    print("OnSubFinish1001303")
    this:ActorDestroy("Q1001303Trigger", 10013)
    this:CancelRangeStoryByQuest(121001300)
end

function Quest10013:OnSubStart1001304(arg1)
    print("OnSubStart1001304")
    if this:GetQuestVar(1001304, 3) == 1 then
        this:LevelReadySafeCall(function(arg1_2)
            this:ActionSafeCall(function(arg1_2)
                if sceneData.currSceneID == 20356 then
                    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1001305, function(arg1)
                        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Diluc.id, 0, 1001304, 15, true)
                    end, nil, nil)
                end
            end)
        end)
    else
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Diluc.id, 0, 1001304, 15, true)
    end
end

function Quest10013:OnSubFinish1001304(arg1)
    print("OnSubFinish1001304")
    this:NpcDestroyImmediately(20356, npcs.Diluc.alias)
end

function Quest10013:OnSubFailed1001304(arg1)
    print("OnSubFailed1001304")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001305(arg1)
    print("OnSubStart1001305")
    actorMgr:CreateActorWithPos("Q1001305Trigger", "Actor/Gadget/Q1001305Trigger", 70900002, 0, points._Q1001305TriggerPoint_.pos, points._Q1001305TriggerPoint_.rot, true, false, 20356, nil, 0, 10013)
    this:CreateQuestNpc(arg1, npcs.Npc16719.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16720.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121001301, 20356, {x = 451.759, y = 145.126, z = 567.672}, 20, 30)
end

function Quest10013:OnSubFinish1001305(arg1)
    print("OnSubFinish1001305")
    this:NpcDestroyImmediately(20356, npcs.Npc16719.alias)
    this:NpcDestroyImmediately(20356, npcs.Npc16720.alias)
    this:ActorDestroy("Q1001305Trigger", 10013)
end

function Quest10013:OnSubFailed1001305(arg1)
    print("OnSubFailed1001305")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001306(arg1)
    print("OnSubStart1001306")
    this:CreateQuestNpc(arg1, npcs.Npc16721.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121001301, 20356, {x = 451.759, y = 145.126, z = 567.672}, 20, 30)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(nil)
        if sceneData.currSceneID == 20356 then
            if this:GetQuestVar(1001306, 0) == 1 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1001305, nil, nil, nil)
            end
        end
    end)
end

function Quest10013:OnSubFinish1001306(arg1)
    print("OnSubFinish1001306")
    this:NpcDestroyImmediately(20356, npcs.Npc16721.alias)
    this:CancelRangeStoryByQuest(121001301)
end

function Quest10013:OnSubFailed1001306(arg1)
    print("OnSubFailed1001306")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001307(arg1)
    print("OnSubStart1001307")
    actorMgr:CreateActorWithPos("Q1001307Trigger", "Actor/Gadget/Q1001307Trigger", 70900002, 0, points._Q1001307TriggerPoint_.pos, points._Q1001307TriggerPoint_.rot, true, false, 20356, nil, 0, 10013)
    this:NpcCreateWithNpcTrigger(npcs.Npc1326.id, 0, 50, 1001307)
end

function Quest10013:OnSubFinish1001307(arg1)
    print("OnSubFinish1001307")
    this:NpcDestroyImmediately(20356, npcs.Npc1326.alias)
    this:ActorDestroy("Q1001307Trigger", 10013)
end

function Quest10013:OnSubStart1001308(arg1)
    print("OnSubStart1001308")
    this:ClearNarratorTask()
end

function Quest10013:OnSubFinish1001308(arg1)
    print("OnSubFinish1001308")
end

function Quest10013:OnSubFailed1001308(arg1)
    print("OnSubFailed1001308")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001309(arg1)
    print("OnSubStart1001309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001309, 0, 50, 1, npcs.Npc1326.id)
end

function Quest10013:OnSubFinish1001309(arg1)
    print("OnSubFinish1001309")
    this:NpcDestroyImmediately(20356, npcs.Npc1326.alias)
end

function Quest10013:OnSubFailed1001309(arg1)
    print("OnSubFailed1001309")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001310(arg1)
    print("OnSubStart1001310")
end

function Quest10013:OnSubFinish1001310(arg1)
    print("OnSubFinish1001310")
end

function Quest10013:OnSubFailed1001310(arg1)
    print("OnSubFailed1001310")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001311(arg1)
    print("OnSubStart1001311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001311, 0, 50, 1, npcs.Npc1326.id)
end

function Quest10013:OnSubFinish1001311(arg1)
    print("OnSubFinish1001311")
end

function Quest10013:OnSubFailed1001311(arg1)
    print("OnSubFailed1001311")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001312(arg1)
    print("OnSubStart1001312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001312, 0, 50, 1, npcs.Npc1326.id)
end

function Quest10013:OnSubFinish1001312(arg1)
    print("OnSubFinish1001312")
    this:NpcDestroyImmediately(20356, npcs.Npc1326.alias)
end

function Quest10013:OnSubFailed1001312(arg1)
    print("OnSubFailed1001312")
    this:RecycleAllRes()
end

function Quest10013:OnSubStart1001313(arg1)
    print("OnSubStart1001313")
    actorMgr:CreateActorWithPos("Q1001313Trigger", "Actor/Gadget/Q1001313Trigger", 70900002, 0, points._Q1001313TriggerPoint_.pos, points._Q1001313TriggerPoint_.rot, true, false, 20356, nil, 0, 10013)
    this:NpcCreateWithNpcTrigger(npcs.Npc1326.id, 0, 20, 1001313)
end

function Quest10013:OnSubFinish1001313(arg1)
    print("OnSubFinish1001313")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:ActorDestroy("Q1001313Trigger", 10013)
end

return Quest10013
