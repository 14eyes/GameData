require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72133 = class("Quest72133", QuestActorProxy)
Quest72133.defaultAlias = "Quest72133"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72133:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72133:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7213301"] = self.OnSubStart7213301}
end

function Quest72133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7213301"] = self.OnSubFinish7213301}
end

function Quest72133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7213301"] = self.OnSubFailed7213301}
end

function Quest72133:Start()
    print("Start")
end

function Quest72133:OnDestroy()
    print("OnDestroy")
end

function Quest72133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72133:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72133:OnSubStart7213301(arg1)
    print("OnSubStart7213301")
end

function Quest72133:OnSubFinish7213301(arg1)
    print("OnSubFinish7213301")
end

function Quest72133:OnSubFailed7213301(arg1)
    print("OnSubFailed7213301")
end

return Quest72133
