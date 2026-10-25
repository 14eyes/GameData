require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73004 = class("Quest73004", QuestActorProxy)
Quest73004.defaultAlias = "Quest73004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300401"] = self.OnSubStart7300401,
        ["7300402"] = self.OnSubStart7300402,
        ["7300403"] = self.OnSubStart7300403
    }
end

function Quest73004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300401"] = self.OnSubFinish7300401,
        ["7300402"] = self.OnSubFinish7300402,
        ["7300403"] = self.OnSubFinish7300403
    }
end

function Quest73004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73004:Start()
    print("Start")
end

function Quest73004:OnDestroy()
    print("OnDestroy")
end

function Quest73004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73004:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73004:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73004:OnSubStart7300401(arg1)
    print("OnSubStart7300401")
end

function Quest73004:OnSubFinish7300401(arg1)
    print("OnSubFinish7300401")
end

function Quest73004:OnSubStart7300402(arg1)
    print("OnSubStart7300402")
end

function Quest73004:OnSubFinish7300402(arg1)
    print("OnSubFinish7300402")
end

function Quest73004:OnSubStart7300403(arg1)
    print("OnSubStart7300403")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20903Data.id, 1, npcs.Npc20903Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20904Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20905Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20906Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20907Data.id, 5)
end

function Quest73004:OnSubFinish7300403(arg1)
    print("OnSubFinish7300403")
    self:SafeDestroyQuestNpc(npcs.Npc20903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20906Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20907Data.alias, 3)
end

return Quest73004
