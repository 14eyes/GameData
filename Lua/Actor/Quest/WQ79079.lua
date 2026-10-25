require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79079 = class("Quest79079", QuestActorProxy)
Quest79079.defaultAlias = "Quest79079"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79079:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79079:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907901"] = self.OnSubStart7907901, ["7907902"] = self.OnSubStart7907902}
end

function Quest79079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907901"] = self.OnSubFinish7907901, ["7907902"] = self.OnSubFinish7907902}
end

function Quest79079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79079:Start()
    print("Start")
end

function Quest79079:OnDestroy()
    print("OnDestroy")
end

function Quest79079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79079:OnSubStart7907901(arg1)
    print("OnSubStart7907901")
end

function Quest79079:OnSubFinish7907901(arg1)
    print("OnSubFinish7907901")
end

function Quest79079:OnSubStart7907902(arg1)
    print("OnSubStart7907902")
end

function Quest79079:OnSubFinish7907902(arg1)
    print("OnSubFinish7907902")
end

return Quest79079
