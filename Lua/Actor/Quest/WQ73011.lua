require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73011 = class("Quest73011", QuestActorProxy)
Quest73011.defaultAlias = "Quest73011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301101"] = self.OnSubStart7301101,
        ["7301102"] = self.OnSubStart7301102,
        ["7301103"] = self.OnSubStart7301103
    }
end

function Quest73011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301101"] = self.OnSubFinish7301101,
        ["7301102"] = self.OnSubFinish7301102,
        ["7301103"] = self.OnSubFinish7301103
    }
end

function Quest73011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73011:Start()
    print("Start")
end

function Quest73011:OnDestroy()
    print("OnDestroy")
end

function Quest73011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73011:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73011:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73011:OnSubStart7301101(arg1)
    print("OnSubStart7301101")
end

function Quest73011:OnSubFinish7301101(arg1)
    print("OnSubFinish7301101")
end

function Quest73011:OnSubStart7301102(arg1)
    print("OnSubStart7301102")
end

function Quest73011:OnSubFinish7301102(arg1)
    print("OnSubFinish7301102")
end

function Quest73011:OnSubStart7301103(arg1)
    print("OnSubStart7301103")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20903Data.id, 1, npcs.Npc20903Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20904Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20905Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20906Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20907Data.id, 5)
end

function Quest73011:OnSubFinish7301103(arg1)
    print("OnSubFinish7301103")
    self:SafeDestroyQuestNpc(npcs.Npc20903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20906Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20907Data.alias, 3)
end

return Quest73011
