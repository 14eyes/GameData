require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23016 = class("Quest23016", QuestActorProxy)
Quest23016.defaultAlias = "Quest23016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301601"] = self.OnSubStart2301601,
        ["2301602"] = self.OnSubStart2301602,
        ["2301603"] = self.OnSubStart2301603
    }
end

function Quest23016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301601"] = self.OnSubFinish2301601,
        ["2301602"] = self.OnSubFinish2301602,
        ["2301603"] = self.OnSubFinish2301603
    }
end

function Quest23016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23016:Start()
    print("Start")
end

function Quest23016:OnDestroy()
    print("OnDestroy")
end

function Quest23016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23016:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest23016:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23016:OnSubStart2301601(arg1)
    print("OnSubStart2301601")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc4042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest23016:OnSubFinish2301601(arg1)
    print("OnSubFinish2301601")
end

function Quest23016:OnSubStart2301602(arg1)
    print("OnSubStart2301602")
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc4042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest23016:OnSubFinish2301602(arg1)
    print("OnSubFinish2301602")
end

function Quest23016:OnSubStart2301603(arg1)
    print("OnSubStart2301603")
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc4042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest23016:OnSubFinish2301603(arg1)
    print("OnSubFinish2301603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20657Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

return Quest23016
