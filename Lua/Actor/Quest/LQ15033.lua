require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15033 = class("Quest15033", QuestActorProxy)
Quest15033.defaultAlias = "Quest15033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503301"] = self.OnSubStart1503301,
        ["1503306"] = self.OnSubStart1503306,
        ["1503302"] = self.OnSubStart1503302,
        ["1503307"] = self.OnSubStart1503307,
        ["1503309"] = self.OnSubStart1503309,
        ["1503310"] = self.OnSubStart1503310,
        ["1503308"] = self.OnSubStart1503308,
        ["1503303"] = self.OnSubStart1503303,
        ["1503304"] = self.OnSubStart1503304,
        ["1503305"] = self.OnSubStart1503305
    }
end

function Quest15033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503301"] = self.OnSubFinish1503301,
        ["1503306"] = self.OnSubFinish1503306,
        ["1503302"] = self.OnSubFinish1503302,
        ["1503307"] = self.OnSubFinish1503307,
        ["1503309"] = self.OnSubFinish1503309,
        ["1503310"] = self.OnSubFinish1503310,
        ["1503308"] = self.OnSubFinish1503308,
        ["1503303"] = self.OnSubFinish1503303,
        ["1503304"] = self.OnSubFinish1503304,
        ["1503305"] = self.OnSubFinish1503305
    }
end

function Quest15033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503302"] = self.OnSubFailed1503302, ["1503304"] = self.OnSubFailed1503304}
end

function Quest15033:Start()
    print("Start")
end

function Quest15033:OnDestroy()
    print("OnDestroy")
end

function Quest15033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15033:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("WaleishaP2Point01")
    this:ActorDestroy("WaleishaP2Point03")
    this:ActorDestroy("WaleishaP2Point02")
    this:ActorDestroy("WaleishaP2Point022")
end

function Quest15033:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15033:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15033:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15033:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15033:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15033:OnSubStart1503301(arg1)
    print("OnSubStart1503301")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15033:OnSubFinish1503301(arg1)
    print("OnSubFinish1503301")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SetNavigationByMainId(15033, true)
end

function Quest15033:OnSubStart1503306(arg1)
    print("OnSubStart1503306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503306, 0, 10, 0, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
end

function Quest15033:OnSubFinish1503306(arg1)
    print("OnSubFinish1503306")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15033:OnSubStart1503302(arg1)
    print("OnSubStart1503302")
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15033:OnSubFinish1503302(arg1)
    print("OnSubFinish1503302")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    actorMgr:CreateActorWithPos("WaleishaP2Point03", "Actor/Gadget/WaleishaP2Point03", 70900002, 0, points._WaleishaP2Point03Point_.pos, points._WaleishaP2Point03Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(false)
end

function Quest15033:OnSubFailed1503302(arg1)
    print("OnSubFailed1503302")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest15033:OnSubStart1503307(arg1)
    print("OnSubStart1503307")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503307, 0, 12, 1, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
end

function Quest15033:OnSubFinish1503307(arg1)
    print("OnSubFinish1503307")
    actorMgr:CreateActorWithPos("WaleishaP2Point03", "Actor/Gadget/WaleishaP2Point03", 70900002, 0, points._WaleishaP2Point03Point_.pos, points._WaleishaP2Point03Point_.rot, true, false, 3)
end

function Quest15033:OnSubStart1503309(arg1)
    print("OnSubStart1503309")
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15033:OnSubFinish1503309(arg1)
    print("OnSubFinish1503309")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    actorMgr:CreateActorWithPos("WaleishaP2Point03", "Actor/Gadget/WaleishaP2Point03", 70900002, 0, points._WaleishaP2Point03Point_.pos, points._WaleishaP2Point03Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(false)
end

function Quest15033:OnSubStart1503310(arg1)
    print("OnSubStart1503310")
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15033:OnSubFinish1503310(arg1)
    print("OnSubFinish1503310")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    actorMgr:CreateActorWithPos("WaleishaP2Point03", "Actor/Gadget/WaleishaP2Point03", 70900002, 0, points._WaleishaP2Point03Point_.pos, points._WaleishaP2Point03Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15033):DisableInteeHeadCtrl(false)
end

function Quest15033:OnSubStart1503308(arg1)
    print("OnSubStart1503308")
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
end

function Quest15033:OnSubFinish1503308(arg1)
    print("OnSubFinish1503308")
end

function Quest15033:OnSubStart1503303(arg1)
    print("OnSubStart1503303")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21802.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6439.alias, true, 1)
end

function Quest15033:OnSubFinish1503303(arg1)
    print("OnSubFinish1503303")
    this:SafeDestroyQuestNpc(npcs.Npc21802.alias, 3)
    this:LightNotifyTo("6439", 0, true)
    this:ShowBlackScreenWithDialogText(0.2, 2, 0.2, nil, nil, nil, 0, false, true)
end

function Quest15033:OnSubStart1503304(arg1)
    print("OnSubStart1503304")
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
    this:CreateSpeechBubbleTask(1098, 150339901, 5, true, 1, 2, true, false)
    this:DeployStoryByQuest(121503301)
end

function Quest15033:OnSubFinish1503304(arg1)
    print("OnSubFinish1503304")
    this:ClearSpeechBubbleTask()
    this:CancelStoryByQuest(121503301)
end

function Quest15033:OnSubFailed1503304(arg1)
    print("OnSubFailed1503304")
    this:CancelStoryByQuest(121503301)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 15033):DoFreeStateTrigger()
    this:ClearSpeechBubbleTask()
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_1, nil, nil, nil)
end

function Quest15033:OnSubStart1503305(arg1)
    print("OnSubStart1503305")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1503305, 0, 100, 1, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6305.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 15033):DoFreeStyle(1180, true, nil, true, true, false, false)
end

function Quest15033:OnSubFinish1503305(arg1)
    print("OnSubFinish1503305")
    this:NpcDestroyImmediately(3, npcs.Npc1098.alias)
    this:LightNotifyTo("6305", 0, true)
end

return Quest15033
