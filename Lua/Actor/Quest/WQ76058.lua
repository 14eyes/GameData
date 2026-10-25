require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76058 = class("Quest76058", QuestActorProxy)
Quest76058.defaultAlias = "Quest76058"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76058:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76058:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605801"] = self.OnSubStart7605801, ["7605802"] = self.OnSubStart7605802}
end

function Quest76058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605801"] = self.OnSubFinish7605801, ["7605802"] = self.OnSubFinish7605802}
end

function Quest76058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76058:Start()
    print("Start")
end

function Quest76058:OnDestroy()
    print("OnDestroy")
end

function Quest76058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76058:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76058:OnSubStart7605801(arg1)
    print("OnSubStart7605801")
end

function Quest76058:OnSubFinish7605801(arg1)
    print("OnSubFinish7605801")
end

function Quest76058:OnSubStart7605802(arg1)
    print("OnSubStart7605802")
    this:CreateQuestNpc(arg1, npcs.Npc7041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22101.id, 0, false, 0)
end

function Quest76058:OnSubFinish7605802(arg1)
    print("OnSubFinish7605802")
    this:SafeDestroyQuestNpc(npcs.Npc7041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22101.alias, 3)
end

return Quest76058
