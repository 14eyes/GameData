require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71086 = class("Quest71086", QuestActorProxy)
Quest71086.defaultAlias = "Quest71086"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71086:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71086:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108601"] = self.OnSubStart7108601}
end

function Quest71086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108601"] = self.OnSubFinish7108601}
end

function Quest71086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71086:Start()
    print("Start")
end

function Quest71086:OnDestroy()
    print("OnDestroy")
end

function Quest71086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71086:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71086:OnSubStart7108601(arg1)
    print("OnSubStart7108601")
end

function Quest71086:OnSubFinish7108601(arg1)
    print("OnSubFinish7108601")
end

return Quest71086
