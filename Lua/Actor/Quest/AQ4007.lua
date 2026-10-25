require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4007 = class("Quest4007", QuestActorProxy)
Quest4007.defaultAlias = "Quest4007"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4007:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400702"] = self.OnSubStart400702,
        ["400711"] = self.OnSubStart400711,
        ["400703"] = self.OnSubStart400703,
        ["400704"] = self.OnSubStart400704,
        ["400705"] = self.OnSubStart400705,
        ["400706"] = self.OnSubStart400706,
        ["400713"] = self.OnSubStart400713,
        ["400707"] = self.OnSubStart400707,
        ["400708"] = self.OnSubStart400708,
        ["400709"] = self.OnSubStart400709,
        ["400710"] = self.OnSubStart400710,
        ["400712"] = self.OnSubStart400712
    }
end

function Quest4007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400702"] = self.OnSubFinish400702,
        ["400711"] = self.OnSubFinish400711,
        ["400703"] = self.OnSubFinish400703,
        ["400704"] = self.OnSubFinish400704,
        ["400705"] = self.OnSubFinish400705,
        ["400706"] = self.OnSubFinish400706,
        ["400713"] = self.OnSubFinish400713,
        ["400707"] = self.OnSubFinish400707,
        ["400708"] = self.OnSubFinish400708,
        ["400709"] = self.OnSubFinish400709,
        ["400710"] = self.OnSubFinish400710,
        ["400712"] = self.OnSubFinish400712
    }
end

function Quest4007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4007:Start()
    print("Start")
end

function Quest4007:OnDestroy()
    print("OnDestroy")
end

function Quest4007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4007:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 400709 then
        this:ActorDestroy(datas.Q400709_TriggerIn.alias)
    end
end

function Quest4007:OnSubStart400702(arg1)
    print("OnSubStart400702")
    this:CreateQuestNpcWithTriggerBlackEx("Q400702_TriggerIn", 400702, 13477, 1, 25, 0.5, 1, 0.5, 1)
end

function Quest4007:OnSubFinish400702(arg1)
    print("OnSubFinish400702")
end

function Quest4007:OnSubStart400711(arg1)
    print("OnSubStart400711")
    actorUtils.FinishQuestID(false, 400711)
end

function Quest4007:OnSubFinish400711(arg1)
    print("OnSubFinish400711")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("ChapterBeginDialog", 1404)
        end)
    end)
end

function Quest4007:OnSubStart400703(arg1)
    print("OnSubStart400703")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13535Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13536Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13685Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13686Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q400703_TriggerIn", "Actor/Gadget/Q400703_TriggerIn", 70900002, 0, points.TPos_Q400703_TriggerIn.pos, points.TPos_Q400703_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400703(arg1)
    print("OnSubFinish400703")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4007:OnSubStart400704(arg1)
    print("OnSubStart400704")
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13530Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13531Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13660Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13660Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13661Data.id, 0)
    actorMgr:CreateActorWithPos("Q400704_TriggerIn", "Actor/Gadget/Q400704_TriggerIn", 70900002, 0, points.TPos_Q400704_TriggerIn.pos, points.TPos_Q400704_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13660Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13661Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400704(arg1)
    print("OnSubFinish400704")
    this:SafeDestroyQuestNpc(npcs.Npc13660Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13661Data.alias, 3)
end

function Quest4007:OnSubStart400705(arg1)
    print("OnSubStart400705")
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13537Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13537Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q400705_TriggerIn", "Actor/Gadget/Q400705_TriggerIn", 70900002, 0, points.TPos_Q400705_TriggerIn.pos, points.TPos_Q400705_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400705(arg1)
    print("OnSubFinish400705")
end

function Quest4007:OnSubStart400706(arg1)
    print("OnSubStart400706")
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400706(arg1)
    print("OnSubFinish400706")
end

function Quest4007:OnSubStart400713(arg1)
    print("OnSubStart400713")
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400713(arg1)
    print("OnSubFinish400713")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_400706)
end

function Quest4007:OnSubStart400707(arg1)
    print("OnSubStart400707")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q400707_TriggerIn", "Actor/Gadget/Q400707_TriggerIn", 70900002, 0, {x = 4488.281, y = 42.498, z = 4611.321}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400707(arg1)
    print("OnSubFinish400707")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_40079904, 3, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest4007:OnSubStart400708(arg1)
    print("OnSubStart400708")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13533Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13532Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q400708_TriggerIn", "Actor/Gadget/Q400708_TriggerIn", 70900002, 0, {x = 4565.62, y = 162.027, z = 4631.968}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400708(arg1)
    print("OnSubFinish400708")
    this:ActorDestroy(datas.Q400708_TriggerIn.alias)
end

function Quest4007:OnSubStart400709(arg1)
    print("OnSubStart400709")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1171, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13533Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13532Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q400709_TriggerIn", "Actor/Gadget/Q400709_TriggerIn", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13535Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13536Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13685Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13686Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400709(arg1)
    print("OnSubFinish400709")
    this:ActorDestroy(datas.Q400709_TriggerIn.alias)
    this:LightNotifyTo(npcs.Npc5251Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13535Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13536Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13530Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13531Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13537Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13533Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13532Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13685Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13686Data.alias, 3)
end

function Quest4007:OnSubStart400710(arg1)
    print("OnSubStart400710")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4007:OnSubFinish400710(arg1)
    print("OnSubFinish400710")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
end

function Quest4007:OnSubStart400712(arg1)
    print("OnSubStart400712")
    actorMgr:CreateActorWithPos("Q400712_TriggerIn", "Actor/Gadget/Q400712_TriggerIn", 70900002, 0, points.TPos_Q400712_TriggerIn.pos, points.TPos_Q400712_TriggerIn.rot, true, false, 3)
end

function Quest4007:OnSubFinish400712(arg1)
    print("OnSubFinish400712")
end

return Quest4007
