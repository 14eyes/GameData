require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72801 = class("Quest72801", QuestActorProxy)
Quest72801.defaultAlias = "Quest72801"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72801:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72801:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280101"] = self.OnSubStart7280101,
        ["7280102"] = self.OnSubStart7280102,
        ["7280103"] = self.OnSubStart7280103,
        ["7280105"] = self.OnSubStart7280105,
        ["7280106"] = self.OnSubStart7280106,
        ["7280107"] = self.OnSubStart7280107,
        ["7280108"] = self.OnSubStart7280108,
        ["7280109"] = self.OnSubStart7280109,
        ["7280110"] = self.OnSubStart7280110,
        ["7280116"] = self.OnSubStart7280116,
        ["7280111"] = self.OnSubStart7280111,
        ["7280112"] = self.OnSubStart7280112,
        ["7280113"] = self.OnSubStart7280113,
        ["7280114"] = self.OnSubStart7280114,
        ["7280115"] = self.OnSubStart7280115
    }
end

function Quest72801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280101"] = self.OnSubFinish7280101,
        ["7280102"] = self.OnSubFinish7280102,
        ["7280103"] = self.OnSubFinish7280103,
        ["7280105"] = self.OnSubFinish7280105,
        ["7280106"] = self.OnSubFinish7280106,
        ["7280107"] = self.OnSubFinish7280107,
        ["7280108"] = self.OnSubFinish7280108,
        ["7280109"] = self.OnSubFinish7280109,
        ["7280110"] = self.OnSubFinish7280110,
        ["7280116"] = self.OnSubFinish7280116,
        ["7280111"] = self.OnSubFinish7280111,
        ["7280112"] = self.OnSubFinish7280112,
        ["7280113"] = self.OnSubFinish7280113,
        ["7280114"] = self.OnSubFinish7280114,
        ["7280115"] = self.OnSubFinish7280115
    }
end

function Quest72801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280101"] = self.OnSubFailed7280101,
        ["7280102"] = self.OnSubFailed7280102,
        ["7280103"] = self.OnSubFailed7280103,
        ["7280105"] = self.OnSubFailed7280105,
        ["7280106"] = self.OnSubFailed7280106,
        ["7280107"] = self.OnSubFailed7280107,
        ["7280108"] = self.OnSubFailed7280108,
        ["7280109"] = self.OnSubFailed7280109,
        ["7280110"] = self.OnSubFailed7280110,
        ["7280116"] = self.OnSubFailed7280116,
        ["7280111"] = self.OnSubFailed7280111,
        ["7280112"] = self.OnSubFailed7280112,
        ["7280113"] = self.OnSubFailed7280113,
        ["7280114"] = self.OnSubFailed7280114,
        ["7280115"] = self.OnSubFailed7280115
    }
end

function Quest72801:Start()
    print("Start")
end

function Quest72801:OnDestroy()
    print("OnDestroy")
end

function Quest72801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72801:OnSubStart7280101(arg1)
    print("OnSubStart7280101")
end

function Quest72801:OnSubFinish7280101(arg1)
    print("OnSubFinish7280101")
end

function Quest72801:OnSubFailed7280101(arg1)
    print("OnSubFailed7280101")
end

function Quest72801:OnSubStart7280102(arg1)
    print("OnSubStart7280102")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3052Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3012Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3013Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3011Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    end)
end

function Quest72801:OnSubFinish7280102(arg1)
    print("OnSubFinish7280102")
end

function Quest72801:OnSubFailed7280102(arg1)
    print("OnSubFailed7280102")
end

function Quest72801:OnSubStart7280103(arg1)
    print("OnSubStart7280103")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3012Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3013Data.id, 2)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
end

function Quest72801:OnSubFinish7280103(arg1)
    print("OnSubFinish7280103")
end

function Quest72801:OnSubFailed7280103(arg1)
    print("OnSubFailed7280103")
end

function Quest72801:OnSubStart7280105(arg1)
    print("OnSubStart7280105")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3012Data.id, 1)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3012Data.alias):HideSelf()
    actorMgr:CreateActorWithPos("Q7280105Trigger", "Actor/Gadget/Q7280105Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Ramsay03").pos, sceneData:GetDummyPoint(3, "Q72801Ramsay03").rot, true, false, 3)
end

function Quest72801:OnSubFinish7280105(arg1)
    print("OnSubFinish7280105")
end

function Quest72801:OnSubFailed7280105(arg1)
    print("OnSubFailed7280105")
end

function Quest72801:OnSubStart7280106(arg1)
    print("OnSubStart7280106")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3013Data.id, 1)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7280106Trigger", "Actor/Gadget/Q7280106Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Seach01").pos, sceneData:GetDummyPoint(3, "Q72801Seach01").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3012Data.alias):ShowSelf()
end

function Quest72801:OnSubFinish7280106(arg1)
    print("OnSubFinish7280106")
