require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74680 = class("Quest74680", QuestActorProxy)
Quest74680.defaultAlias = "Quest74680"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74680:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74680:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468001"] = self.OnSubStart7468001}
end

function Quest74680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468001"] = self.OnSubFinish7468001}
end

function Quest74680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7468001"] = self.OnSubFailed7468001}
end

function Quest74680:Start()
    print("Start")
end

function Quest74680:OnDestroy()
    print("OnDestroy")
end

function Quest74680:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74680:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74680:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30486.alias, 3)
end

function Quest74680:OnSubStart7468001(arg1)
    print("OnSubStart7468001")
    this:CreateQuestNpc(arg1, npcs.Npc30486.id, 0)
    this:GetQuestNpcActor(npcs.Npc30486.alias, 74680):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest74680:OnSubFinish7468001(arg1)
    print("OnSubFinish7468001")
    this:SafeDestroyQuestNpc(npcs.Npc30486.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FilmfestMainPage", 2)
    end)
end

function Quest74680:OnSubFailed7468001(arg1)
    print("OnSubFailed7468001")
end

return Quest74680
