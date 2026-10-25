require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75041 = class("Quest75041", QuestActorProxy)
Quest75041.defaultAlias = "Quest75041"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75041:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7504101"] = self.OnSubStart7504101,
        ["7504102"] = self.OnSubStart7504102,
        ["7504103"] = self.OnSubStart7504103,
        ["7504104"] = self.OnSubStart7504104
    }
end

function Quest75041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7504101"] = self.OnSubFinish7504101,
        ["7504102"] = self.OnSubFinish7504102,
        ["7504103"] = self.OnSubFinish7504103,
        ["7504104"] = self.OnSubFinish7504104
    }
end

function Quest75041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75041:Start()
    print("Start")
end

function Quest75041:OnDestroy()
    print("OnDestroy")
end

function Quest75041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75041:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest75041:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75041:OnSubStart7504101(arg1)
    print("OnSubStart7504101")
    actorMgr:CreateActorWithPos("Q7504101Trigger", "Actor/Gadget/Q7504101Trigger", 70900002, 0, points.TPos_Q7504101Trigger.pos, points.TPos_Q7504101Trigger.rot, true, false, 3)
end

function Quest75041:OnSubFinish7504101(arg1)
    print("OnSubFinish7504101")
end

function Quest75041:OnSubStart7504102(arg1)
    print("OnSubStart7504102")
end

function Quest75041:OnSubFinish7504102(arg1)
    print("OnSubFinish7504102")
end

function Quest75041:OnSubStart7504103(arg1)
    print("OnSubStart7504103")
end

function Quest75041:OnSubFinish7504103(arg1)
    print("OnSubFinish7504103")
end

function Quest75041:OnSubStart7504104(arg1)
    print("OnSubStart7504104")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21679Data.id, 7504104, 0, 20, 1)
end

function Quest75041:OnSubFinish7504104(arg1)
    print("OnSubFinish7504104")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21679Data.alias)
end

return Quest75041
