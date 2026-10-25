require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40052 = class("Quest40052", QuestActorProxy)
Quest40052.defaultAlias = "Quest40052"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40052:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40052:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4005201"] = self.OnSubStart4005201}
end

function Quest40052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4005201"] = self.OnSubFinish4005201}
end

function Quest40052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40052:Start()
    print("Start")
end

function Quest40052:OnDestroy()
    print("OnDestroy")
end

function Quest40052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40052:OnSubStart4005201(arg1)
    print("OnSubStart4005201")
end

function Quest40052:OnSubFinish4005201(arg1)
    print("OnSubFinish4005201")
end

return Quest40052
