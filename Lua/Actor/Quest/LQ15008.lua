require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15008 = class("Quest15008", QuestActorProxy)
Quest15008.defaultAlias = "Quest15008"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500801"] = self.OnSubStart1500801,
        ["1500802"] = self.OnSubStart1500802,
        ["1500803"] = self.OnSubStart1500803,
        ["1500804"] = self.OnSubStart1500804,
        ["1500805"] = self.OnSubStart1500805,
        ["1500806"] = self.OnSubStart1500806,
        ["1500807"] = self.OnSubStart1500807,
        ["1500808"] = self.OnSubStart1500808,
        ["1500809"] = self.OnSubStart1500809
    }
end

function Quest15008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500801"] = self.OnSubFinish1500801,
        ["1500802"] = self.OnSubFinish1500802,
        ["1500803"] = self.OnSubFinish1500803,
        ["1500804"] = self.OnSubFinish1500804,
        ["1500805"] = self.OnSubFinish1500805,
        ["1500806"] = self.OnSubFinish1500806,
        ["1500807"] = self.OnSubFinish1500807,
        ["1500808"] = self.OnSubFinish1500808,
        ["1500809"] = self.OnSubFinish1500809
    }
end

function Quest15008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1500803"] = self.OnSubFailed1500803,
        ["1500807"] = self.OnSubFailed1500807,
        ["1500809"] = self.OnSubFailed1500809
    }
end

function Quest15008:Start()
    print("Start")
end

function Quest15008:OnDestroy()
    print("OnDestroy")
end

function Quest15008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15008:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15008:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15008:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15008:OnSubStart1500801(arg1)
    print("OnSubStart1500801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 14, 1500801)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    if this:GetQuestVar(1500801, 3) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_1500801, nil)
        this:SetQuestVarByMainId(3, 1)
    end
end

function Quest15008:OnSubFinish1500801(arg1)
    print("OnSubFinish1500801")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1500802, nil)
    end)
end

function Quest15008:OnSubStart1500802(arg1)
    print("OnSubStart1500802")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    actorMgr:CreateActorWithPos("Q1500802Trigger", "Actor/Gadget/Q1500802Trigger", 70900002, 0, points._Q1500802TriggerPoint_.pos, points._Q1500802TriggerPoint_.rot, true, false, 3)
    this:ExitTailMode()
    this:DeployStoryByQuest(121500802)
    actorMgr:CreateActorWithPos("Q1500802outtrigger", "Actor/Gadget/Q1500802outtrigger", 70900002, 0, points._Q1500802outtriggerPoint_.pos, points._Q1500802outtriggerPoint_.rot, true, false, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 15008)
end

function Quest15008:OnSubFinish1500802(arg1)
    print("OnSubFinish1500802")
    this:ActorDestroy("Q1500802outtrigger")
end

function Quest15008:OnSubStart1500803(arg1)
    print("OnSubStart1500803")
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15008):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15008):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:DeployStoryByQuest(121500802)
    this:EnterTailMode(1)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):ForceAvatarWalkByDist(3, 5)
    this:SetQuestVarByMainId(3, 0)
    this:DisableMainPageWithConfigByQuest(true, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, true, 15008)
    this:SetNavigationByMainId(15008, true)
end

function Quest15008:OnSubFinish1500803(arg1)
    print("OnSubFinish1500803")
    this:TransmitPlayerByQuestId(1500803, 1, function(arg1)
        this:SetQuestVarByMainId(3, 1)
    end, nil, nil)

    this:ExitTailMode()
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):ResetForceAvatarWalk()
    this:CancelStoryByQuest(121500802)
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 15008)
end

function Quest15008:OnSubFailed1500803(arg1)
    print("OnSubFailed1500803")
    this:ExitTailMode()
    this:CancelStoryByQuest(121500802)
end

function Quest15008:OnSubStart1500804(arg1)
    print("OnSubStart1500804")
    this:DeployStoryByQuest(121500802)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1500804Trigger", "Actor/Gadget/Q1500804Trigger", 70900002, 0, points._Q1500804TriggerPoint_.pos, points._Q1500804TriggerPoint_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    local questVar = this:GetQuestVar(1500804, 3)
    if questVar == 1 then
        actorMgr:CreateActorWithPos("Q1500804outtrigger", "Actor/Gadget/Q1500804outtrigger", 70900002, 0, points._Q1500804outtriggerPoint_.pos, points._Q1500804outtriggerPoint_.rot, true, false, 3)
    elseif questVar == 0 then
        this:SetQuestVarByMainId(3, 1)
    end
