require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73532 = class("Quest73532", QuestActorProxy)
Quest73532.defaultAlias = "Quest73532"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest73532:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73532:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7353210"] = self.OnSubStart7353210,
        ["7353201"] = self.OnSubStart7353201,
        ["7353212"] = self.OnSubStart7353212,
        ["7353202"] = self.OnSubStart7353202,
        ["7353203"] = self.OnSubStart7353203,
        ["7353204"] = self.OnSubStart7353204,
        ["7353205"] = self.OnSubStart7353205,
        ["7353206"] = self.OnSubStart7353206,
        ["7353207"] = self.OnSubStart7353207,
        ["7353208"] = self.OnSubStart7353208,
        ["7353209"] = self.OnSubStart7353209,
        ["7353211"] = self.OnSubStart7353211
    }
end

function Quest73532:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7353210"] = self.OnSubFinish7353210,
        ["7353201"] = self.OnSubFinish7353201,
        ["7353212"] = self.OnSubFinish7353212,
        ["7353202"] = self.OnSubFinish7353202,
        ["7353203"] = self.OnSubFinish7353203,
        ["7353204"] = self.OnSubFinish7353204,
        ["7353205"] = self.OnSubFinish7353205,
        ["7353206"] = self.OnSubFinish7353206,
        ["7353207"] = self.OnSubFinish7353207,
        ["7353208"] = self.OnSubFinish7353208,
        ["7353209"] = self.OnSubFinish7353209,
        ["7353211"] = self.OnSubFinish7353211
    }
end

function Quest73532:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7353210"] = self.OnSubFailed7353210,
        ["7353201"] = self.OnSubFailed7353201,
        ["7353212"] = self.OnSubFailed7353212,
        ["7353202"] = self.OnSubFailed7353202,
        ["7353203"] = self.OnSubFailed7353203,
        ["7353204"] = self.OnSubFailed7353204,
        ["7353205"] = self.OnSubFailed7353205,
        ["7353206"] = self.OnSubFailed7353206,
        ["7353207"] = self.OnSubFailed7353207,
        ["7353208"] = self.OnSubFailed7353208,
        ["7353209"] = self.OnSubFailed7353209,
        ["7353211"] = self.OnSubFailed7353211
    }
end

function Quest73532:Start()
    print("Start")
end

function Quest73532:OnDestroy()
    print("OnDestroy")
end

function Quest73532:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73532:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73532:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14376.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4385.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14365.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14365.alias, 1073)
    this:LightNotifyTo(npcs.Npc4381.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4380.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4306.alias, 0, true)
    this:ActorDestroy("Q7353210_TriggerIn")
    this:ActorDestroy("Q7353201_TriggerIn")
    this:ActorDestroy("Q7353204_TriggerIn")
    this:ActorDestroy("Q7353211_TriggerIn")
    this:ActorDestroy("Q7353208_TriggerIn")
    this:ActorDestroy("Q7353207_TriggerIn")
    this:ActorDestroy("Q7353209_TriggerIn")
    this:ActorDestroy("Q7353206_TriggerIn")
    this:ActorDestroy("Q7353203_TriggerIn")
    this:DestroyNpcTrigger("Q7353203N14365Trigger")
    this:DestroyNpcTrigger("Q7353205N1050Trigger")
    this:DestroyNpcTrigger("Q7353212N14365Trigger")
    this:CancelStoryByQuest(147353207)
    this:CancelStoryByQuest(147353204)
    this:BanCrowdNpc(3, 9, datas.Q7353203_InstanceIDList, false)
    this:LightNotifyTo(npcs.Npc4376.alias, 0, true)
end

