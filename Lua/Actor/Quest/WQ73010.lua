require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73010 = class("Quest73010", QuestActorProxy)
Quest73010.defaultAlias = "Quest73010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301001"] = self.OnSubStart7301001,
        ["7301002"] = self.OnSubStart7301002,
        ["7301003"] = self.OnSubStart7301003
    }
end

function Quest73010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301001"] = self.OnSubFinish7301001,
        ["7301002"] = self.OnSubFinish7301002,
        ["7301003"] = self.OnSubFinish7301003
    }
end

function Quest73010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73010:Start()
    print("Start")
end

function Quest73010:OnDestroy()
    print("OnDestroy")
end

function Quest73010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73010:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73010:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73010:OnSubStart7301001(arg1)
    print("OnSubStart7301001")
end

function Quest73010:OnSubFinish7301001(arg1)
    print("OnSubFinish7301001")
end

function Quest73010:OnSubStart7301002(arg1)
    print("OnSubStart7301002")
end

function Quest73010:OnSubFinish7301002(arg1)
    print("OnSubFinish7301002")
end

function Quest73010:OnSubStart7301003(arg1)
    print("OnSubStart7301003")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20903Data.id, 1, npcs.Npc20903Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20904Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20905Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20906Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20907Data.id, 5)
end

function Quest73010:OnSubFinish7301003(arg1)
    print("OnSubFinish7301003")
    self:SafeDestroyQuestNpc(npcs.Npc20903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20906Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20907Data.alias, 3)
end

return Quest73010
