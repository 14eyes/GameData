require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70530 = class("Quest70530", QuestActorProxy)
Quest70530.defaultAlias = "Quest70530"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70530:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70530:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053001"] = self.OnSubStart7053001, ["7053002"] = self.OnSubStart7053002}
end

function Quest70530:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053001"] = self.OnSubFinish7053001, ["7053002"] = self.OnSubFinish7053002}
end

function Quest70530:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70530:Start()
    print("Start")
end

function Quest70530:OnDestroy()
    print("OnDestroy")
end

function Quest70530:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70530:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70530:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q70530Trigger", 3, false)
end

function Quest70530:OnSubStart7053001(arg1)
    print("OnSubStart7053001")
    actorMgr:CreateActorWithPos("Q70530Trigger", "Actor/Gadget/Q70530Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").pos, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").rot, true, false, 3)
end

function Quest70530:OnSubFinish7053001(arg1)
    print("OnSubFinish7053001")
end

function Quest70530:OnSubStart7053002(arg1)
    print("OnSubStart7053002")
end

function Quest70530:OnSubFinish7053002(arg1)
    print("OnSubFinish7053002")
end

return Quest70530
