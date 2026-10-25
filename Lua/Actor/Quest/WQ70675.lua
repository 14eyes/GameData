require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70675 = class("Quest70675", QuestActorProxy)
Quest70675.defaultAlias = "Quest70675"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest70675:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067501"] = self.OnSubStart7067501, ["7067502"] = self.OnSubStart7067502}
end

function Quest70675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067501"] = self.OnSubFinish7067501, ["7067502"] = self.OnSubFinish7067502}
end

function Quest70675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70675:Start()
    print("Start")
end

function Quest70675:OnDestroy()
    print("OnDestroy")
end

function Quest70675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70675:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70675:OnSubStart7067501(arg1)
    print("OnSubStart7067501")
    if sceneData.currSceneID == 1076 then
        actorUtils.FinishQuestID(false, 7067501)
    end
end

function Quest70675:OnSubFinish7067501(arg1)
    print("OnSubFinish7067501")
end

function Quest70675:OnSubStart7067502(arg1)
    print("OnSubStart7067502")
    this:CreateQuestNpc(arg1, npcs.Npc1712Data.id, 0)
    actorMgr:CreateActorWithPos("Q70675Trigger", "Actor/Gadget/Q70675Trigger", 70900002, 0, points.TPos_Q70675Trigger.pos, points.TPos_Q70675Trigger.rot, true, false, 1076)
end

function Quest70675:OnSubFinish7067502(arg1)
    print("OnSubFinish7067502")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1712Data.alias, 3)
    end)
end

return Quest70675
