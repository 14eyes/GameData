require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23035 = class("Quest23035", QuestActorProxy)
Quest23035.defaultAlias = "Quest23035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303501"] = self.OnSubStart2303501,
        ["2303502"] = self.OnSubStart2303502,
        ["2303503"] = self.OnSubStart2303503,
        ["2303504"] = self.OnSubStart2303504,
        ["2303505"] = self.OnSubStart2303505,
        ["2303506"] = self.OnSubStart2303506
    }
end

function Quest23035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303501"] = self.OnSubFinish2303501,
        ["2303502"] = self.OnSubFinish2303502,
        ["2303503"] = self.OnSubFinish2303503,
        ["2303504"] = self.OnSubFinish2303504,
        ["2303505"] = self.OnSubFinish2303505,
        ["2303506"] = self.OnSubFinish2303506
    }
end

function Quest23035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23035:Start()
    print("Start")
end

function Quest23035:OnDestroy()
    print("OnDestroy")
end

function Quest23035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12717Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12130Data.alias, 3)
end

function Quest23035:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23035:OnSubStart2303501(arg1)
    print("OnSubStart2303501")
    self:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
end

function Quest23035:OnSubFinish2303501(arg1)
    print("OnSubFinish2303501")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
end

function Quest23035:OnSubStart2303502(arg1)
    print("OnSubStart2303502")
    self:CallDelay(5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
        actorMgr:CreateActorWithPos("Q2303502Trigger", "Actor/Gadget/Q2303502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303502_N1058").pos, sceneData:GetDummyPoint(3, "Q2303502_N1058").rot, true, false, 3)
    end)
end

function Quest23035:OnSubFinish2303502(arg1)
    print("OnSubFinish2303502")
end

function Quest23035:OnSubStart2303503(arg1)
    print("OnSubStart2303503")
    self:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    self:RequestInteraction(npcs.Npc12717Data.alias)
end

function Quest23035:OnSubFinish2303503(arg1)
    print("OnSubFinish2303503")
end

function Quest23035:OnSubStart2303504(arg1)
    print("OnSubStart2303504")
    self:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
end

function Quest23035:OnSubFinish2303504(arg1)
    print("OnSubFinish2303504")
end

function Quest23035:OnSubStart2303505(arg1)
    print("OnSubStart2303505")
    self:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12130Data.id, 2)
end

function Quest23035:OnSubFinish2303505(arg1)
    print("OnSubFinish2303505")
    self:SafeDestroyQuestNpc(npcs.Npc12130Data.alias, 3)
end

function Quest23035:OnSubStart2303506(arg1)
    print("OnSubStart2303506")
    self:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    self:RequestInteraction(npcs.Npc12717Data.alias)
end

function Quest23035:OnSubFinish2303506(arg1)
    print("OnSubFinish2303506")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1058Data.alias)
end

return Quest23035
