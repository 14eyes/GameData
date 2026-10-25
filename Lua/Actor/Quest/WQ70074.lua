require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70074 = class("Quest70074", QuestActorProxy)
Quest70074.defaultAlias = "Quest70074"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70074:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7007401"] = self.OnSubStart7007401,
        ["7007402"] = self.OnSubStart7007402,
        ["7007412"] = self.OnSubStart7007412,
        ["7007411"] = self.OnSubStart7007411,
        ["7007403"] = self.OnSubStart7007403,
        ["7007410"] = self.OnSubStart7007410,
        ["7007404"] = self.OnSubStart7007404,
        ["7007405"] = self.OnSubStart7007405,
        ["7007406"] = self.OnSubStart7007406,
        ["7007413"] = self.OnSubStart7007413,
        ["7007414"] = self.OnSubStart7007414,
        ["7007415"] = self.OnSubStart7007415,
        ["7007407"] = self.OnSubStart7007407,
        ["7007408"] = self.OnSubStart7007408,
        ["7007409"] = self.OnSubStart7007409
    }
end

function Quest70074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7007401"] = self.OnSubFinish7007401,
        ["7007402"] = self.OnSubFinish7007402,
        ["7007412"] = self.OnSubFinish7007412,
        ["7007411"] = self.OnSubFinish7007411,
        ["7007403"] = self.OnSubFinish7007403,
        ["7007410"] = self.OnSubFinish7007410,
        ["7007404"] = self.OnSubFinish7007404,
        ["7007405"] = self.OnSubFinish7007405,
        ["7007406"] = self.OnSubFinish7007406,
        ["7007413"] = self.OnSubFinish7007413,
        ["7007414"] = self.OnSubFinish7007414,
        ["7007415"] = self.OnSubFinish7007415,
        ["7007407"] = self.OnSubFinish7007407,
        ["7007408"] = self.OnSubFinish7007408,
        ["7007409"] = self.OnSubFinish7007409
    }
end

function Quest70074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7007411"] = self.OnSubFailed7007411,
        ["7007403"] = self.OnSubFailed7007403,
        ["7007410"] = self.OnSubFailed7007410,
        ["7007414"] = self.OnSubFailed7007414,
        ["7007415"] = self.OnSubFailed7007415,
        ["7007407"] = self.OnSubFailed7007407
    }
end

function Quest70074:Start()
    print("Start")
end

function Quest70074:OnDestroy()
    print("OnDestroy")
end

function Quest70074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70074:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7007411Trigger", nil)
    this:ActorDestroy("Q7007412Trigger", nil)
    this:ActorDestroy("Q7007414Trigger", nil)
end

function Quest70074:ActorDestroy(arg1, arg2)
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

function Quest70074:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70074:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70074:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70074:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70074:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest70074:OnSubStart7007401(arg1)
    print("OnSubStart7007401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7007401, 0, 10, 1, npcs.Npc1310.id)
end

function Quest70074:OnSubFinish7007401(arg1)
    print("OnSubFinish7007401")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
end

function Quest70074:OnSubStart7007402(arg1)
    print("OnSubStart7007402")
    this:NpcCreateWithNpcTrigger(npcs.Npc1605.id, 0, 15, 7007402)
end

function Quest70074:OnSubFinish7007402(arg1)
    print("OnSubFinish7007402")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1605.alias)
end

function Quest70074:OnSubStart7007412(arg1)
    print("OnSubStart7007412")
    this:AfterInterCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1605.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q7007412Trigger", "Actor/Gadget/Q7007412Trigger", 70900002, 0, points._Q7007412TriggerPoint_.pos, points._Q7007412TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    end)
end

function Quest70074:OnSubFinish7007412(arg1)
    print("OnSubFinish7007412")
end

function Quest70074:OnSubStart7007411(arg1)
    print("OnSubStart7007411")
    actorMgr:CreateActorWithPos("Q7007411Trigger", "Actor/Gadget/Q7007411Trigger", 70900002, 0, points._Q7007411TriggerPoint_.pos, points._Q7007411TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70074:OnSubFinish7007411(arg1)
    print("OnSubFinish7007411")
end

function Quest70074:OnSubFailed7007411(arg1)
    print("OnSubFailed7007411")
    this:RecycleAllRes()
    this:ActorDestroy("Q7007411Trigger", 70074)
end

function Quest70074:OnSubStart7007403(arg1)
    print("OnSubStart7007403")
end

function Quest70074:OnSubFinish7007403(arg1)
    print("OnSubFinish7007403")
end

function Quest70074:OnSubFailed7007403(arg1)
    print("OnSubFailed7007403")
    this:RecycleAllRes()
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest70074:OnSubStart7007410(arg1)
    print("OnSubStart7007410")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, nil, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_7007401, nil)
        end)
    end, nil, 700741002, false, true)
