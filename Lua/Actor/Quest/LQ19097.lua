require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19097 = class("Quest19097", QuestActorProxy)
Quest19097.defaultAlias = "Quest19097"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19097:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19097:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909708"] = self.OnSubStart1909708,
        ["1909701"] = self.OnSubStart1909701,
        ["1909702"] = self.OnSubStart1909702,
        ["1909703"] = self.OnSubStart1909703,
        ["1909705"] = self.OnSubStart1909705,
        ["1909706"] = self.OnSubStart1909706,
        ["1909707"] = self.OnSubStart1909707
    }
end

function Quest19097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909708"] = self.OnSubFinish1909708,
        ["1909701"] = self.OnSubFinish1909701,
        ["1909702"] = self.OnSubFinish1909702,
        ["1909703"] = self.OnSubFinish1909703,
        ["1909705"] = self.OnSubFinish1909705,
        ["1909706"] = self.OnSubFinish1909706,
        ["1909707"] = self.OnSubFinish1909707
    }
end

function Quest19097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19097:Start()
    print("Start")
end

function Quest19097:OnDestroy()
    print("OnDestroy")
end

function Quest19097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19097:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13319Data.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1533Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1529Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1535Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1596Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1595Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1533Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1535Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19097Trigger", 1018, false)
    actorMgr:DestroyEntityActor("Q1909701TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909703N516Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1909707N516Trigger", 3, false)
    if this:IsPlayerSitOnChair(3, M.Pos(1756.621, 222.3955, -388.3506), 3) then
        this:PlayerStandFromChair(0)
    end
end

function Quest19097:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19097:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19097:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19097:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest19097:OnSubStart1909708(arg1)
    print("OnSubStart1909708")
end

function Quest19097:OnSubFinish1909708(arg1)
    print("OnSubFinish1909708")
end

function Quest19097:OnSubStart1909701(arg1)
    print("OnSubStart1909701")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909701)
    this:GetQuestNpcActor(npcs.Npc1527Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1909701TriggerRequest", "Actor/Gadget/Q1909701TriggerRequest", 70900002, 0, {x = 1769.125, y = 222.123, z = -399.091}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19097:OnSubFinish1909701(arg1)
    print("OnSubFinish1909701")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TextmapId, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19097:OnSubStart1909702(arg1)
    print("OnSubStart1909702")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909702)
    this:CreateQuestNpc(arg1, npcs.Npc1527Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1527Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
end

function Quest19097:OnSubFinish1909702(arg1)
    print("OnSubFinish1909702")
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.TextmapId, 1, nil, nil)
end

function Quest19097:OnSubStart1909703(arg1)
    print("OnSubStart1909703")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909703)
    this:NpcCreateWithTriggerBlack(npcs.Coop_KaeyaData.id, 1909703, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, false)
end

function Quest19097:OnSubFinish1909703(arg1)
    print("OnSubFinish1909703")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19097:OnSubStart1909705(arg1)
    print("OnSubStart1909705")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909705)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1531Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest19097:OnSubFinish1909705(arg1)
    print("OnSubFinish1909705")
end

function Quest19097:OnSubStart1909706(arg1)
    print("OnSubStart1909706")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909706)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19097:OnSubFinish1909706(arg1)
    print("OnSubFinish1909706")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19097:OnSubStart1909707(arg1)
    print("OnSubStart1909707")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909707)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909707, 3, 3, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1533Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest19097:OnSubFinish1909707(arg1)
    print("OnSubFinish1909707")
    this:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1533Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13319Data.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 1018)
    this:LightNotifyTo(npcs.Npc1535Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
end

return Quest19097
