require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40180 = class("Quest40180", QuestActorProxy)
Quest40180.defaultAlias = "Quest40180"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40180:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40180:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4018001"] = self.OnSubStart4018001}
end

function Quest40180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4018001"] = self.OnSubFinish4018001}
end

function Quest40180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40180:Start()
    print("Start")
end

function Quest40180:OnDestroy()
    print("OnDestroy")
end

function Quest40180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40180:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14567.alias, 3)
end

function Quest40180:OnSubStart4018001(arg1)
    print("OnSubStart4018001")
    this:CreateQuestNpc(arg1, npcs.Npc14567.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14567.alias, 40180):DoFreeStyle(1010, true, nil, true, true, false, true)
end

function Quest40180:OnSubFinish4018001(arg1)
    print("OnSubFinish4018001")
    this:SafeDestroyQuestNpc(npcs.Npc14567.alias, 3)
end

return Quest40180
