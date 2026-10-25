require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74226 = class("Quest74226", QuestActorProxy)
Quest74226.defaultAlias = "Quest74226"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74226:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74226:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7422601"] = self.OnSubStart7422601}
end

function Quest74226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7422601"] = self.OnSubFinish7422601}
end

function Quest74226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74226:Start()
    print("Start")
end

function Quest74226:OnDestroy()
    print("OnDestroy")
end

function Quest74226:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74226:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74226:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74226:OnSubStart7422601(arg1)
    print("OnSubStart7422601")
    this:CreateQuestNpc(arg1, npcs.Npc21427Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21427Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest74226:OnSubFinish7422601(arg1)
    print("OnSubFinish7422601")
    this:SafeDestroyQuestNpc(npcs.Npc21427Data.alias, 11)
end

return Quest74226