function Quest73532:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73532:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73532:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest73532:OnSubStart7353210(arg1)
    print("OnSubStart7353210")
    this:CreateQuestNpc(arg1, npcs.Npc14365.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7353210_TriggerIn", "Actor/Gadget/Q7353210_TriggerIn", 70900002, 0, points._Q7353210_TriggerInPoint_.pos, points._Q7353210_TriggerInPoint_.rot, true, false, 3)
end

function Quest73532:OnSubFinish7353210(arg1)
    print("OnSubFinish7353210")
    this:SafeDestroyQuestNpc(npcs.Npc14365.alias, 3)
end

function Quest73532:OnSubFailed7353210(arg1)
    print("OnSubFailed7353210")
end

function Quest73532:OnSubStart7353201(arg1)
    print("OnSubStart7353201")
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7353201_TriggerIn", "Actor/Gadget/Q7353201_TriggerIn", 70900002, 0, points._Q7353201_TriggerInPoint_.pos, points._Q7353201_TriggerInPoint_.rot, true, false, 3)
end

function Quest73532:OnSubFinish7353201(arg1)
    print("OnSubFinish7353201")
end

function Quest73532:OnSubFailed7353201(arg1)
    print("OnSubFailed7353201")
end

function Quest73532:OnSubStart7353212(arg1)
    print("OnSubStart7353212")
    this:NpcCreateWithNpcTrigger(npcs.Npc14365.id, 7353212, 0, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc4381.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4380.alias, 1, true)
end

function Quest73532:OnSubFinish7353212(arg1)
    print("OnSubFinish7353212")
    this:SafeDestroyQuestNpc(npcs.Npc14365.alias, 1073)
end

function Quest73532:OnSubFailed7353212(arg1)
    print("OnSubFailed7353212")
end

function Quest73532:OnSubStart7353202(arg1)
    print("OnSubStart7353202")
    this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4381.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4380.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):SitOnChair(8010, false)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):DisableInteeHeadCtrl(true)
end

function Quest73532:OnSubFinish7353202(arg1)
    print("OnSubFinish7353202")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
end

function Quest73532:OnSubFailed7353202(arg1)
    print("OnSubFailed7353202")
end

function Quest73532:OnSubStart7353203(arg1)
    print("OnSubStart7353203")
    this:NpcCreateWithNpcTrigger(npcs.Npc14365.id, 7353203, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc4381.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4380.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):SitOnChair(8010, false)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    this:BanCrowdNpc(3302, 9, datas.Q7353203_InstanceIDList, true)
end

function Quest73532:OnSubFinish7353203(arg1)
    print("OnSubFinish7353203")
    this:SafeDestroyQuestNpc(npcs.Npc1063.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14365.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 73532):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc4381.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4380.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:TransmitPlayerWithQuestIdByData(7353203, 1, datas.Q7353203_TransmitData, nil, nil, nil)
        end, nil, nil, 0, false, true)

        this:BanCrowdNpc(3302, 9, datas.Q7353203_InstanceIDList, false)
    end)
end

function Quest73532:OnSubFailed7353203(arg1)
    print("OnSubFailed7353203")
end

function Quest73532:OnSubStart7353204(arg1)
    print("OnSubStart7353204")
    this:CreateQuestNpc(arg1, npcs.Npc14376.id, 0, false, 0)
    this:DeployStoryByQuest(147353204)
end

function Quest73532:OnSubFinish7353204(arg1)
    print("OnSubFinish7353204")
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:CancelStoryByQuest(147353204)
end

function Quest73532:OnSubFailed7353204(arg1)
    print("OnSubFailed7353204")
end

function Quest73532:OnSubStart7353205(arg1)
    print("OnSubStart7353205")
    this:NpcCreateWithNpcTrigger(npcs.Npc1050.id, 7353205, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc4306.alias, 1, true)
end

function Quest73532:OnSubFinish7353205(arg1)
    print("OnSubFinish7353205")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Q7353205_NarratorWithId, nil)
    end)
end

function Quest73532:OnSubFailed7353205(arg1)
    print("OnSubFailed7353205")
end

