require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71141 = class("Quest71141", QuestActorProxy)
Quest71141.defaultAlias = "Quest71141"
local clientData
local this
local mainID
local actorAlias

function Quest71141:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71141:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7114101"] = self.OnSubStart7114101}
end

function Quest71141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7114101"] = self.OnSubFinish7114101}
end

function Quest71141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71141:Start()
    print("Start")
end

function Quest71141:OnDestroy()
    print("OnDestroy")
end

function Quest71141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71141:OnSubStart7114101(arg1)
    print("OnSubStart7114101")
end

function Quest71141:OnSubFinish7114101(arg1)
    print("OnSubFinish7114101")
end

return Quest71141
