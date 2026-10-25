require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75067 = class("Quest75067", QuestActorProxy)
Quest75067.defaultAlias = "Quest75067"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75067:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506701"] = self.OnSubStart7506701,
        ["7506702"] = self.OnSubStart7506702,
        ["7506703"] = self.OnSubStart7506703,
        ["7506704"] = self.OnSubStart7506704
    }
end

function Quest75067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506701"] = self.OnSubFinish7506701,
        ["7506702"] = self.OnSubFinish7506702,
        ["7506703"] = self.OnSubFinish7506703,
        ["7506704"] = self.OnSubFinish7506704
    }
end

function Quest75067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75067:Start()
    print("Start")
end

function Quest75067:OnDestroy()
    print("OnDestroy")
end

function Quest75067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75067:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest75067:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75067:OnSubStart7506701(arg1)
    print("OnSubStart7506701")
    actorMgr:CreateActorWithPos("Q7506701Trigger", "Actor/Gadget/Q7506701Trigger", 70900002, 0, points.TPos_Q7506701Trigger.pos, points.TPos_Q7506701Trigger.rot, true, false, 3)
end

function Quest75067:OnSubFinish7506701(arg1)
    print("OnSubFinish7506701")
end

function Quest75067:OnSubStart7506702(arg1)
    print("OnSubStart7506702")
end

function Quest75067:OnSubFinish7506702(arg1)
    print("OnSubFinish7506702")
end

function Quest75067:OnSubStart7506703(arg1)
    print("OnSubStart7506703")
end

function Quest75067:OnSubFinish7506703(arg1)
    print("OnSubFinish7506703")
end

function Quest75067:OnSubStart7506704(arg1)
    print("OnSubStart7506704")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21682Data.id, 7506704, 0, 20, 1)
end

function Quest75067:OnSubFinish7506704(arg1)
    print("OnSubFinish7506704")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21682Data.alias)
end

return Quest75067
