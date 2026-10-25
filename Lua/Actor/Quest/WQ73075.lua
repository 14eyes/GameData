require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73075 = class("Quest73075", QuestActorProxy)
Quest73075.defaultAlias = "Quest73075"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73075:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73075:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307501"] = self.OnSubStart7307501,
        ["7307503"] = self.OnSubStart7307503,
        ["7307502"] = self.OnSubStart7307502
    }
end

function Quest73075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307501"] = self.OnSubFinish7307501,
        ["7307503"] = self.OnSubFinish7307503,
        ["7307502"] = self.OnSubFinish7307502
    }
end

function Quest73075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73075:Start()
    print("Start")
end

function Quest73075:OnDestroy()
    print("OnDestroy")
end

function Quest73075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73075:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:DestroyEntityActor("Q73075Trigger_AutoInteracte", 3, false)
end

function Quest73075:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73075:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73075:OnSubStart7307501(arg1)
    print("OnSubStart7307501")
end

function Quest73075:OnSubFinish7307501(arg1)
    print("OnSubFinish7307501")
end

function Quest73075:OnSubStart7307503(arg1)
    print("OnSubStart7307503")
    self:NpcCreate(arg1, npcs.Npc20607Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20607Data.alias):ShowNpcWithLevelTagId(38, false)
    end)

    self:NpcCreate(arg1, npcs.Npc20816Data.id, 2)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
    end)
end

function Quest73075:OnSubFinish7307503(arg1)
    print("OnSubFinish7307503")
end

function Quest73075:OnSubStart7307502(arg1)
    print("OnSubStart7307502")
    self:NpcCreate(arg1, npcs.Npc20607Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20607Data.alias):ShowNpcWithLevelTagId(38, false)
    end)

    self:NpcCreate(arg1, npcs.Npc20816Data.id, 2)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
        actorMgr:CreateActorWithPos("Q73075Trigger_AutoInteracte", "Actor/Gadget/Q73075Trigger_AutoInteracte", 70900002, 0, {x = -210.992, y = 209.877, z = 3664.467}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73075:OnSubFinish7307502(arg1)
    print("OnSubFinish7307502")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20607Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20816Data.alias)
end

return Quest73075
