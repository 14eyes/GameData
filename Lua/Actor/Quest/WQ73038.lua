require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73038 = class("Quest73038", QuestActorProxy)
Quest73038.defaultAlias = "Quest73038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303801"] = self.OnSubStart7303801,
        ["7303802"] = self.OnSubStart7303802,
        ["7303803"] = self.OnSubStart7303803
    }
end

function Quest73038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303801"] = self.OnSubFinish7303801,
        ["7303802"] = self.OnSubFinish7303802,
        ["7303803"] = self.OnSubFinish7303803
    }
end

function Quest73038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73038:Start()
    print("Start")
end

function Quest73038:OnDestroy()
    print("OnDestroy")
end

function Quest73038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73038:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73038:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73038:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73038:OnSubStart7303801(arg1)
    print("OnSubStart7303801")
    self:CreateQuestNpc(arg1, npcs.Npc20647Data.id, 1)
end

function Quest73038:OnSubFinish7303801(arg1)
    print("OnSubFinish7303801")
    self:SafeDestroyQuestNpc(npcs.Npc20647Data.alias, 3)
end

function Quest73038:OnSubStart7303802(arg1)
    print("OnSubStart7303802")
    self:CreateQuestNpc(arg1, npcs.Npc20740Data.id, 1)
end

function Quest73038:OnSubFinish7303802(arg1)
    print("OnSubFinish7303802")
    self:SafeDestroyQuestNpc(npcs.Npc20740Data.alias, 3)
end

function Quest73038:OnSubStart7303803(arg1)
    print("OnSubStart7303803")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20647Data.id, 2)
end

function Quest73038:OnSubFinish7303803(arg1)
    print("OnSubFinish7303803")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20647Data.alias, 3)
end

return Quest73038
