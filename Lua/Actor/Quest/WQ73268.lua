require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73268 = class("Quest73268", QuestActorProxy)
Quest73268.defaultAlias = "Quest73268"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73268:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73268:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326801"] = self.OnSubStart7326801,
        ["7326802"] = self.OnSubStart7326802,
        ["7326803"] = self.OnSubStart7326803
    }
end

function Quest73268:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326801"] = self.OnSubFinish7326801,
        ["7326802"] = self.OnSubFinish7326802,
        ["7326803"] = self.OnSubFinish7326803
    }
end

function Quest73268:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73268:Start()
    print("Start")
end

function Quest73268:OnDestroy()
    print("OnDestroy")
end

function Quest73268:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73268:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73268:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73268:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73268:OnSubStart7326801(arg1)
    print("OnSubStart7326801")
    self:DailyNpcSafeHideSelf(npcs.Npc4191Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4192Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4193Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4195Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20650Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20651Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20653Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc20649Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20650Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20651Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73268:OnSubFinish7326801(arg1)
    print("OnSubFinish7326801")
    self:SafeDestroyQuestNpc(npcs.Npc20649Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20650Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20651Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20653Data.alias, 3)
end

function Quest73268:OnSubStart7326802(arg1)
    print("OnSubStart7326802")
    self:DailyNpcSafeHideSelf(npcs.Npc4187Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4190Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20606Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20608Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73268:OnSubFinish7326802(arg1)
    print("OnSubFinish7326802")
    self:SafeDestroyQuestNpc(npcs.Npc20605Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73268:OnSubStart7326803(arg1)
    print("OnSubStart7326803")
    self:DailyNpcSafeHideSelf(npcs.Npc4189Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4224Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20816Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73268:OnSubFinish7326803(arg1)
    print("OnSubFinish7326803")
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
end

return Quest73268
