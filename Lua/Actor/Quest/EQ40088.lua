require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40088 = class("Quest40088", QuestActorProxy)
Quest40088.defaultAlias = "Quest40088"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40088:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40088:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4008801"] = self.OnSubStart4008801}
end

function Quest40088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4008801"] = self.OnSubFinish4008801}
end

function Quest40088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40088:Start()
    print("Start")
end

function Quest40088:OnDestroy()
    print("OnDestroy")
end

function Quest40088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40088:OnSubStart4008801(arg1)
    print("OnSubStart4008801")
end

function Quest40088:OnSubFinish4008801(arg1)
    print("OnSubFinish4008801")
end

return Quest40088
