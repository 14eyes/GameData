require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72262 = class("Quest72262", QuestActorProxy)
Quest72262.defaultAlias = "Quest72262"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72262:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72262:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226201"] = self.OnSubStart7226201,
        ["7226202"] = self.OnSubStart7226202,
        ["7226203"] = self.OnSubStart7226203,
        ["7226204"] = self.OnSubStart7226204,
        ["7226205"] = self.OnSubStart7226205,
        ["7226206"] = self.OnSubStart7226206,
        ["7226207"] = self.OnSubStart7226207,
        ["7226208"] = self.OnSubStart7226208,
        ["7226209"] = self.OnSubStart7226209,
        ["7226210"] = self.OnSubStart7226210
    }
end

function Quest72262:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226201"] = self.OnSubFinish7226201,
        ["7226202"] = self.OnSubFinish7226202,
        ["7226203"] = self.OnSubFinish7226203,
        ["7226204"] = self.OnSubFinish7226204,
        ["7226205"] = self.OnSubFinish7226205,
        ["7226206"] = self.OnSubFinish7226206,
        ["7226207"] = self.OnSubFinish7226207,
        ["7226208"] = self.OnSubFinish7226208,
        ["7226209"] = self.OnSubFinish7226209,
        ["7226210"] = self.OnSubFinish7226210
    }
end

function Quest72262:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72262:Start()
    print("Start")
end

function Quest72262:OnDestroy()
    print("OnDestroy")
end

function Quest72262:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72262:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72262:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72262Trigger01", 3, false)
    actorMgr:DestroyEntityActor("Q72262Trigger02", 3, false)
end

function Quest72262:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72262:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72262:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72262:OnSubStart7226201(arg1)
    print("OnSubStart7226201")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226201(arg1)
    print("OnSubFinish7226201")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.paimeng01, nil, "")
    end)
end

function Quest72262:OnSubStart7226202(arg1)
    print("OnSubStart7226202")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226202(arg1)
    print("OnSubFinish7226202")
end

function Quest72262:OnSubStart7226203(arg1)
    print("OnSubStart7226203")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226203(arg1)
    print("OnSubFinish7226203")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72262:OnSubStart7226204(arg1)
    print("OnSubStart7226204")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72262:OnSubFinish7226204(arg1)
    print("OnSubFinish7226204")
end

function Quest72262:OnSubStart7226205(arg1)
    print("OnSubStart7226205")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:NarratorOnlyTask(datas.paimeng02, nil, "")
    actorMgr:CreateActorWithPos("Q72262Trigger01", "Actor/Gadget/Q72262Trigger01", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72262_PlayerHili").pos, sceneData:GetDummyPoint(3, "Q3_72262_PlayerHili").rot, true, false, 3)
end

function Quest72262:OnSubFinish7226205(arg1)
    print("OnSubFinish7226205")
end

function Quest72262:OnSubStart7226206(arg1)
    print("OnSubStart7226206")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72262Trigger02", "Actor/Gadget/Q72262Trigger02", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72262_Hili").pos, sceneData:GetDummyPoint(3, "Q3_72262_Hili").rot, true, false, 3)
end

function Quest72262:OnSubFinish7226206(arg1)
    print("OnSubFinish7226206")
end

function Quest72262:OnSubStart7226207(arg1)
    print("OnSubStart7226207")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72262:OnSubFinish7226207(arg1)
    print("OnSubFinish7226207")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

function Quest72262:OnSubStart7226208(arg1)
    print("OnSubStart7226208")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226208(arg1)
    print("OnSubFinish7226208")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72262:OnSubStart7226209(arg1)
    print("OnSubStart7226209")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226209(arg1)
    print("OnSubFinish7226209")
end

function Quest72262:OnSubStart7226210(arg1)
    print("OnSubStart7226210")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72262:OnSubFinish7226210(arg1)
    print("OnSubFinish7226210")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

return Quest72262
