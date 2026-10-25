require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73242 = class("Quest73242", QuestActorProxy)
Quest73242.defaultAlias = "Quest73242"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73242:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73242:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324201"] = self.OnSubStart7324201,
        ["7324202"] = self.OnSubStart7324202,
        ["7324203"] = self.OnSubStart7324203
    }
end

function Quest73242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324201"] = self.OnSubFinish7324201,
        ["7324202"] = self.OnSubFinish7324202,
        ["7324203"] = self.OnSubFinish7324203
    }
end

function Quest73242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73242:Start()
    print("Start")
end

function Quest73242:OnDestroy()
    print("OnDestroy")
end

function Quest73242:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73242:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73242:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73242:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73242:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73242:OnSubStart7324201(arg1)
    print("OnSubStart7324201")
end

function Quest73242:OnSubFinish7324201(arg1)
    print("OnSubFinish7324201")
end

function Quest73242:OnSubStart7324202(arg1)
    print("OnSubStart7324202")
end

function Quest73242:OnSubFinish7324202(arg1)
    print("OnSubFinish7324202")
end

function Quest73242:OnSubStart7324203(arg1)
    print("OnSubStart7324203")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20903Data.id, 1, npcs.Npc20903Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20904Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20905Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20906Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20907Data.id, 5)
end

function Quest73242:OnSubFinish7324203(arg1)
    print("OnSubFinish7324203")
    self:SafeDestroyQuestNpc(npcs.Npc20903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20906Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20907Data.alias, 3)
end

return Quest73242
