require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72671 = class("Quest72671", QuestActorProxy)
Quest72671.defaultAlias = "Quest72671"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72671:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7267101"] = self.OnSubStart7267101}
end

function Quest72671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7267101"] = self.OnSubFinish7267101}
end

function Quest72671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72671:Start()
    print("Start")
end

function Quest72671:OnDestroy()
    print("OnDestroy")
end

function Quest72671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72671:OnSubStart7267101(arg1)
    print("OnSubStart7267101")
end

function Quest72671:OnSubFinish7267101(arg1)
    print("OnSubFinish7267101")
end

return Quest72671
