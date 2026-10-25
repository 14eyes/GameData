require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76064 = class("Quest76064", QuestActorProxy)
Quest76064.defaultAlias = "Quest76064"
local clientData
local this
local mainID
local actorAlias

function Quest76064:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76064:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7606401"] = self.OnSubStart7606401, ["7606402"] = self.OnSubStart7606402}
end

function Quest76064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7606401"] = self.OnSubFinish7606401, ["7606402"] = self.OnSubFinish7606402}
end

function Quest76064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76064:Start()
    print("Start")
end

function Quest76064:OnDestroy()
    print("OnDestroy")
end

function Quest76064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76064:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76064:OnSubStart7606401(arg1)
    print("OnSubStart7606401")
end

function Quest76064:OnSubFinish7606401(arg1)
    print("OnSubFinish7606401")
end

function Quest76064:OnSubStart7606402(arg1)
    print("OnSubStart7606402")
end

function Quest76064:OnSubFinish7606402(arg1)
    print("OnSubFinish7606402")
end

return Quest76064
