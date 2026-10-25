require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76031 = class("Quest76031", QuestActorProxy)
Quest76031.defaultAlias = "Quest76031"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76031:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603101"] = self.OnSubStart7603101,
        ["7603106"] = self.OnSubStart7603106,
        ["7603102"] = self.OnSubStart7603102,
        ["7603103"] = self.OnSubStart7603103,
        ["7603104"] = self.OnSubStart7603104,
        ["7603105"] = self.OnSubStart7603105
    }
end

function Quest76031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603101"] = self.OnSubFinish7603101,
        ["7603106"] = self.OnSubFinish7603106,
        ["7603102"] = self.OnSubFinish7603102,
        ["7603103"] = self.OnSubFinish7603103,
        ["7603104"] = self.OnSubFinish7603104,
        ["7603105"] = self.OnSubFinish7603105
    }
end

function Quest76031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76031:Start()
    print("Start")
end

function Quest76031:OnDestroy()
    print("OnDestroy")
end

function Quest76031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc15605.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7104.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:ActorDestroy("Q7603101Trigger")
    this:DestroyNpcTrigger("Q7603101N15605Trigger")
    this:DestroyNpcTrigger("Q7603102N1315Trigger")
    this:DestroyNpcTrigger("Q7603103N1315Trigger")
    this:DestroyNpcTrigger("Q7603106N1318Trigger")
    this:CancelStoryByQuest(147603101)
end

function Quest76031:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7603101Trigger")
end

function Quest76031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76031:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76031:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76031:OnSubStart7603101(arg1)
    print("OnSubStart7603101")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15605.id, 0, 7603101, 50, true)
    actorMgr:CreateActorWithPos("Q7603101Trigger", "Actor/Gadget/Q7603101Trigger", 70900002, 0, points._Q7603101TriggerPoint_.pos, points._Q7603101TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(147603101)
end

function Quest76031:OnSubFinish7603101(arg1)
    print("OnSubFinish7603101")
    this:SafeDestroyQuestNpc(npcs.Npc15605.alias, 3)
    this:SetNavigationByMainId(76031, true)
    this:ActorDestroy("Q7603101Trigger")
end

function Quest76031:OnSubStart7603106(arg1)
    print("OnSubStart7603106")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 25, 7603106)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76031):DoFreeStyle(4730, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76031):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(147603101)
end

function Quest76031:OnSubFinish7603106(arg1)
    print("OnSubFinish7603106")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

function Quest76031:OnSubStart7603102(arg1)
    print("OnSubStart7603102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 15, 7603102)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 76031):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7103.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7103.alias, 76031):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7103.alias, 76031):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 76031):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(147603101)
end

function Quest76031:OnSubFinish7603102(arg1)
    print("OnSubFinish7603102")
    this:SafeDestroyQuestNpc(npcs.Npc7103.alias, 3)
end

function Quest76031:OnSubStart7603103(arg1)
    print("OnSubStart7603103")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 30, 7603103)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 76031):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7104.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7105.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7097.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 76031):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7104.alias, 76031):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 76031):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(147603101)
end

function Quest76031:OnSubFinish7603103(arg1)
    print("OnSubFinish7603103")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7104.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7105.alias, 3)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:CancelStoryByQuest(147603101)
end

function Quest76031:OnSubStart7603104(arg1)
    print("OnSubStart7603104")
end

function Quest76031:OnSubFinish7603104(arg1)
    print("OnSubFinish7603104")
end

function Quest76031:OnSubStart7603105(arg1)
    print("OnSubStart7603105")
end

function Quest76031:OnSubFinish7603105(arg1)
    print("OnSubFinish7603105")
end

return Quest76031
