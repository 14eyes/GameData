require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19150 = class("Quest19150", QuestActorProxy)
Quest19150.defaultAlias = "Quest19150"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19150:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19150:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1915002"] = self.OnSubStart1915002}
end

function Quest19150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1915002"] = self.OnSubFinish1915002}
end

function Quest19150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19150:Start()
    print("Start")
end

function Quest19150:OnDestroy()
    print("OnDestroy")
end

function Quest19150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19150:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
end

function Quest19150:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19150:OnSubStart1915002(arg1)
    print("OnSubStart1915002")
    this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
    this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915002)
end

function Quest19150:OnSubFinish1915002(arg1)
    print("OnSubFinish1915002")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

return Quest19150
