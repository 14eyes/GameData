require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75273 = class("Quest75273", QuestActorProxy)
Quest75273.defaultAlias = "Quest75273"
local clientData
local this
local mainID
local actorAlias

function Quest75273:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75273:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7527301"] = self.OnSubStart7527301, ["7527302"] = self.OnSubStart7527302}
end

function Quest75273:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7527301"] = self.OnSubFinish7527301, ["7527302"] = self.OnSubFinish7527302}
end

function Quest75273:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75273:Start()
    print("Start")
end

function Quest75273:OnDestroy()
    print("OnDestroy")
end

function Quest75273:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75273:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75273:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75273:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75273:OnSubStart7527301(arg1)
    print("OnSubStart7527301")
end

function Quest75273:OnSubFinish7527301(arg1)
    print("OnSubFinish7527301")
end

function Quest75273:OnSubStart7527302(arg1)
    print("OnSubStart7527302")
end

function Quest75273:OnSubFinish7527302(arg1)
    print("OnSubFinish7527302")
end

return Quest75273
