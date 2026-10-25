require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79076 = class("Quest79076", QuestActorProxy)
Quest79076.defaultAlias = "Quest79076"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79076:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79076:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907601"] = self.OnSubStart7907601}
end

function Quest79076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907601"] = self.OnSubFinish7907601}
end

function Quest79076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79076:Start()
    print("Start")
end

function Quest79076:OnDestroy()
    print("OnDestroy")
end

function Quest79076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79076:OnSubStart7907601(arg1)
    print("OnSubStart7907601")
end

function Quest79076:OnSubFinish7907601(arg1)
    print("OnSubFinish7907601")
end

return Quest79076
