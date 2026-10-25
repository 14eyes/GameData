require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73012 = class("Quest73012", QuestActorProxy)
Quest73012.defaultAlias = "Quest73012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301201"] = self.OnSubStart7301201,
        ["7301202"] = self.OnSubStart7301202,
        ["7301203"] = self.OnSubStart7301203
    }
end

function Quest73012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301201"] = self.OnSubFinish7301201,
        ["7301202"] = self.OnSubFinish7301202,
        ["7301203"] = self.OnSubFinish7301203
    }
end

function Quest73012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73012:Start()
    print("Start")
end

function Quest73012:OnDestroy()
    print("OnDestroy")
end

function Quest73012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73012:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73012:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73012:OnSubStart7301201(arg1)
    print("OnSubStart7301201")
end

function Quest73012:OnSubFinish7301201(arg1)
    print("OnSubFinish7301201")
end

function Quest73012:OnSubStart7301202(arg1)
    print("OnSubStart7301202")
end

function Quest73012:OnSubFinish7301202(arg1)
    print("OnSubFinish7301202")
end

function Quest73012:OnSubStart7301203(arg1)
    print("OnSubStart7301203")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20903Data.id, 1, npcs.Npc20903Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20904Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20905Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20906Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20907Data.id, 5)
end

function Quest73012:OnSubFinish7301203(arg1)
    print("OnSubFinish7301203")
    self:SafeDestroyQuestNpc(npcs.Npc20903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20906Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20907Data.alias, 3)
end

return Quest73012
