require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73253 = class("Quest73253", QuestActorProxy)
Quest73253.defaultAlias = "Quest73253"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73253:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73253:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7325301"] = self.OnSubStart7325301, ["7325302"] = self.OnSubStart7325302}
end

function Quest73253:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7325301"] = self.OnSubFinish7325301, ["7325302"] = self.OnSubFinish7325302}
end

function Quest73253:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73253:Start()
    print("Start")
end

function Quest73253:OnDestroy()
    print("OnDestroy")
end

function Quest73253:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73253:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73253:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73253:OnSubStart7325301(arg1)
    print("OnSubStart7325301")
    actorMgr:CreateActorWithPos("Q7325302Trigger", "Actor/Gadget/Q7325302Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325301_guide").pos, sceneData:GetDummyPoint(3, "Q7325301_guide").rot, true, false, 3)
end

function Quest73253:OnSubFinish7325301(arg1)
    print("OnSubFinish7325301")
end

function Quest73253:OnSubStart7325302(arg1)
    print("OnSubStart7325302")
end

function Quest73253:OnSubFinish7325302(arg1)
    print("OnSubFinish7325302")
end

return Quest73253
