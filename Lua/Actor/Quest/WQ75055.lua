require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75055 = class("Quest75055", QuestActorProxy)
Quest75055.defaultAlias = "Quest75055"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75055:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75055:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7505501"] = self.OnSubStart7505501}
end

function Quest75055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7505501"] = self.OnSubFinish7505501}
end

function Quest75055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75055:Start()
    print("Start")
end

function Quest75055:OnDestroy()
    print("OnDestroy")
end

function Quest75055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75055:OnSubStart7505501(arg1)
    print("OnSubStart7505501")
end

function Quest75055:OnSubFinish7505501(arg1)
    print("OnSubFinish7505501")
end

return Quest75055
