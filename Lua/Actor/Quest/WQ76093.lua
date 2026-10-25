require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76093 = class("Quest76093", QuestActorProxy)
Quest76093.defaultAlias = "Quest76093"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76093:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76093:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609301"] = self.OnSubStart7609301,
        ["7609302"] = self.OnSubStart7609302,
        ["7609303"] = self.OnSubStart7609303,
        ["7609304"] = self.OnSubStart7609304,
        ["7609305"] = self.OnSubStart7609305,
        ["7609306"] = self.OnSubStart7609306,
        ["7609310"] = self.OnSubStart7609310,
        ["7609307"] = self.OnSubStart7609307,
        ["7609309"] = self.OnSubStart7609309,
        ["7609308"] = self.OnSubStart7609308
    }
end

function Quest76093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609301"] = self.OnSubFinish7609301,
        ["7609302"] = self.OnSubFinish7609302,
        ["7609303"] = self.OnSubFinish7609303,
        ["7609304"] = self.OnSubFinish7609304,
        ["7609305"] = self.OnSubFinish7609305,
        ["7609306"] = self.OnSubFinish7609306,
        ["7609310"] = self.OnSubFinish7609310,
        ["7609307"] = self.OnSubFinish7609307,
        ["7609309"] = self.OnSubFinish7609309,
        ["7609308"] = self.OnSubFinish7609308
    }
end

function Quest76093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7609302"] = self.OnSubFailed7609302}
end

function Quest76093:Start()
    print("Start")
end

function Quest76093:OnDestroy()
    print("OnDestroy")
end

function Quest76093:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76093:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76093:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76093:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7609301Trigger")
    this:ActorDestroy("Q7609303Trigger")
    this:ActorDestroy("Q7609306Trigger")
    this:ActorDestroy("Q7609307Trigger")
end

function Quest76093:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76093:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76093:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest76093:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76093:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76093:OnSubStart7609301(arg1)
    print("OnSubStart7609301")
    actorMgr:CreateActorWithPos("Q7609301Trigger", "Actor/Gadget/Q7609301Trigger", 70900002, 0, points._Q7609301TriggerPoint_.pos, points._Q7609301TriggerPoint_.rot, true, false, 3)
end

function Quest76093:OnSubFinish7609301(arg1)
    print("OnSubFinish7609301")
end

function Quest76093:OnSubStart7609302(arg1)
    print("OnSubStart7609302")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22381.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22383.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22383.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22384.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22386.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22387.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22387.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22388.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22388.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22389.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22389.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc7637.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7639.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7638.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7646.alias, true, 1)
    actorMgr:CreateActorWithPos("Q7609302Trigger", "Actor/Gadget/Q7609302Trigger", 70900002, 0, points._Q7609302TriggerPoint_.pos, points._Q7609302TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, true, true)
end

function Quest76093:OnSubFinish7609302(arg1)
    print("OnSubFinish7609302")
end

function Quest76093:OnSubFailed7609302(arg1)
    print("OnSubFailed7609302")
    this:SafeDestroyQuestNpc(npcs.Npc7180.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22381.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22383.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22384.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22386.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22387.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22388.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22389.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76093:OnSubStart7609303(arg1)
    print("OnSubStart7609303")
    this:NpcCreateWithNpcTrigger(npcs.Npc7183.id, 0, 30, 7609303)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7609303Trigger", "Actor/Gadget/Q7609303Trigger", 70900002, 0, points._Q7609303TriggerPoint_.pos, points._Q7609303TriggerPoint_.rot, true, false, 3)
end

function Quest76093:OnSubFinish7609303(arg1)
    print("OnSubFinish7609303")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(false, "")
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:SetNavigationByMainId(76093, true)
end

function Quest76093:OnSubStart7609304(arg1)
    print("OnSubStart7609304")
end

function Quest76093:OnSubFinish7609304(arg1)
    print("OnSubFinish7609304")
end

function Quest76093:OnSubStart7609305(arg1)
    print("OnSubStart7609305")
    this:CallDelayByQuest("1", 1, function(arg1_2)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7609305, 0, 30, 0.5, npcs.Npc7183.id)
        this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
        this:CallDelayByQuest("2", 1.6, function(arg1)
            this:RequestInteraction(npcs.Npc7183.alias, "", true)
        end)
    end)
