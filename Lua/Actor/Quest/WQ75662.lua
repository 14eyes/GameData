require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75662 = class("Quest75662", QuestActorProxy)
Quest75662.defaultAlias = "Quest75662"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75662:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75662:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566201"] = self.OnSubStart7566201}
end

function Quest75662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566201"] = self.OnSubFinish7566201}
end

function Quest75662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7566201"] = self.OnSubFailed7566201}
end

function Quest75662:Start()
    print("Start")
end

function Quest75662:OnDestroy()
    print("OnDestroy")
end

function Quest75662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75662:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
end

function Quest75662:OnSubStart7566201(arg1)
    print("OnSubStart7566201")
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
end

function Quest75662:OnSubFinish7566201(arg1)
    print("OnSubFinish7566201")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
end

function Quest75662:OnSubFailed7566201(arg1)
    print("OnSubFailed7566201")
    this:DestroyQuestNpcActor("14221", 3)
    this:DestroyQuestNpcActor("1088", 3)
end

return Quest75662