end

function Quest70074:OnSubFinish7007410(arg1)
    print("OnSubFinish7007410")
    this:ClearNarratorTask()
end

function Quest70074:OnSubFailed7007410(arg1)
    print("OnSubFailed7007410")
    this:RecycleAllRes()
end

function Quest70074:OnSubStart7007404(arg1)
    print("OnSubStart7007404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7007404, 0, 20, 1, npcs.Npc1605.id)
end

function Quest70074:OnSubFinish7007404(arg1)
    print("OnSubFinish7007404")
    this:NpcDestroyImmediately(3, npcs.Npc1605.alias)
end

function Quest70074:OnSubStart7007405(arg1)
    print("OnSubStart7007405")
    this:NpcCreateWithNpcTrigger(npcs.Npc1567.id, 0, 10, 7007405)
end

function Quest70074:OnSubFinish7007405(arg1)
    print("OnSubFinish7007405")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1567.alias)
end

function Quest70074:OnSubStart7007406(arg1)
    print("OnSubStart7007406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7007406, 0, 5, 1, npcs.Npc1310.id)
end

function Quest70074:OnSubFinish7007406(arg1)
    print("OnSubFinish7007406")
end

function Quest70074:OnSubStart7007413(arg1)
    print("OnSubStart7007413")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1310.id, arg1)
end

function Quest70074:OnSubFinish7007413(arg1)
    print("OnSubFinish7007413")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1310.alias)
end

function Quest70074:OnSubStart7007414(arg1)
    print("OnSubStart7007414")
    actorMgr:CreateActorWithPos("Q7007414Trigger", "Actor/Gadget/Q7007414Trigger", 70900002, 0, points._Q7007414TriggerPoint_.pos, points._Q7007414TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70074:OnSubFinish7007414(arg1)
    print("OnSubFinish7007414")
    this:ActorDestroy("Q7007414Trigger", nil)
end

function Quest70074:OnSubFailed7007414(arg1)
    print("OnSubFailed7007414")
    this:RecycleAllRes()
    this:ActorDestroy("Q7007414Trigger", nil)
    this:ActionSafeCall(function(arg1)
        this:CancelAllStory()
    end)
end

function Quest70074:OnSubStart7007415(arg1)
    print("OnSubStart7007415")
    this:TransmitPlayerWithQuestIdByData(7007414, 1, datas.TransmitData7007414, function(arg1)
        this:ActionSafeCall(function(arg1)
            actorUtils.FinishQuestWithParam({false}, {7007415})
        end)
    end, function(arg1)
        this:DeployStoryByQuest(147007401)
    end, nil)
end

function Quest70074:OnSubFinish7007415(arg1)
    print("OnSubFinish7007415")
end

function Quest70074:OnSubFailed7007415(arg1)
    print("OnSubFailed7007415")
    this:RecycleAllRes()
end

function Quest70074:OnSubStart7007407(arg1)
    print("OnSubStart7007407")
end

function Quest70074:OnSubFinish7007407(arg1)
    print("OnSubFinish7007407")
end

function Quest70074:OnSubFailed7007407(arg1)
    print("OnSubFailed7007407")
    this:RecycleAllRes()
end

function Quest70074:OnSubStart7007408(arg1)
    print("OnSubStart7007408")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7007408, 0, 30, 1, npcs.Npc1310.id)
    this:CancelAllStory()
end

function Quest70074:OnSubFinish7007408(arg1)
    print("OnSubFinish7007408")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
end

function Quest70074:OnSubStart7007409(arg1)
    print("OnSubStart7007409")
    this:NpcCreateWithNpcTrigger(npcs.Npc1565.id, 0, 15, 7007409)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1061.id, arg1)
end

function Quest70074:OnSubFinish7007409(arg1)
    print("OnSubFinish7007409")
    this:NpcDestroyImmediately(3, npcs.Npc1565.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1061.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000128)
    end)
end

return Quest70074
