require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12802 = class("Quest12802", QuestActorProxy)
Quest12802.defaultAlias = "Quest12802"
local clientData
local this
local mainID
local actorAlias

function Quest12802:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest12802:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1280201"] = self.OnSubStart1280201}
end

function Quest12802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1280201"] = self.OnSubFinish1280201}
end

function Quest12802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12802:Start()
    print("Start")
end

function Quest12802:OnDestroy()
    print("OnDestroy")
end

function Quest12802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12802:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest12802:OnSubStart1280201(arg1)
    print("OnSubStart1280201")
end

function Quest12802:OnSubFinish1280201(arg1)
    print("OnSubFinish1280201")
end

return Quest12802
