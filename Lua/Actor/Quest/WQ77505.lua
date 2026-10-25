require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77505 = class("Quest77505", QuestActorProxy)
Quest77505.defaultAlias = "Quest77505"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77505:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77505:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750501"] = self.OnSubStart7750501}
end

function Quest77505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750501"] = self.OnSubFinish7750501}
end

function Quest77505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77505:Start()
    print("Start")
end

function Quest77505:OnDestroy()
    print("OnDestroy")
end

function Quest77505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77505:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc17182.alias, 3)
    this:RecycleAllRes()
end

function Quest77505:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77505:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77505:OnSubStart7750501(arg1)
    print("OnSubStart7750501")
    this:CreateQuestNpc(arg1, npcs.Npc17182.id, 0, false, 0)
end

function Quest77505:OnSubFinish7750501(arg1)
    print("OnSubFinish7750501")
    this:NpcDestroyImmediately(3, npcs.Npc17182.alias)
end

return Quest77505
