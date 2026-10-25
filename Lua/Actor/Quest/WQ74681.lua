require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74681 = class("Quest74681", QuestActorProxy)
Quest74681.defaultAlias = "Quest74681"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74681:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74681:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468101"] = self.OnSubStart7468101}
end

function Quest74681:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468101"] = self.OnSubFinish7468101}
end

function Quest74681:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7468101"] = self.OnSubFailed7468101}
end

function Quest74681:Start()
    print("Start")
end

function Quest74681:OnDestroy()
    print("OnDestroy")
end

function Quest74681:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74681:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74681:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30487.alias, 3)
end

function Quest74681:OnSubStart7468101(arg1)
    print("OnSubStart7468101")
    this:CreateQuestNpc(arg1, npcs.Npc30487.id, 0)
    this:GetQuestNpcActor(npcs.Npc30487.alias, 74681):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74681:OnSubFinish7468101(arg1)
    print("OnSubFinish7468101")
    this:SafeDestroyQuestNpc(npcs.Npc30487.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FilmfestMainPage", 1)
    end)
end

function Quest74681:OnSubFailed7468101(arg1)
    print("OnSubFailed7468101")
end

return Quest74681
