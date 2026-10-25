require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75062 = class("Quest75062", QuestActorProxy)
Quest75062.defaultAlias = "Quest75062"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75062:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506201"] = self.OnSubStart7506201,
        ["7506202"] = self.OnSubStart7506202,
        ["7506203"] = self.OnSubStart7506203,
        ["7506204"] = self.OnSubStart7506204
    }
end

function Quest75062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506201"] = self.OnSubFinish7506201,
        ["7506202"] = self.OnSubFinish7506202,
        ["7506203"] = self.OnSubFinish7506203,
        ["7506204"] = self.OnSubFinish7506204
    }
end

function Quest75062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75062:Start()
    print("Start")
end

function Quest75062:OnDestroy()
    print("OnDestroy")
end

function Quest75062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75062:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75062:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest75062:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75062:OnSubStart7506201(arg1)
    print("OnSubStart7506201")
    actorMgr:CreateActorWithPos("Q7506201Trigger", "Actor/Gadget/Q7506201Trigger", 70900002, 0, points.TPos_Q7506201Trigger.pos, points.TPos_Q7506201Trigger.rot, true, false, 3)
end

function Quest75062:OnSubFinish7506201(arg1)
    print("OnSubFinish7506201")
end

function Quest75062:OnSubStart7506202(arg1)
    print("OnSubStart7506202")
end

function Quest75062:OnSubFinish7506202(arg1)
    print("OnSubFinish7506202")
end

function Quest75062:OnSubStart7506203(arg1)
    print("OnSubStart7506203")
end

function Quest75062:OnSubFinish7506203(arg1)
    print("OnSubFinish7506203")
end

function Quest75062:OnSubStart7506204(arg1)
    print("OnSubStart7506204")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21680Data.id, 7506204, 0, 20, 1)
end

function Quest75062:OnSubFinish7506204(arg1)
    print("OnSubFinish7506204")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21680Data.alias)
end

return Quest75062
