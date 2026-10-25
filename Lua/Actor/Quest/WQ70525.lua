require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70525 = class("Quest70525", QuestActorProxy)
Quest70525.defaultAlias = "Quest70525"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70525:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70525:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052501"] = self.OnSubStart7052501, ["7052502"] = self.OnSubStart7052502}
end

function Quest70525:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052501"] = self.OnSubFinish7052501, ["7052502"] = self.OnSubFinish7052502}
end

function Quest70525:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70525:Start()
    print("Start")
end

function Quest70525:OnDestroy()
    print("OnDestroy")
end

function Quest70525:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70525:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70525:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70525:OnSubStart7052501(arg1)
    print("OnSubStart7052501")
    this:CreateQuestNpc(arg1, npcs.Npc1707Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1708Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1709Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1710Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1711Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1707Data.alias):SitOnChair(8040)
    this:GetQuestNpcActor(npcs.Npc1708Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1709Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1710Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1711Data.alias):SitOnChair(0)
end

function Quest70525:OnSubFinish7052501(arg1)
    print("OnSubFinish7052501")
end

function Quest70525:OnSubStart7052502(arg1)
    print("OnSubStart7052502")
    this:CreateQuestNpc(arg1, npcs.Npc1711Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1711Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1707Data.alias):SitOnChair(8040)
    this:GetQuestNpcActor(npcs.Npc1708Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1709Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc1710Data.alias):SitOnChair(0)
end

function Quest70525:OnSubFinish7052502(arg1)
    print("OnSubFinish7052502")
    this:GetQuestNpcActor(npcs.Npc1707Data.alias):StandFromChair(0)
    this:GetQuestNpcActor(npcs.Npc1708Data.alias):StandFromChair(0)
    this:GetQuestNpcActor(npcs.Npc1709Data.alias):StandFromChair(0)
    this:GetQuestNpcActor(npcs.Npc1710Data.alias):StandFromChair(0)
    this:GetQuestNpcActor(npcs.Npc1711Data.alias):StandFromChairEx(0)
    this:DestroyQuestNpcActor(npcs.Npc1707Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1708Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1709Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1710Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1711Data.alias, 3)
end

return Quest70525
