require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70532 = class("Quest70532", QuestActorProxy)
Quest70532.defaultAlias = "Quest70532"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70532:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70532:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053201"] = self.OnSubStart7053201}
end

function Quest70532:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053201"] = self.OnSubFinish7053201}
end

function Quest70532:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70532:Start()
    print("Start")
end

function Quest70532:OnDestroy()
    print("OnDestroy")
end

function Quest70532:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70532:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70532:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70532:OnSubStart7053201(arg1)
    print("OnSubStart7053201")
end

function Quest70532:OnSubFinish7053201(arg1)
    print("OnSubFinish7053201")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(972)
    end)
end

return Quest70532
