require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70516 = class("Quest70516", QuestActorProxy)
Quest70516.defaultAlias = "Quest70516"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70516:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70516:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051608"] = self.OnSubStart7051608,
        ["7051601"] = self.OnSubStart7051601,
        ["7051602"] = self.OnSubStart7051602,
        ["7051606"] = self.OnSubStart7051606,
        ["7051607"] = self.OnSubStart7051607,
        ["7051603"] = self.OnSubStart7051603,
        ["7051604"] = self.OnSubStart7051604,
        ["7051605"] = self.OnSubStart7051605
    }
end

function Quest70516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051608"] = self.OnSubFinish7051608,
        ["7051601"] = self.OnSubFinish7051601,
        ["7051602"] = self.OnSubFinish7051602,
        ["7051606"] = self.OnSubFinish7051606,
        ["7051607"] = self.OnSubFinish7051607,
        ["7051603"] = self.OnSubFinish7051603,
        ["7051604"] = self.OnSubFinish7051604,
        ["7051605"] = self.OnSubFinish7051605
    }
end

function Quest70516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70516:Start()
    print("Start")
end

function Quest70516:OnDestroy()
    print("OnDestroy")
end

function Quest70516:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70516:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30198Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30199Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30200Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30202Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30193Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30195Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30194Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30196Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30197Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30242Data.alias, 1018)
    local actor = actorMgr:GetActor("70516")
    actor:UnSpawn(gadgets.Gadget70710774Data.alias)
    actor:UnSpawn(gadgets.Gadget70710775Data.alias)
    actor:UnSpawn(gadgets.Gadget70710776Data.alias)
end

function Quest70516:OnSubStart7051608(arg1)
    print("OnSubStart7051608")
    actorUtils.FinishQuestID(false, 7051608)
end

function Quest70516:OnSubFinish7051608(arg1)
    print("OnSubFinish7051608")
end

function Quest70516:OnSubStart7051601(arg1)
    print("OnSubStart7051601")
end

function Quest70516:OnSubFinish7051601(arg1)
    print("OnSubFinish7051601")
end

function Quest70516:OnSubStart7051602(arg1)
    print("OnSubStart7051602")
    self:CreateQuestNpc(arg1, npcs.Npc30194Data.id, 1)
end

function Quest70516:OnSubFinish7051602(arg1)
    print("OnSubFinish7051602")
    self:SafeDestroyQuestNpc(npcs.Npc30194Data.alias, 3)
end

function Quest70516:OnSubStart7051606(arg1)
    print("OnSubStart7051606")
end

function Quest70516:OnSubFinish7051606(arg1)
    print("OnSubFinish7051606")
end

function Quest70516:OnSubStart7051607(arg1)
    print("OnSubStart7051607")
end

function Quest70516:OnSubFinish7051607(arg1)
    print("OnSubFinish7051607")
end

function Quest70516:OnSubStart7051603(arg1)
    print("OnSubStart7051603")
end

function Quest70516:OnSubFinish7051603(arg1)
    print("OnSubFinish7051603")
end

function Quest70516:OnSubStart7051604(arg1)
    print("OnSubStart7051604")
    self:CreateQuestNpc(arg1, npcs.Npc30198Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30199Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30200Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30201Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30202Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc30195Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc30196Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc30197Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc30242Data.id, 9)
    self:UnSpawn(gadgets.Gadget70710774Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710774Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710775Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710775Data.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710776Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710776Data.id, 3, 0)
end

function Quest70516:OnSubFinish7051604(arg1)
    print("OnSubFinish7051604")
    self:SafeDestroyQuestNpc(npcs.Npc30198Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30199Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30200Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30202Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30195Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30196Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30197Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30242Data.alias, 1018)
    self:UnSpawn(gadgets.Gadget70710774Data.alias)
    self:UnSpawn(gadgets.Gadget70710775Data.alias)
    self:UnSpawn(gadgets.Gadget70710776Data.alias)
end

function Quest70516:OnSubStart7051605(arg1)
    print("OnSubStart7051605")
    actorUtils.FinishQuestID(false, 7051605)
end

function Quest70516:OnSubFinish7051605(arg1)
    print("OnSubFinish7051605")
end

return Quest70516