end

function Quest76093:OnSubFinish7609305(arg1)
    print("OnSubFinish7609305")
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76093:OnSubStart7609306(arg1)
    print("OnSubStart7609306")
    actorMgr:CreateActorWithPos("Q7609306Trigger", "Actor/Gadget/Q7609306Trigger", 70900002, 0, points._Q7609306TriggerPoint_.pos, points._Q7609306TriggerPoint_.rot, true, false, 3)
end

function Quest76093:OnSubFinish7609306(arg1)
    print("OnSubFinish7609306")
end

function Quest76093:OnSubStart7609310(arg1)
    print("OnSubStart7609310")
end

function Quest76093:OnSubFinish7609310(arg1)
    print("OnSubFinish7609310")
end

function Quest76093:OnSubStart7609307(arg1)
    print("OnSubStart7609307")
    this:CreateQuestNpc(arg1, npcs.Npc7180.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22381.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22383.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22383.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22384.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22386.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22387.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22387.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22388.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22388.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22389.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22389.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7637.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7638.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7639.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7646.alias, true, 1)
    actorMgr:CreateActorWithPos("Q7609307Trigger", "Actor/Gadget/Q7609307Trigger", 70900002, 0, points._Q7609307TriggerPoint_.pos, points._Q7609307TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, true, true)
end

function Quest76093:OnSubFinish7609307(arg1)
    print("OnSubFinish7609307")
end

function Quest76093:OnSubStart7609309(arg1)
    print("OnSubStart7609309")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22381.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22383.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22383.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22384.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22386.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22387.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22387.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22388.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22388.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22389.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22389.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7609309Trigger", "Actor/Gadget/Q7609309Trigger", 70900002, 0, points._Q7609309TriggerPoint_.pos, points._Q7609309TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, true, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7637.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7638.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7639.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7646.alias, true, 1)
end

function Quest76093:OnSubFinish7609309(arg1)
    print("OnSubFinish7609309")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:LightNotifyTo(npcs.Npc7637.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7638.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7639.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7646.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc22381.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22383.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22384.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22386.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22387.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22388.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22389.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7180.alias, 3)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, false, true)
    this:CallDelayByQuest("", 1, function(arg1)
        local questGlobalVar = this:GetQuestGlobalVar(7609901)
        local v = this:GetQuestGlobalVar(7609901)
        if v == 1 then
            this:SetNavigationByMainId(76100, true)
        elseif v == 0 then
            this:SetNavigationByMainId(76099, true)
        end
    end)
end

function Quest76093:OnSubStart7609308(arg1)
    print("OnSubStart7609308")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22381.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22383.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22383.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22384.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22386.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22387.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22387.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22388.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22388.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22389.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22389.alias, 76093):DoFreeStyle(4476, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7609308Trigger", "Actor/Gadget/Q7609308Trigger", 70900002, 0, points._Q7609308TriggerPoint_.pos, points._Q7609308TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, true, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7637.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7638.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7639.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7646.alias, true, 1)
end

function Quest76093:OnSubFinish7609308(arg1)
    print("OnSubFinish7609308")
    this:SafeDestroyQuestNpc(npcs.Npc7180.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22381.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22383.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22384.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22386.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22387.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22388.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22389.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:LightNotifyTo(npcs.Npc7637.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7638.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7639.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7646.alias, 0, true)
    this:SetNavigationByMainId(76099, true)
    this:BanCrowdNpc(3611, 1, datas.InstanceIDList, false, true)
end

return Quest76093
