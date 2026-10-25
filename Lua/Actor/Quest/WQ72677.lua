require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72677 = class("Quest72677", QuestActorProxy)
Quest72677.defaultAlias = "Quest72677"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72677:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72677:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267709"] = self.OnSubStart7267709,
        ["7267701"] = self.OnSubStart7267701,
        ["7267710"] = self.OnSubStart7267710,
        ["7267702"] = self.OnSubStart7267702,
        ["7267708"] = self.OnSubStart7267708,
        ["7267703"] = self.OnSubStart7267703,
        ["7267704"] = self.OnSubStart7267704,
        ["7267705"] = self.OnSubStart7267705,
        ["7267706"] = self.OnSubStart7267706,
        ["7267707"] = self.OnSubStart7267707
    }
end

function Quest72677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267709"] = self.OnSubFinish7267709,
        ["7267701"] = self.OnSubFinish7267701,
        ["7267710"] = self.OnSubFinish7267710,
        ["7267702"] = self.OnSubFinish7267702,
        ["7267708"] = self.OnSubFinish7267708,
        ["7267703"] = self.OnSubFinish7267703,
        ["7267704"] = self.OnSubFinish7267704,
        ["7267705"] = self.OnSubFinish7267705,
        ["7267706"] = self.OnSubFinish7267706,
        ["7267707"] = self.OnSubFinish7267707
    }
end

function Quest72677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72677:Start()
    print("Start")
end

function Quest72677:OnDestroy()
    print("OnDestroy")
end

function Quest72677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72677:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
end

function Quest72677:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72677:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7267701 then
        self:FinishQuestID(false, 7267710)
    end
end

function Quest72677:OnSubStart7267709(arg1)
    print("OnSubStart7267709")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267709(arg1)
    print("OnSubFinish7267709")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267709_Finish, nil, "")
    end)
end

function Quest72677:OnSubStart7267701(arg1)
    print("OnSubStart7267701")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267701(arg1)
    print("OnSubFinish7267701")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72677:OnSubStart7267710(arg1)
    print("OnSubStart7267710")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267710(arg1)
    print("OnSubFinish7267710")
end

function Quest72677:OnSubStart7267702(arg1)
    print("OnSubStart7267702")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest72677:OnSubFinish7267702(arg1)
    print("OnSubFinish7267702")
end

function Quest72677:OnSubStart7267708(arg1)
    print("OnSubStart7267708")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72677:OnSubFinish7267708(arg1)
    print("OnSubFinish7267708")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72677:OnSubStart7267703(arg1)
    print("OnSubStart7267703")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267703(arg1)
    print("OnSubFinish7267703")
end

function Quest72677:OnSubStart7267704(arg1)
    print("OnSubStart7267704")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267704(arg1)
    print("OnSubFinish7267704")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72677:OnSubStart7267705(arg1)
    print("OnSubStart7267705")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72677:OnSubFinish7267705(arg1)
    print("OnSubFinish7267705")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72677:OnSubStart7267706(arg1)
    print("OnSubStart7267706")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267706(arg1)
    print("OnSubFinish7267706")
end

function Quest72677:OnSubStart7267707(arg1)
    print("OnSubStart7267707")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72677:OnSubFinish7267707(arg1)
    print("OnSubFinish7267707")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

return Quest72677
