require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74679 = class("Quest74679", QuestActorProxy)
Quest74679.defaultAlias = "Quest74679"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74679:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74679:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467901"] = self.OnSubStart7467901}
end

function Quest74679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467901"] = self.OnSubFinish7467901}
end

function Quest74679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7467901"] = self.OnSubFailed7467901}
end

function Quest74679:Start()
    print("Start")
end

function Quest74679:OnDestroy()
    print("OnDestroy")
end

function Quest74679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74679:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30485.alias, 3)
end

function Quest74679:OnSubStart7467901(arg1)
    print("OnSubStart7467901")
    this:CreateQuestNpc(arg1, npcs.Npc30485.id, 0)
end

function Quest74679:OnSubFinish7467901(arg1)
    print("OnSubFinish7467901")
    this:SafeDestroyQuestNpc(npcs.Npc30485.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FilmfestMainPage", 0)
    end)
end

function Quest74679:OnSubFailed7467901(arg1)
    print("OnSubFailed7467901")
end

return Quest74679
