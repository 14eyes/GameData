require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40128 = class("Quest40128", QuestActorProxy)
Quest40128.defaultAlias = "Quest40128"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40128:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40128:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012801"] = self.OnSubStart4012801,
        ["4012811"] = self.OnSubStart4012811,
        ["4012802"] = self.OnSubStart4012802,
        ["4012809"] = self.OnSubStart4012809,
        ["4012812"] = self.OnSubStart4012812,
        ["4012807"] = self.OnSubStart4012807,
        ["4012808"] = self.OnSubStart4012808,
        ["4012803"] = self.OnSubStart4012803,
        ["4012813"] = self.OnSubStart4012813,
        ["4012815"] = self.OnSubStart4012815,
        ["4012814"] = self.OnSubStart4012814,
        ["4012810"] = self.OnSubStart4012810,
        ["4012804"] = self.OnSubStart4012804,
        ["4012805"] = self.OnSubStart4012805,
        ["4012806"] = self.OnSubStart4012806
    }
end

function Quest40128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012801"] = self.OnSubFinish4012801,
        ["4012811"] = self.OnSubFinish4012811,
        ["4012802"] = self.OnSubFinish4012802,
        ["4012809"] = self.OnSubFinish4012809,
        ["4012812"] = self.OnSubFinish4012812,
        ["4012807"] = self.OnSubFinish4012807,
        ["4012808"] = self.OnSubFinish4012808,
        ["4012803"] = self.OnSubFinish4012803,
        ["4012813"] = self.OnSubFinish4012813,
        ["4012815"] = self.OnSubFinish4012815,
        ["4012814"] = self.OnSubFinish4012814,
        ["4012810"] = self.OnSubFinish4012810,
        ["4012804"] = self.OnSubFinish4012804,
        ["4012805"] = self.OnSubFinish4012805,
        ["4012806"] = self.OnSubFinish4012806
    }
end

function Quest40128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40128:Start()
    print("Start")
end

function Quest40128:OnDestroy()
    print("OnDestroy")
end

function Quest40128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40128:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13643Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13587Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4012803TriggerFinish", 3, false)
    actorMgr:DestroyEntityActor("Q4012805TriggerCancelWeather", 3, false)
    actorMgr:DestroyEntityActor("Q4012805TriggerRequest", 3, false)
    this:CancelStoryByQuest(134012801)
    this:CancelStoryByQuest(134012802)
    this:CancelWeather()
    this:ActorDestroy("Q4012811TriggerFinish")
    this:UnCallDelayByQuest("1")
end

function Quest40128:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40128:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        this:SetWeather("BigWorld/Weather_ClearSky_Fd")
    elseif arg1 == 1 then
        this:SetWeather("BigWorld/Weather_Rain_Light_Fd")
    end
end

function Quest40128:OnSubStart4012801(arg1)
    print("OnSubStart4012801")
    this:CreateQuestNpc(arg1, npcs.Npc5073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13587Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5073Data.alias):DoFreeStateTrigger()
    this:CallDelayByQuest("1", 0.5, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5073Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest40128:OnSubFinish4012801(arg1)
    print("OnSubFinish4012801")
    this:SafeDestroyQuestNpc(npcs.Npc5073Data.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 10157)
    end)

    this:GetQuestNpcActor(npcs.Npc5073Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40128:OnSubStart4012811(arg1)
    print("OnSubStart4012811")
    actorMgr:CreateActorWithPos("Q4012811TriggerFinish", "Actor/Gadget/Q4012811TriggerFinish", 70900002, 0, points.TPos_Q4012811TriggerFinish.pos, points.TPos_Q4012811TriggerFinish.rot, true, false, 3)
end

function Quest40128:OnSubFinish4012811(arg1)
    print("OnSubFinish4012811")
end

function Quest40128:OnSubStart4012802(arg1)
    print("OnSubStart4012802")
    this:CreateQuestNpc(arg1, npcs.Npc13643Data.id, 0)
end

function Quest40128:OnSubFinish4012802(arg1)
    print("OnSubFinish4012802")
    this:SafeDestroyQuestNpc(npcs.Npc13643Data.alias, 3)
end

function Quest40128:OnSubStart4012809(arg1)
    print("OnSubStart4012809")
    this:CreateQuestNpc(arg1, npcs.Npc13587Data.id, 0)
    this:DeployStoryByQuest(134012801)
end

function Quest40128:OnSubFinish4012809(arg1)
    print("OnSubFinish4012809")
end

function Quest40128:OnSubStart4012812(arg1)
    print("OnSubStart4012812")
end

function Quest40128:OnSubFinish4012812(arg1)
    print("OnSubFinish4012812")
end

function Quest40128:OnSubStart4012807(arg1)
    print("OnSubStart4012807")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1074Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:CreateQuestNpc(arg1, npcs.Npc13587Data.id, 0)
        this:DeployStoryByQuest(134012802)
    end)
