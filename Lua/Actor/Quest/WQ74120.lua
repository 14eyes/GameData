require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74120 = class("Quest74120", QuestActorProxy)
Quest74120.defaultAlias = "Quest74120"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74120:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7412001"] = self.OnSubStart7412001,
        ["7412002"] = self.OnSubStart7412002,
        ["7412003"] = self.OnSubStart7412003
    }
end

function Quest74120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7412001"] = self.OnSubFinish7412001,
        ["7412002"] = self.OnSubFinish7412002,
        ["7412003"] = self.OnSubFinish7412003
    }
end

function Quest74120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74120:Start()
    print("Start")
end

function Quest74120:OnDestroy()
    print("OnDestroy")
end

function Quest74120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74120:OnSubStart7412001(arg1)
    print("OnSubStart7412001")
end

function Quest74120:OnSubFinish7412001(arg1)
    print("OnSubFinish7412001")
end

function Quest74120:OnSubStart7412002(arg1)
    print("OnSubStart7412002")
    actorMgr:CreateActorWithPos("Q74120Trigger", "Actor/Gadget/Q74120Trigger", 70900002, 0, {x = 200.067, y = -21.491, z = 199.833}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1080)
end

function Quest74120:OnSubFinish7412002(arg1)
    print("OnSubFinish7412002")
end

function Quest74120:OnSubStart7412003(arg1)
    print("OnSubStart7412003")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q74120Trigger1", "Actor/Gadget/Q74120Trigger1", 70900002, 0, points.TPos_Q74120Trigger1.pos, points.TPos_Q74120Trigger1.rot, true, false, 1080)
end

function Quest74120:OnSubFinish7412003(arg1)
    print("OnSubFinish7412003")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 1080)
end

return Quest74120
