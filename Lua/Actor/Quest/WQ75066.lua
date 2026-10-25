require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75066 = class("Quest75066", QuestActorProxy)
Quest75066.defaultAlias = "Quest75066"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75066:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506601"] = self.OnSubStart7506601,
        ["7506602"] = self.OnSubStart7506602,
        ["7506603"] = self.OnSubStart7506603,
        ["7506604"] = self.OnSubStart7506604
    }
end

function Quest75066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506601"] = self.OnSubFinish7506601,
        ["7506602"] = self.OnSubFinish7506602,
        ["7506603"] = self.OnSubFinish7506603,
        ["7506604"] = self.OnSubFinish7506604
    }
end

function Quest75066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75066:Start()
    print("Start")
end

function Quest75066:OnDestroy()
    print("OnDestroy")
end

function Quest75066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75066:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest75066:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75066:OnSubStart7506601(arg1)
    print("OnSubStart7506601")
    actorMgr:CreateActorWithPos("Q7506601Trigger", "Actor/Gadget/Q7506601Trigger", 70900002, 0, points.TPos_Q7506601Trigger.pos, points.TPos_Q7506601Trigger.rot, true, false, 3)
end

function Quest75066:OnSubFinish7506601(arg1)
    print("OnSubFinish7506601")
end

function Quest75066:OnSubStart7506602(arg1)
    print("OnSubStart7506602")
end

function Quest75066:OnSubFinish7506602(arg1)
    print("OnSubFinish7506602")
end

function Quest75066:OnSubStart7506603(arg1)
    print("OnSubStart7506603")
end

function Quest75066:OnSubFinish7506603(arg1)
    print("OnSubFinish7506603")
end

function Quest75066:OnSubStart7506604(arg1)
    print("OnSubStart7506604")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21681Data.id, 7506604, 0, 20, 1)
end

function Quest75066:OnSubFinish7506604(arg1)
    print("OnSubFinish7506604")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21681Data.alias)
end

return Quest75066
