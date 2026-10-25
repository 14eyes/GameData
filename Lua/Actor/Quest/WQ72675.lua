require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72675 = class("Quest72675", QuestActorProxy)
Quest72675.defaultAlias = "Quest72675"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72675:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72675:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267510"] = self.OnSubStart7267510,
        ["7267509"] = self.OnSubStart7267509,
        ["7267501"] = self.OnSubStart7267501,
        ["7267502"] = self.OnSubStart7267502,
        ["7267503"] = self.OnSubStart7267503,
        ["7267504"] = self.OnSubStart7267504,
        ["7267505"] = self.OnSubStart7267505,
        ["7267506"] = self.OnSubStart7267506,
        ["7267507"] = self.OnSubStart7267507,
        ["7267508"] = self.OnSubStart7267508
    }
end

function Quest72675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267510"] = self.OnSubFinish7267510,
        ["7267509"] = self.OnSubFinish7267509,
        ["7267501"] = self.OnSubFinish7267501,
        ["7267502"] = self.OnSubFinish7267502,
        ["7267503"] = self.OnSubFinish7267503,
        ["7267504"] = self.OnSubFinish7267504,
        ["7267505"] = self.OnSubFinish7267505,
        ["7267506"] = self.OnSubFinish7267506,
        ["7267507"] = self.OnSubFinish7267507,
        ["7267508"] = self.OnSubFinish7267508
    }
end

function Quest72675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72675:Start()
    print("Start")
end

function Quest72675:OnDestroy()
    print("OnDestroy")
end

function Quest72675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72675:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2438Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72675Trigger_NiceBoat", 3, false)
end

function Quest72675:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72675:OnSubStart7267510(arg1)
    print("OnSubStart7267510")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 2)
end

function Quest72675:OnSubFinish7267510(arg1)
    print("OnSubFinish7267510")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
end

function Quest72675:OnSubStart7267509(arg1)
    print("OnSubStart7267509")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72675:OnSubFinish7267509(arg1)
    print("OnSubFinish7267509")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267509_Finish, nil, "")
    end)
end

function Quest72675:OnSubStart7267501(arg1)
    print("OnSubStart7267501")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72675:OnSubFinish7267501(arg1)
    print("OnSubFinish7267501")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72675:OnSubStart7267502(arg1)
    print("OnSubStart7267502")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest72675:OnSubFinish7267502(arg1)
    print("OnSubFinish7267502")
end

function Quest72675:OnSubStart7267503(arg1)
    print("OnSubStart7267503")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72675:OnSubFinish7267503(arg1)
    print("OnSubFinish7267503")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267503_Finish, nil, "")
    end)
end

function Quest72675:OnSubStart7267504(arg1)
    print("OnSubStart7267504")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72675:OnSubFinish7267504(arg1)
    print("OnSubFinish7267504")
end

function Quest72675:OnSubStart7267505(arg1)
    print("OnSubStart7267505")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72675:OnSubFinish7267505(arg1)
    print("OnSubFinish7267505")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72675:OnSubStart7267506(arg1)
    print("OnSubStart7267506")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72675:OnSubFinish7267506(arg1)
    print("OnSubFinish7267506")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72675:OnSubStart7267507(arg1)
    print("OnSubStart7267507")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72675Trigger_NiceBoat", "Actor/Gadget/Q72675Trigger_NiceBoat", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267507_guide").pos, sceneData:GetDummyPoint(3, "Q7267507_guide").rot, true, false, 3)
end

function Quest72675:OnSubFinish7267507(arg1)
    print("OnSubFinish7267507")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267507_Finish, nil, "")
    end)
end

function Quest72675:OnSubStart7267508(arg1)
    print("OnSubStart7267508")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2438Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72675:OnSubFinish7267508(arg1)
    print("OnSubFinish7267508")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

return Quest72675
