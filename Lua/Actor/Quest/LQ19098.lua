require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19098 = class("Quest19098", QuestActorProxy)
Quest19098.defaultAlias = "Quest19098"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19098:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909801"] = self.OnSubStart1909801,
        ["1909802"] = self.OnSubStart1909802,
        ["1909803"] = self.OnSubStart1909803,
        ["1909805"] = self.OnSubStart1909805,
        ["1909806"] = self.OnSubStart1909806,
        ["1909807"] = self.OnSubStart1909807,
        ["1909808"] = self.OnSubStart1909808,
        ["1909810"] = self.OnSubStart1909810,
        ["1909809"] = self.OnSubStart1909809,
        ["1909811"] = self.OnSubStart1909811
    }
end

function Quest19098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909801"] = self.OnSubFinish1909801,
        ["1909802"] = self.OnSubFinish1909802,
        ["1909803"] = self.OnSubFinish1909803,
        ["1909805"] = self.OnSubFinish1909805,
        ["1909806"] = self.OnSubFinish1909806,
        ["1909807"] = self.OnSubFinish1909807,
        ["1909808"] = self.OnSubFinish1909808,
        ["1909810"] = self.OnSubFinish1909810,
        ["1909809"] = self.OnSubFinish1909809,
        ["1909811"] = self.OnSubFinish1909811
    }
end

function Quest19098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19098:Start()
    print("Start")
end

function Quest19098:OnDestroy()
    print("OnDestroy")
end

function Quest19098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19098:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13306Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4125Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4126Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13346Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaCostume.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4129Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4122Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4125Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4126Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1909806TriggerRequire", 3, false)
    actorMgr:DestroyEntityActor("Q1909807TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909801N516Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1909805N517Trigger", 3, false)
end

function Quest19098:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19098:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19098:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19098:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1909808)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 1909809)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 1909810)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 1909811)
    end
end

function Quest19098:OnSubStart1909801(arg1)
    print("OnSubStart1909801")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909801)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909801, 1, 5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13304Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13305Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4125Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
    this:CreateQuestNpcById(1909801, npcs.Npc13456Data.id, 5)
end

function Quest19098:OnSubFinish1909801(arg1)
    print("OnSubFinish1909801")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19098:OnSubStart1909802(arg1)
    print("OnSubStart1909802")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909802)
    this:CreateQuestNpc(arg1, npcs.Npc13304Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13305Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest19098:OnSubFinish1909802(arg1)
    print("OnSubFinish1909802")
end

function Quest19098:OnSubStart1909803(arg1)
    print("OnSubStart1909803")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909803)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest19098:OnSubFinish1909803(arg1)
    print("OnSubFinish1909803")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
end

function Quest19098:OnSubStart1909805(arg1)
    print("OnSubStart1909805")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909805)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4125Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaCostume.id, 1909805, 4, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
end

function Quest19098:OnSubFinish1909805(arg1)
    print("OnSubFinish1909805")
end

function Quest19098:OnSubStart1909806(arg1)
    print("OnSubStart1909806")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909806)
    this:CreateQuestNpc(arg1, npcs.Npc4125Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4126Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4124Data.id, 5)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4109Data.id, 6)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaCostume.id, 7)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4125Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13306Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1909806TriggerRequire", "Actor/Gadget/Q1909806TriggerRequire", 70900002, 0, points.TPos_Q1909806TriggerRequire.pos, points.TPos_Q1909806TriggerRequire.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc4124Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4125Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest19098:OnSubFinish1909806(arg1)
    print("OnSubFinish1909806")
    this:SafeDestroyQuestNpc(npcs.Npc4125Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
end

function Quest19098:OnSubStart1909807(arg1)
    print("OnSubStart1909807")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909807)
    this:DailyNpcSafeHideSelf(npcs.Npc4125Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4126Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaCostume.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13420Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Coop_KaeyaCostume.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1909807TriggerRequest", "Actor/Gadget/Q1909807TriggerRequest", 70900002, 0, points.TPos_Q1909807TriggerRequest.pos, points.TPos_Q1909807TriggerRequest.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc4109Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest19098:OnSubFinish1909807(arg1)
    print("OnSubFinish1909807")
    this:LightNotifyTo(npcs.Npc4125Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4126Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaCostume.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
end

function Quest19098:OnSubStart1909808(arg1)
    print("OnSubStart1909808")
end

function Quest19098:OnSubFinish1909808(arg1)
    print("OnSubFinish1909808")
end

function Quest19098:OnSubStart1909810(arg1)
    print("OnSubStart1909810")
end

function Quest19098:OnSubFinish1909810(arg1)
    print("OnSubFinish1909810")
end

function Quest19098:OnSubStart1909809(arg1)
    print("OnSubStart1909809")
end

function Quest19098:OnSubFinish1909809(arg1)
    print("OnSubFinish1909809")
end

function Quest19098:OnSubStart1909811(arg1)
    print("OnSubStart1909811")
end

function Quest19098:OnSubFinish1909811(arg1)
    print("OnSubFinish1909811")
end

return Quest19098
