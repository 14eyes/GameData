require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73703 = class("Quest73703", QuestActorProxy)
Quest73703.defaultAlias = "Quest73703"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73703:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73703:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7370301"] = self.OnSubStart7370301}
end

function Quest73703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7370301"] = self.OnSubFinish7370301}
end

function Quest73703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73703:Start()
    print("Start")
end

function Quest73703:OnDestroy()
    print("OnDestroy")
end

function Quest73703:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73703:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13356Data.alias, 3)
end

function Quest73703:OnSubStart7370301(arg1)
    print("OnSubStart7370301")
    this:CreateQuestNpc(arg1, npcs.Npc13356Data.id, 0)
end

function Quest73703:OnSubFinish7370301(arg1)
    print("OnSubFinish7370301")
    this:SafeDestroyQuestNpc(npcs.Npc13356Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(975)
    end)
end

return Quest73703
