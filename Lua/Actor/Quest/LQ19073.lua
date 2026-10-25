require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19073 = class("Quest19073", QuestActorProxy)
Quest19073.defaultAlias = "Quest19073"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19073:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907301"] = self.OnSubStart1907301,
        ["1907302"] = self.OnSubStart1907302,
        ["1907303"] = self.OnSubStart1907303,
        ["1907305"] = self.OnSubStart1907305,
        ["1907304"] = self.OnSubStart1907304
    }
end

function Quest19073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907301"] = self.OnSubFinish1907301,
        ["1907302"] = self.OnSubFinish1907302,
        ["1907303"] = self.OnSubFinish1907303,
        ["1907305"] = self.OnSubFinish1907305,
        ["1907304"] = self.OnSubFinish1907304
    }
end

function Quest19073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1907303"] = self.OnSubFailed1907303, ["1907305"] = self.OnSubFailed1907305}
end

function Quest19073:Start()
    print("Start")
end

function Quest19073:OnDestroy()
    print("OnDestroy")
end

function Quest19073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19073:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4129Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4122Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4110Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4110Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19073Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19073Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q1907302TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1907303TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1907305TriggerFinish", 3, false)
    this:CancelStoryByQuest(1907303)
    this:ActorDestroy("Q19073Trigger4")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("2")
    this:ActorDestroy("Q1907305TriggerBlack")
end

function Quest19073:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19073:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19073:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest19073:OnSubStart1907301(arg1)
    print("OnSubStart1907301")
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13304Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13305Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13420Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q19073Trigger", "Actor/Gadget/Q19073Trigger", 70900002, 0, points.TPos_Q19073Trigger.pos, points.TPos_Q19073Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:NpcCreate(arg1, npcs.Npc13456Data.id, 5)
    questNpcActor:LookAt(datas.Bird1907302)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19073:OnSubFinish1907301(arg1)
    print("OnSubFinish1907301")
end

function Quest19073:OnSubStart1907302(arg1)
    print("OnSubStart1907302")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1907302)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    questNpcActor:LookAt(datas.Bird1907302)
    actorMgr:CreateActorWithPos("Q1907302TriggerRequest", "Actor/Gadget/Q1907302TriggerRequest", 70900002, 0, points.TPos_Q1907302TriggerRequest.pos, points.TPos_Q1907302TriggerRequest.rot, true, false, 3)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19073:OnSubFinish1907302(arg1)
    print("OnSubFinish1907302")
    this:SafeDestroyQuestNpc(npcs.Npc13420Data.alias, 3)
end

function Quest19073:OnSubStart1907303(arg1)
    print("OnSubStart1907303")
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias, 19073)
    this:NpcForceAvatarWalkByDist(questNpcActor, 2, 3)
    this:DeployStoryByQuest(1907303)
end

function Quest19073:OnSubFinish1907303(arg1)
    print("OnSubFinish1907303")
    this:ClearNarratorTask()
end

function Quest19073:OnSubFailed1907303(arg1)
    print("OnSubFailed1907303")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(1907303)
end

function Quest19073:OnSubStart1907305(arg1)
    print("OnSubStart1907305")
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DisableInteeHeadCtrl(false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias, 19073)
    this:NpcResetForceAvatarWalk(questNpcActor)
end

function Quest19073:OnSubFinish1907305(arg1)
    print("OnSubFinish1907305")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1907305TriggerBlack", "Actor/Gadget/Q1907305TriggerBlack", 70900002, 0, {x = -2079.794, y = 201.652, z = 2595.117}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest19073:OnSubFailed1907305(arg1)
    print("OnSubFailed1907305")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(1907303)
end

function Quest19073:OnSubStart1907304(arg1)
    print("OnSubStart1907304")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1907304)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1907303TriggerRequest", "Actor/Gadget/Q1907303TriggerRequest", 70900002, 0, {x = -2079.498, y = 201.651, z = 2596.08}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19073:OnSubFinish1907304(arg1)
    print("OnSubFinish1907304")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4110Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
end

return Quest19073
