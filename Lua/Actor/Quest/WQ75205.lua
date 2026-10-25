require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75205 = class("Quest75205", QuestActorProxy)
Quest75205.defaultAlias = "Quest75205"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75205:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75205:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520501"] = self.OnSubStart7520501, ["7520502"] = self.OnSubStart7520502}
end

function Quest75205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520501"] = self.OnSubFinish7520501, ["7520502"] = self.OnSubFinish7520502}
end

function Quest75205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75205:Start()
    print("Start")
end

function Quest75205:OnDestroy()
    print("OnDestroy")
end

function Quest75205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75205:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75205:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75205:OnSubStart7520501(arg1)
    print("OnSubStart7520501")
end

function Quest75205:OnSubFinish7520501(arg1)
    print("OnSubFinish7520501")
end

function Quest75205:OnSubStart7520502(arg1)
    print("OnSubStart7520502")
    this:CreateQuestNpc(arg1, npcs.Npc21829.id, 0, false, 0)
end

function Quest75205:OnSubFinish7520502(arg1)
    print("OnSubFinish7520502")
end

return Quest75205