end

function Quest40128:OnSubFinish4012807(arg1)
    print("OnSubFinish4012807")
end

function Quest40128:OnSubStart4012808(arg1)
    print("OnSubStart4012808")
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DoFreeStyle(1190, true, nil, true, true, true, false)
    this:DeployStoryByQuest(134012802)
end

function Quest40128:OnSubFinish4012808(arg1)
    print("OnSubFinish4012808")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
end

function Quest40128:OnSubStart4012803(arg1)
    print("OnSubStart4012803")
    actorMgr:CreateActorWithPos("Q4012803TriggerFinish", "Actor/Gadget/Q4012803TriggerFinish", 70900002, 0, points.TPos_Q4012803TriggerFinish.pos, points.TPos_Q4012803TriggerFinish.rot, true, false, 3)
    this:DeployStoryByQuest(134012802)
end

function Quest40128:OnSubFinish4012803(arg1)
    print("OnSubFinish4012803")
    this:NarratorOnlyTaskByDataWithPriority(datas.NarratorWithId4012803, 40128, 1)
end

function Quest40128:OnSubStart4012813(arg1)
    print("OnSubStart4012813")
end

function Quest40128:OnSubFinish4012813(arg1)
    print("OnSubFinish4012813")
end

function Quest40128:OnSubStart4012815(arg1)
    print("OnSubStart4012815")
end

function Quest40128:OnSubFinish4012815(arg1)
    print("OnSubFinish4012815")
end

function Quest40128:OnSubStart4012814(arg1)
    print("OnSubStart4012814")
end

function Quest40128:OnSubFinish4012814(arg1)
    print("OnSubFinish4012814")
end

function Quest40128:OnSubStart4012810(arg1)
    print("OnSubStart4012810")
    this:DeployStoryByQuest(134012802)
end

function Quest40128:OnSubFinish4012810(arg1)
    print("OnSubFinish4012810")
end

function Quest40128:OnSubStart4012804(arg1)
    print("OnSubStart4012804")
    this:DeployStoryByQuest(134012802)
end

function Quest40128:OnSubFinish4012804(arg1)
    print("OnSubFinish4012804")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4012806, nil, 40128)
end

function Quest40128:OnSubStart4012805(arg1)
    print("OnSubStart4012805")
    this:CreateQuestNpc(arg1, npcs.Npc13558Data.id, 0)
    actorMgr:CreateActorWithPos("Q4012805TriggerRequest", "Actor/Gadget/Q4012805TriggerRequest", 70900002, 0, points.TPos_Q4012805TriggerRequest.pos, points.TPos_Q4012805TriggerRequest.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13558Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4012805TriggerCancelWeather", "Actor/Gadget/Q4012805TriggerCancelWeather", 70900002, 0, {x = 3399.6, y = 443.378, z = 3006.591}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:DeployStoryByQuest(134012802)
end

function Quest40128:OnSubFinish4012805(arg1)
    print("OnSubFinish4012805")
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:CancelWeather()
    this:ActorDestroy("Q4012805TriggerCancelWeather")
end

function Quest40128:OnSubStart4012806(arg1)
    print("OnSubStart4012806")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1074Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13587Data.id, 0)
        this:DeployStoryByQuest(134012802)
    end)
end

function Quest40128:OnSubFinish4012806(arg1)
    print("OnSubFinish4012806")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13587Data.alias, 3)
    this:CancelStoryByQuest(134012802)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("RainbowPrinceMainPage", 0)
        end)
    end)
end

return Quest40128
