require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75664 = class("Quest75664", QuestActorProxy)
Quest75664.defaultAlias = "Quest75664"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75664:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566401"] = self.OnSubStart7566401}
end

function Quest75664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566401"] = self.OnSubFinish7566401}
end

function Quest75664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75664:Start()
    print("Start")
end

function Quest75664:OnDestroy()
    print("OnDestroy")
end

function Quest75664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75664:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30774.alias, 3)
end

function Quest75664:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75664:OnSubStart7566401(arg1)
    print("OnSubStart7566401")
    this:CreateQuestNpc(arg1, npcs.Npc30774.id, 0, false, 0)
end

function Quest75664:OnSubFinish7566401(arg1)
    print("OnSubFinish7566401")
    this:SafeDestroyQuestNpc(npcs.Npc30774.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2070, nil)
    end)
end

return Quest75664