function Quest73532:OnSubStart7353206(arg1)
    print("OnSubStart7353206")
    this:CreateQuestNpc(arg1, npcs.Npc1052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4306.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1052.alias, 73532):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1059.alias, 73532):SitOnChair(8010, true)
    actorMgr:CreateActorWithPos("Q7353206_TriggerIn", "Actor/Gadget/Q7353206_TriggerIn", 70900002, 0, points._Q7353206_TriggerInPoint_.pos, points._Q7353206_TriggerInPoint_.rot, true, false, 3)
end

function Quest73532:OnSubFinish7353206(arg1)
    print("OnSubFinish7353206")
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:LightNotifyTo(npcs.Npc4306.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Q7353206_NarratorWithId, nil)
    end)
end

function Quest73532:OnSubFailed7353206(arg1)
    print("OnSubFailed7353206")
end

function Quest73532:OnSubStart7353207(arg1)
    print("OnSubStart7353207")
    this:CreateQuestNpc(arg1, npcs.Npc4385.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1052.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1052.alias, 73532):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1059.alias, 73532):SitOnChair(8010, true)
    end)

    actorMgr:CreateActorWithPos("Q7353207_TriggerIn", "Actor/Gadget/Q7353207_TriggerIn", 70900002, 0, points._Q7353207_TriggerInPoint_.pos, points._Q7353207_TriggerInPoint_.rot, true, false, 1073)
    this:DeployStoryByQuest(147353207)
end

function Quest73532:OnSubFinish7353207(arg1)
    print("OnSubFinish7353207")
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4385.alias, 1073)
    this:CancelStoryByQuest(147353207)
end

function Quest73532:OnSubFailed7353207(arg1)
    print("OnSubFailed7353207")
end

function Quest73532:OnSubStart7353208(arg1)
    print("OnSubStart7353208")
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085.id, 0, false, 0)
    this:NotifyTo(npcs.Npc4376.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7353208_TriggerIn", "Actor/Gadget/Q7353208_TriggerIn", 70900002, 0, points._Q7353208_TriggerInPoint_.pos, points._Q7353208_TriggerInPoint_.rot, true, false, 3)
end

function Quest73532:OnSubFinish7353208(arg1)
    print("OnSubFinish7353208")
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1085.alias, 3)
    this:LightNotifyTo(npcs.Npc4376.alias, 0, true)
end

function Quest73532:OnSubFailed7353208(arg1)
    print("OnSubFailed7353208")
end

function Quest73532:OnSubStart7353209(arg1)
    print("OnSubStart7353209")
    this:CreateQuestNpc(arg1, npcs.Npc4385.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7353209_TriggerIn", "Actor/Gadget/Q7353209_TriggerIn", 70900002, 0, points._Q7353209_TriggerInPoint_.pos, points._Q7353209_TriggerInPoint_.rot, true, false, 1073)
end

function Quest73532:OnSubFinish7353209(arg1)
    print("OnSubFinish7353209")
    this:SafeDestroyQuestNpc(npcs.Npc4385.alias, 1073)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        this:TransmitPlayerWithQuestIdByData(7353209, 1, datas.Q7353203_TransmitData, nil, nil, nil)
    end, nil, nil, "", false, true)
end

function Quest73532:OnSubFailed7353209(arg1)
    print("OnSubFailed7353209")
end

function Quest73532:OnSubStart7353211(arg1)
    print("OnSubStart7353211")
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7353211_TriggerIn", "Actor/Gadget/Q7353211_TriggerIn", 70900002, 0, points._Q7353211_TriggerInPoint_.pos, points._Q7353211_TriggerInPoint_.rot, true, false, 3)
end

function Quest73532:OnSubFinish7353211(arg1)
    print("OnSubFinish7353211")
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14376.alias, 3)
end

function Quest73532:OnSubFailed7353211(arg1)
    print("OnSubFailed7353211")
end

return Quest73532