end

function Quest72801:OnSubFailed7280106(arg1)
    print("OnSubFailed7280106")
end

function Quest72801:OnSubStart7280107(arg1)
    print("OnSubStart7280107")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7280107Trigger", "Actor/Gadget/Q7280107Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Seach02").pos, sceneData:GetDummyPoint(3, "Q72801Seach02").rot, true, false, 3)
end

function Quest72801:OnSubFinish7280107(arg1)
    print("OnSubFinish7280107")
end

function Quest72801:OnSubFailed7280107(arg1)
    print("OnSubFailed7280107")
end

function Quest72801:OnSubStart7280108(arg1)
    print("OnSubStart7280108")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3013Data.alias)
end

function Quest72801:OnSubFinish7280108(arg1)
    print("OnSubFinish7280108")
end

function Quest72801:OnSubFailed7280108(arg1)
    print("OnSubFailed7280108")
end

function Quest72801:OnSubStart7280109(arg1)
    print("OnSubStart7280109")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
end

function Quest72801:OnSubFinish7280109(arg1)
    print("OnSubFinish7280109")
    self:SafeDestroyQuestNpc(npcs.Npc3012Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3013Data.alias, 3)
end

function Quest72801:OnSubFailed7280109(arg1)
    print("OnSubFailed7280109")
end

function Quest72801:OnSubStart7280110(arg1)
    print("OnSubStart7280110")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3052Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3012Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3013Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3011Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3051Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q7280116Trigger", "Actor/Gadget/Q7280116Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Ramsay04").pos, sceneData:GetDummyPoint(3, "Q72801Ramsay04").rot, true, false, 3)
    end)
end

function Quest72801:OnSubFinish7280110(arg1)
    print("OnSubFinish7280110")
end

function Quest72801:OnSubFailed7280110(arg1)
    print("OnSubFailed7280110")
end

function Quest72801:OnSubStart7280111(arg1)
    print("OnSubStart7280111")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3013Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("Q7280111CreateQuestNpcTrigger", 7280111, npcs.Npc3012Data.id, 1, 5, 1)
end

function Quest72801:OnSubFinish7280111(arg1)
    print("OnSubFinish7280111")
    self:SafeDestroyQuestNpc(npcs.Npc3012Data.alias, 3)
end

function Quest72801:OnSubFailed7280111(arg1)
    print("OnSubFailed7280111")
end

function Quest72801:OnSubStart7280112(arg1)
    print("OnSubStart7280112")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3012Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3013Data.id, 1)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7280112Trigger", "Actor/Gadget/Q7280112Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Seach03").pos, sceneData:GetDummyPoint(3, "Q72801Seach03").rot, true, false, 3)
end

function Quest72801:OnSubFinish7280112(arg1)
    print("OnSubFinish7280112")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q72801Ramsay05").pos, 0, 3, true, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId7280112)
end

function Quest72801:OnSubFailed7280112(arg1)
    print("OnSubFailed7280112")
end

function Quest72801:OnSubStart7280113(arg1)
    print("OnSubStart7280113")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3012Data.id, 1)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3012Data.alias):HideSelf()
    actorMgr:CreateActorWithPos("Q7280113Trigger", "Actor/Gadget/Q7280113Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72801Ramsay05").pos, sceneData:GetDummyPoint(3, "Q72801Ramsay05").rot, true, false, 3)
end

function Quest72801:OnSubFinish7280113(arg1)
    print("OnSubFinish7280113")
end

function Quest72801:OnSubFailed7280113(arg1)
    print("OnSubFailed7280113")
end

function Quest72801:OnSubStart7280114(arg1)
    print("OnSubStart7280114")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3012Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3013Data.id, 2)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
end

function Quest72801:OnSubFinish7280114(arg1)
    print("OnSubFinish7280114")
end

function Quest72801:OnSubFailed7280114(arg1)
    print("OnSubFailed7280114")
end

function Quest72801:OnSubStart7280115(arg1)
    print("OnSubStart7280115")
    self:CreateQuestNpc(arg1, npcs.Npc3052Data.id, 1)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
end

function Quest72801:OnSubFinish7280115(arg1)
    print("OnSubFinish7280115")
    self:SafeDestroyQuestNpc(npcs.Npc3052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3012Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3013Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3051Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3011Data.alias, 0, true)
end

function Quest72801:OnSubFailed7280115(arg1)
    print("OnSubFailed7280115")
end

function Quest72801:OnSubStart7280116(arg1)
    print("OnSubStart7280116")
    self:NotifyTo(npcs.Npc3052Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3012Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3013Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3011Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3051Data.alias, 1, true)
end

function Quest72801:OnSubFinish7280116(arg1)
    print("OnSubFinish7280116")
end

function Quest72801:OnSubFailed7280116(arg1)
    print("OnSubFailed7280116")
end

return Quest72801
