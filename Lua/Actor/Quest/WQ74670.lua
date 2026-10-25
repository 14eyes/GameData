require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74670 = class("Quest74670", QuestActorProxy)
Quest74670.defaultAlias = "Quest74670"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74670:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74670:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467001"] = self.OnSubStart7467001}
end

function Quest74670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467001"] = self.OnSubFinish7467001}
end

function Quest74670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74670:Start()
    print("Start")
end

function Quest74670:OnDestroy()
    print("OnDestroy")
end

function Quest74670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74670:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74670:OnSubStart7467001(arg1)
    print("OnSubStart7467001")
    this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 1)
end

function Quest74670:OnSubFinish7467001(arg1)
    print("OnSubFinish7467001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5033Data.alias)
end

return Quest74670
