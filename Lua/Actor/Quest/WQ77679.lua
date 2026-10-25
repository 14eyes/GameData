require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77679 = class("Quest77679", QuestActorProxy)
Quest77679.defaultAlias = "Quest77679"
local clientData
local this
local mainID
local actorAlias

function Quest77679:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77679:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7767901"] = self.OnSubStart7767901, ["7767902"] = self.OnSubStart7767902}
end

function Quest77679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7767901"] = self.OnSubFinish7767901, ["7767902"] = self.OnSubFinish7767902}
end

function Quest77679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77679:Start()
    print("Start")
end

function Quest77679:OnDestroy()
    print("OnDestroy")
end

function Quest77679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77679:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77679:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77679:OnSubStart7767901(arg1)
    print("OnSubStart7767901")
end

function Quest77679:OnSubFinish7767901(arg1)
    print("OnSubFinish7767901")
end

function Quest77679:OnSubStart7767902(arg1)
    print("OnSubStart7767902")
end

function Quest77679:OnSubFinish7767902(arg1)
    print("OnSubFinish7767902")
end

return Quest77679