end

function Quest15008:OnSubFinish1500804(arg1)
    print("OnSubFinish1500804")
    this:ActorDestroy("Q1500804outtrigger")
end

function Quest15008:OnSubStart1500805(arg1)
    print("OnSubStart1500805")
    actorMgr:CreateActorWithPos("Q1500805outtrigger", "Actor/Gadget/Q1500805outtrigger", 70900002, 0, points._Q1500805outtriggerPoint_.pos, points._Q1500805outtriggerPoint_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15008):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15008):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:DeployStoryByQuest(121500802)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):SetWalkSpeedRatio(0.6)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1087.alias, 15008)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_1500805, 10, 5, -1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):TurnToAvatar()
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DisableInteeHeadCtrl(false)
        actorMgr:CreateActorWithPos("Q1500805_watchyou", "Actor/Gadget/Q1500805_watchyou", 70900002, 0, points.Q1500805_watchyou.pos, points.Q1500805_watchyou.rot, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DoFreeStyle(1220, true, nil, true, true, false, false)
    end, nil, nil, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):Standby()
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):TurnToAvatar()
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DoFreeStyle(1220, true, nil, false, false, false, false)
    end, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DoFreeStateTrigger()
        this:CallDelayByQuest("1", 2, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):ResumeMove()
        end)
    end, nil, false)
end

function Quest15008:OnSubFinish1500805(arg1)
    print("OnSubFinish1500805")
    this:ActorDestroy("Q1500805outtrigger")
    this:ActorDestroy("Q1500805_watchyou")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):Standby()
end

function Quest15008:OnSubStart1500806(arg1)
    print("OnSubStart1500806")
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15008):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15008):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):DoFreeStateTrigger()
    actorMgr:CreateActorWithPos("Q1500806_talk", "Actor/Gadget/Q1500806_talk", 70900002, 0, points.Point_4.pos, points.Point_4.rot, true, false, 3)
    this:DeployStoryByQuest(121500802)
    this:ExitTailMode()
    actorMgr:CreateActorWithPos("Q1500806outtrigger", "Actor/Gadget/Q1500806outtrigger", 70900002, 0, points._Q1500806outtriggerPoint_.pos, points._Q1500806outtriggerPoint_.rot, true, false, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 15008)
end

function Quest15008:OnSubFinish1500806(arg1)
    print("OnSubFinish1500806")
    this:TransmitPlayerByQuestId(1500806, 1, nil, nil, nil)
    this:CancelStoryByQuest(121500802)
    this:ActorDestroy("Q1500806outtrigger")
end

function Quest15008:OnSubStart1500807(arg1)
    print("OnSubStart1500807")
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15008):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15008):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):ForceAvatarWalkByDist(3, 4)
    this:DeployStoryByQuest(121500807)
    this:SetQuestVarByMainId(4, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, true, 15008)
    this:SetNavigationByMainId(15008, true)
end

function Quest15008:OnSubFinish1500807(arg1)
    print("OnSubFinish1500807")
    this:CancelStoryByQuest(121500807)
    this:ExitTailMode()
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15008):ResetForceAvatarWalk()
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 15008)
end

function Quest15008:OnSubFailed1500807(arg1)
    print("OnSubFailed1500807")
    this:CancelStoryByQuest(121500807)
end

function Quest15008:OnSubStart1500808(arg1)
    print("OnSubStart1500808")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500808, 0, 15, 1, npcs.Npc1087.id)
    this:ExitTailMode()
end

function Quest15008:OnSubFinish1500808(arg1)
    print("OnSubFinish1500808")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    this:CancelStoryByQuest(121500802)
end

function Quest15008:OnSubStart1500809(arg1)
    print("OnSubStart1500809")
end

function Quest15008:OnSubFinish1500809(arg1)
    print("OnSubFinish1500809")
end

function Quest15008:OnSubFailed1500809(arg1)
    print("OnSubFailed1500809")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 150080802, false, true)
end

return Quest15008
