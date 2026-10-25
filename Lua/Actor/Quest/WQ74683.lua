require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74683 = class("Quest74683", QuestActorProxy)
Quest74683.defaultAlias = "Quest74683"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74683:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74683:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468301"] = self.OnSubStart7468301}
end

function Quest74683:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468301"] = self.OnSubFinish7468301}
end

function Quest74683:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74683:Start()
    print("Start")
end

function Quest74683:OnDestroy()
    print("OnDestroy")
end

function Quest74683:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74683:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74683:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30771Data.alias, 3)
end

function Quest74683:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74683:OnSubStart7468301(arg1)
    print("OnSubStart7468301")
    this:CreateQuestNpc(arg1, npcs.Npc30771Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30771Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74683:OnSubFinish7468301(arg1)
    print("OnSubFinish7468301")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ADShootingDetailPage", 0)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc30771Data.alias)
end

return Quest74683
