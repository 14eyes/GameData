require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71154 = class("Quest71154", QuestActorProxy)
Quest71154.defaultAlias = "Quest71154"
local clientData
local this
local mainID
local actorAlias

function Quest71154:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71154:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115401"] = self.OnSubStart7115401, ["7115402"] = self.OnSubStart7115402}
end

function Quest71154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115401"] = self.OnSubFinish7115401, ["7115402"] = self.OnSubFinish7115402}
end

function Quest71154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71154:Start()
    print("Start")
end

function Quest71154:OnDestroy()
    print("OnDestroy")
end

function Quest71154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71154:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71154:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71154:OnSubStart7115401(arg1)
    print("OnSubStart7115401")
end

function Quest71154:OnSubFinish7115401(arg1)
    print("OnSubFinish7115401")
end

function Quest71154:OnSubStart7115402(arg1)
    print("OnSubStart7115402")
end

function Quest71154:OnSubFinish7115402(arg1)
    print("OnSubFinish7115402")
end

return Quest71154
