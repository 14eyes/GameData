require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19033 = class("Quest19033", QuestActorProxy)
Quest19033.defaultAlias = "Quest19033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1903301"] = self.OnSubStart1903301}
end

function Quest19033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1903301"] = self.OnSubFinish1903301}
end

function Quest19033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1903301"] = self.OnSubFailed1903301}
end

function Quest19033:Start()
    print("Start")
end

function Quest19033:OnDestroy()
    print("OnDestroy")
end

function Quest19033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
end

function Quest19033:OnSubStart1903301(arg1)
    print("OnSubStart1903301")
    self:CreateQuestNpc(arg1, npcs.Npc10905Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19033:OnSubFinish1903301(arg1)
    print("OnSubFinish1903301")
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
end

function Quest19033:OnSubFailed1903301(arg1)
    print("OnSubFailed1903301")
end

return Quest19033
