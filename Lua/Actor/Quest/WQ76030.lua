require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76030 = class("Quest76030", QuestActorProxy)
Quest76030.defaultAlias = "Quest76030"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603001"] = self.OnSubStart7603001,
        ["7603006"] = self.OnSubStart7603006,
        ["7603002"] = self.OnSubStart7603002,
        ["7603003"] = self.OnSubStart7603003,
        ["7603007"] = self.OnSubStart7603007,
        ["7603004"] = self.OnSubStart7603004,
        ["7603005"] = self.OnSubStart7603005
    }
end

function Quest76030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603001"] = self.OnSubFinish7603001,
        ["7603006"] = self.OnSubFinish7603006,
        ["7603002"] = self.OnSubFinish7603002,
        ["7603003"] = self.OnSubFinish7603003,
        ["7603007"] = self.OnSubFinish7603007,
        ["7603004"] = self.OnSubFinish7603004,
        ["7603005"] = self.OnSubFinish7603005
    }
end

function Quest76030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7603004"] = self.OnSubFailed7603004}
end

function Quest76030:Start()
    print("Start")
end

function Quest76030:OnDestroy()
    print("OnDestroy")
end

function Quest76030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q7603006Trigger")
    this:ActorDestroy("Q7603007Trigger")
    this:ActorDestroy("Q7603002Trigger")
    this:DestroyNpcTrigger("Q7603001N1318Trigger")
    this:UnCallDelayByQuest("Q7603003N1318CallDelay")
    this:DestroyNpcTrigger("Q7603003N1318Trigger")
    this:DestroyNpcTrigger("Q7603005N1318Trigger")
    this:CancelStoryByQuest(147603001)
    this:CancelStoryByQuest(147603002)
    this:CancelStoryByQuest(147603000)
end

function Quest76030:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7603006Trigger")
    this:ActorDestroy("Q7603007Trigger")
    this:ActorDestroy("Q7603002Trigger")
end

function Quest76030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76030:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76030:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76030:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76030:OnSubStart7603001(arg1)
    print("OnSubStart7603001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 45, 7603001)
    this:DeployStoryByQuest(147603001)
end

function Quest76030:OnSubFinish7603001(arg1)
    print("OnSubFinish7603001")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:CancelStoryByQuest(147603001)
    this:ClearNarratorTask()
    this:SetNavigationByMainId(76030, true)
end

function Quest76030:OnSubStart7603006(arg1)
    print("OnSubStart7603006")
    actorMgr:CreateActorWithPos("Q7603006Trigger", "Actor/Gadget/Q7603006Trigger", 70900002, 0, points._Q7603006TriggerPoint_.pos, points._Q7603006TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603006(arg1)
    print("OnSubFinish7603006")
end

function Quest76030:OnSubStart7603002(arg1)
    print("OnSubStart7603002")
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603002(arg1)
    print("OnSubFinish7603002")
end

function Quest76030:OnSubStart7603003(arg1)
    print("OnSubStart7603003")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7603003, 0, 30, 0, npcs.Npc1318.id)
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603003(arg1)
    print("OnSubFinish7603003")
end

function Quest76030:OnSubStart7603007(arg1)
    print("OnSubStart7603007")
    actorMgr:CreateActorWithPos("Q7603007Trigger", "Actor/Gadget/Q7603007Trigger", 70900002, 0, points._Q7603007TriggerPoint_.pos, points._Q7603007TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603007(arg1)
    print("OnSubFinish7603007")
    this:EnterSceneLookCameraByParam(datas.SceneLookCameraParams_7603007)
end

function Quest76030:OnSubStart7603004(arg1)
    print("OnSubStart7603004")
    this:DeployStoryByQuest(147603000)
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603004(arg1)
    print("OnSubFinish7603004")
    this:CancelStoryByQuest(147603000)
end

function Quest76030:OnSubFailed7603004(arg1)
    print("OnSubFailed7603004")
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
    this:CancelStoryByQuest(147603000)
end

function Quest76030:OnSubStart7603005(arg1)
    print("OnSubStart7603005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7603005, 0, 30, 0, npcs.Npc1318.id)
    this:DeployStoryByQuest(147603002)
end

function Quest76030:OnSubFinish7603005(arg1)
    print("OnSubFinish7603005")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:CancelStoryByQuest(147603002)
end

return Quest76030
