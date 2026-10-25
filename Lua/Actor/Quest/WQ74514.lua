require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74514 = class("Quest74514", QuestActorProxy)
Quest74514.defaultAlias = "Quest74514"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74514:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74514:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451401"] = self.OnSubStart7451401}
end

function Quest74514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451401"] = self.OnSubFinish7451401}
end

function Quest74514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74514:Start()
    print("Start")
end

function Quest74514:OnDestroy()
    print("OnDestroy")
end

function Quest74514:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74514:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30567Data.alias, 3)
end

function Quest74514:OnSubStart7451401(arg1)
    print("OnSubStart7451401")
    this:CreateQuestNpc(arg1, npcs.Npc30567Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30567Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74514:OnSubFinish7451401(arg1)
    print("OnSubFinish7451401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc30567Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc30567Data.alias, 3)
    end, function(arg1)
        actorUtils.ShowContext("ActivityPhotographV4MainPage", 0)
    end, nil, 0, false, true)
end

return Quest74514
