require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75131 = class("Quest75131", QuestActorProxy)
Quest75131.defaultAlias = "Quest75131"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75131:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513101"] = self.OnSubStart7513101,
        ["7513106"] = self.OnSubStart7513106,
        ["7513103"] = self.OnSubStart7513103,
        ["7513104"] = self.OnSubStart7513104,
        ["7513102"] = self.OnSubStart7513102,
        ["7513105"] = self.OnSubStart7513105
    }
end

function Quest75131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513101"] = self.OnSubFinish7513101,
        ["7513106"] = self.OnSubFinish7513106,
        ["7513103"] = self.OnSubFinish7513103,
        ["7513104"] = self.OnSubFinish7513104,
        ["7513102"] = self.OnSubFinish7513102,
        ["7513105"] = self.OnSubFinish7513105
    }
end

function Quest75131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75131:Start()
    print("Start")
end

function Quest75131:OnDestroy()
    print("OnDestroy")
end

function Quest75131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75131:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75131:OnSubStart7513101(arg1)
    print("OnSubStart7513101")
end

function Quest75131:OnSubFinish7513101(arg1)
    print("OnSubFinish7513101")
    this:RequestInteraction(npcs.Npc6480.alias, "", true)
end

function Quest75131:OnSubStart7513106(arg1)
    print("OnSubStart7513106")
    this:CreateQuestNpc(arg1, npcs.Npc6480.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6480.alias, "", true)
end

function Quest75131:OnSubFinish7513106(arg1)
    print("OnSubFinish7513106")
    this:SafeDestroyQuestNpc(npcs.Npc6480.alias, 3)
end

function Quest75131:OnSubStart7513103(arg1)
    print("OnSubStart7513103")
end

function Quest75131:OnSubFinish7513103(arg1)
    print("OnSubFinish7513103")
end

function Quest75131:OnSubStart7513104(arg1)
    print("OnSubStart7513104")
    this:CreateQuestNpc(arg1, npcs.Npc6480.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6480.alias, "", true)
end

function Quest75131:OnSubFinish7513104(arg1)
    print("OnSubFinish7513104")
end

function Quest75131:OnSubStart7513102(arg1)
    print("OnSubStart7513102")
    this:RequestInteraction(npcs.Npc6480.alias, "", true)
end

function Quest75131:OnSubFinish7513102(arg1)
    print("OnSubFinish7513102")
    this:SafeDestroyQuestNpc(npcs.Npc6480.alias, 3)
end

function Quest75131:OnSubStart7513105(arg1)
    print("OnSubStart7513105")
end

function Quest75131:OnSubFinish7513105(arg1)
    print("OnSubFinish7513105")
end

return Quest75131
