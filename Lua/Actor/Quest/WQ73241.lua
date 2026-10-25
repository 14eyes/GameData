require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73241 = class("Quest73241", QuestActorProxy)
Quest73241.defaultAlias = "Quest73241"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73241:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73241:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7324101"] = self.OnSubStart7324101}
end

function Quest73241:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7324101"] = self.OnSubFinish7324101}
end

function Quest73241:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73241:Start()
    print("Start")
end

function Quest73241:OnDestroy()
    print("OnDestroy")
end

function Quest73241:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73241:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73241:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73241:OnSubStart7324101(arg1)
    print("OnSubStart7324101")
end

function Quest73241:OnSubFinish7324101(arg1)
    print("OnSubFinish7324101")
end

return Quest73241
