require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74675 = class("Quest74675", QuestActorProxy)
Quest74675.defaultAlias = "Quest74675"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74675:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467501"] = self.OnSubStart7467501}
end

function Quest74675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467501"] = self.OnSubFinish7467501}
end

function Quest74675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7467501"] = self.OnSubFailed7467501}
end

function Quest74675:Start()
    print("Start")
end

function Quest74675:OnDestroy()
    print("OnDestroy")
end

function Quest74675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74675:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30488.alias, 3)
end

function Quest74675:OnSubStart7467501(arg1)
    print("OnSubStart7467501")
    this:CreateQuestNpc(arg1, npcs.Npc30488.id, 0)
    this:GetQuestNpcActor(npcs.Npc30488.alias, 74675):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74675:OnSubFinish7467501(arg1)
    print("OnSubFinish7467501")
    this:SafeDestroyQuestNpc(npcs.Npc30488.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FilmfestMainPage", 3)
    end)
end

function Quest74675:OnSubFailed7467501(arg1)
    print("OnSubFailed7467501")
end

return Quest74675
