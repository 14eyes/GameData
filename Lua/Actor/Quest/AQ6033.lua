require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6033 = class("Quest6033", QuestActorProxy)
Quest6033.defaultAlias = "Quest6033"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest6033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest6033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["603301"] = self.OnSubStart603301}
end

function Quest6033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["603301"] = self.OnSubFinish603301}
end

function Quest6033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6033:Start()
    print("Start")
end

function Quest6033:OnDestroy()
    print("OnDestroy")
end

function Quest6033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6033:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6033:OnSubStart603301(arg1)
    print("OnSubStart603301")
    this:CreateQuestNpc(arg1, npcs.Npc16341.id, 0, false, 0)
end

function Quest6033:OnSubFinish603301(arg1)
    print("OnSubFinish603301")
    this:SafeDestroyQuestNpc(npcs.Npc16341.alias, 1204)
end

return Quest6033
