require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79070 = class("Quest79070", QuestActorProxy)
Quest79070.defaultAlias = "Quest79070"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79070:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79070:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907001"] = self.OnSubStart7907001, ["7907002"] = self.OnSubStart7907002}
end

function Quest79070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907001"] = self.OnSubFinish7907001, ["7907002"] = self.OnSubFinish7907002}
end

function Quest79070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79070:Start()
    print("Start")
end

function Quest79070:OnDestroy()
    print("OnDestroy")
end

function Quest79070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79070:OnSubStart7907001(arg1)
    print("OnSubStart7907001")
    this:CreateQuestNpc(arg1, npcs.Npc21471Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21472Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21469Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21467Data.id, 0, false, 0)
end

function Quest79070:OnSubFinish7907001(arg1)
    print("OnSubFinish7907001")
end

function Quest79070:OnSubStart7907002(arg1)
    print("OnSubStart7907002")
end

function Quest79070:OnSubFinish7907002(arg1)
    print("OnSubFinish7907002")
end

return Quest79070
