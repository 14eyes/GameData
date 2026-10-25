require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73274 = class("Quest73274", QuestActorProxy)
Quest73274.defaultAlias = "Quest73274"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73274:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73274:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327401"] = self.OnSubStart7327401, ["7327402"] = self.OnSubStart7327402}
end

function Quest73274:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327401"] = self.OnSubFinish7327401, ["7327402"] = self.OnSubFinish7327402}
end

function Quest73274:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73274:Start()
    print("Start")
end

function Quest73274:OnDestroy()
    print("OnDestroy")
end

function Quest73274:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73274:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73274:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73274:OnSubStart7327401(arg1)
    print("OnSubStart7327401")
end

function Quest73274:OnSubFinish7327401(arg1)
    print("OnSubFinish7327401")
end

function Quest73274:OnSubStart7327402(arg1)
    print("OnSubStart7327402")
end

function Quest73274:OnSubFinish7327402(arg1)
    print("OnSubFinish7327402")
end

return Quest73274
