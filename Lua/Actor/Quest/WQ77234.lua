require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77234 = class("Quest77234", QuestActorProxy)
Quest77234.defaultAlias = "Quest77234"
local clientData
local this
local mainID
local actorAlias

function Quest77234:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77234:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7723401"] = self.OnSubStart7723401, ["7723402"] = self.OnSubStart7723402}
end

function Quest77234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7723401"] = self.OnSubFinish7723401, ["7723402"] = self.OnSubFinish7723402}
end

function Quest77234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77234:Start()
    print("Start")
end

function Quest77234:OnDestroy()
    print("OnDestroy")
end

function Quest77234:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77234:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77234:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77234:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77234:OnSubStart7723401(arg1)
    print("OnSubStart7723401")
end

function Quest77234:OnSubFinish7723401(arg1)
    print("OnSubFinish7723401")
end

function Quest77234:OnSubStart7723402(arg1)
    print("OnSubStart7723402")
end

function Quest77234:OnSubFinish7723402(arg1)
    print("OnSubFinish7723402")
end

return Quest77234
