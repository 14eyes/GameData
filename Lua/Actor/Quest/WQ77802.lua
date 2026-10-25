require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77802 = class("Quest77802", QuestActorProxy)
Quest77802.defaultAlias = "Quest77802"
local clientData
local this
local mainID
local actorAlias

function Quest77802:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77802:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780201"] = self.OnSubStart7780201}
end

function Quest77802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780201"] = self.OnSubFinish7780201}
end

function Quest77802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77802:Start()
    print("Start")
end

function Quest77802:OnDestroy()
    print("OnDestroy")
end

function Quest77802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77802:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77802:OnSubStart7780201(arg1)
    print("OnSubStart7780201")
end

function Quest77802:OnSubFinish7780201(arg1)
    print("OnSubFinish7780201")
end

return Quest77802
