require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75255 = class("Quest75255", QuestActorProxy)
Quest75255.defaultAlias = "Quest75255"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75255:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75255:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7525501"] = self.OnSubStart7525501, ["7525503"] = self.OnSubStart7525503}
end

function Quest75255:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7525501"] = self.OnSubFinish7525501, ["7525503"] = self.OnSubFinish7525503}
end

function Quest75255:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75255:Start()
    print("Start")
end

function Quest75255:OnDestroy()
    print("OnDestroy")
end

function Quest75255:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75255:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75255:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75255:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75255:OnSubStart7525501(arg1)
    print("OnSubStart7525501")
    this:CreateQuestNpc(arg1, npcs.Npc6551.id, 0, false, 0)
end

function Quest75255:OnSubFinish7525501(arg1)
    print("OnSubFinish7525501")
end

function Quest75255:OnSubStart7525503(arg1)
    print("OnSubStart7525503")
    this:CreateQuestNpc(arg1, npcs.Npc6551.id, 0, false, 0)
end

function Quest75255:OnSubFinish7525503(arg1)
    print("OnSubFinish7525503")
end

return Quest75255
