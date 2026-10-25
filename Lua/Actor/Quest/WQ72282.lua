require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72282 = class("Quest72282", QuestActorProxy)
Quest72282.defaultAlias = "Quest72282"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72282:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72282:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7228201"] = self.OnSubStart7228201, ["7228202"] = self.OnSubStart7228202}
end

function Quest72282:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7228201"] = self.OnSubFinish7228201, ["7228202"] = self.OnSubFinish7228202}
end

function Quest72282:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72282:Start()
    print("Start")
end

function Quest72282:OnDestroy()
    print("OnDestroy")
end

function Quest72282:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72282:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72282:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72282:OnSubStart7228201(arg1)
    print("OnSubStart7228201")
end

function Quest72282:OnSubFinish7228201(arg1)
    print("OnSubFinish7228201")
end

function Quest72282:OnSubStart7228202(arg1)
    print("OnSubStart7228202")
end

function Quest72282:OnSubFinish7228202(arg1)
    print("OnSubFinish7228202")
end

return Quest72282
