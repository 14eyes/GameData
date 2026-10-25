require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71542 = class("Quest71542", QuestActorProxy)
Quest71542.defaultAlias = "Quest71542"
local clientData
local this
local mainID
local actorAlias

function Quest71542:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71542:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154201"] = self.OnSubStart7154201}
end

function Quest71542:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154201"] = self.OnSubFinish7154201}
end

function Quest71542:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71542:Start()
    print("Start")
end

function Quest71542:OnDestroy()
    print("OnDestroy")
end

function Quest71542:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71542:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71542:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71542:OnSubStart7154201(arg1)
    print("OnSubStart7154201")
end

function Quest71542:OnSubFinish7154201(arg1)
    print("OnSubFinish7154201")
end

return Quest71542
