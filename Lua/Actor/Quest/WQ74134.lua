require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74134 = class("Quest74134", QuestActorProxy)
Quest74134.defaultAlias = "Quest74134"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74134:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7413401"] = self.OnSubStart7413401,
        ["7413402"] = self.OnSubStart7413402,
        ["7413403"] = self.OnSubStart7413403,
        ["7413404"] = self.OnSubStart7413404
    }
end

function Quest74134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7413401"] = self.OnSubFinish7413401,
        ["7413402"] = self.OnSubFinish7413402,
        ["7413403"] = self.OnSubFinish7413403,
        ["7413404"] = self.OnSubFinish7413404
    }
end

function Quest74134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74134:Start()
    print("Start")
end

function Quest74134:OnDestroy()
    print("OnDestroy")
end

function Quest74134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74134:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74134:OnSubStart7413401(arg1)
    print("OnSubStart7413401")
end

function Quest74134:OnSubFinish7413401(arg1)
    print("OnSubFinish7413401")
end

function Quest74134:OnSubStart7413402(arg1)
    print("OnSubStart7413402")
    actorMgr:CreateActorWithPos("Q7413402Trigger", "Actor/Gadget/Q7413402Trigger", 70900002, 0, points.TPos_Q7413402Trigger.pos, points.TPos_Q7413402Trigger.rot, true, false, 3)
end

function Quest74134:OnSubFinish7413402(arg1)
    print("OnSubFinish7413402")
end

function Quest74134:OnSubStart7413403(arg1)
    print("OnSubStart7413403")
    actorMgr:CreateActorWithPos("Q7413403Trigger", "Actor/Gadget/Q7413403Trigger", 70900002, 0, points.TPos_Q7413403Trigger.pos, points.TPos_Q7413403Trigger.rot, true, false, 1080)
end

function Quest74134:OnSubFinish7413403(arg1)
    print("OnSubFinish7413403")
end

function Quest74134:OnSubStart7413404(arg1)
    print("OnSubStart7413404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7413404, 0, 5, 1)
end

function Quest74134:OnSubFinish7413404(arg1)
    print("OnSubFinish7413404")
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 1080)
end

return Quest74134
