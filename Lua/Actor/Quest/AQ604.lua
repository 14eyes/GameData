require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest604 = class("Quest604", QuestActorProxy)
Quest604.defaultAlias = "Quest604"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest604:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest604:OnSubStartHandlerBuild()
    self.subStartHandlers = {["60401"] = self.OnSubStart60401}
end

function Quest604:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["60401"] = self.OnSubFinish60401}
end

function Quest604:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest604:Start()
    print("Start")
end

function Quest604:OnDestroy()
    print("OnDestroy")
end

function Quest604:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest604:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest604:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest604:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest604:OnSubStart60401(arg1)
    print("OnSubStart60401")
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
end

function Quest604:OnSubFinish60401(arg1)
    print("OnSubFinish60401")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
end

return Quest604
