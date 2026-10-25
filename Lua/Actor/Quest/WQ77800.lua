require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77800 = class("Quest77800", QuestActorProxy)
Quest77800.defaultAlias = "Quest77800"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77800:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77800:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780001"] = self.OnSubStart7780001, ["7780002"] = self.OnSubStart7780002}
end

function Quest77800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780001"] = self.OnSubFinish7780001, ["7780002"] = self.OnSubFinish7780002}
end

function Quest77800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77800:Start()
    print("Start")
end

function Quest77800:OnDestroy()
    print("OnDestroy")
end

function Quest77800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77800:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77800:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77800:OnSubStart7780001(arg1)
    print("OnSubStart7780001")
    this:CreateQuestNpc(arg1, npcs.Npc4199.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4200.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4201.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4202.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12770.id, 0, false, 0)
end

function Quest77800:OnSubFinish7780001(arg1)
    print("OnSubFinish7780001")
end

function Quest77800:OnSubStart7780002(arg1)
    print("OnSubStart7780002")
end

function Quest77800:OnSubFinish7780002(arg1)
    print("OnSubFinish7780002")
    this:NpcDestroyImmediately(3, npcs.Npc4199.alias)
    this:NpcDestroyImmediately(3, npcs.Npc4200.alias)
    this:NpcDestroyImmediately(3, npcs.Npc4201.alias)
    this:NpcDestroyImmediately(3, npcs.Npc4202.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12770.alias)
end

return Quest77800
