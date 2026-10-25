require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40168 = class("Quest40168", QuestActorProxy)
Quest40168.defaultAlias = "Quest40168"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40168:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40168:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016801"] = self.OnSubStart4016801,
        ["4016802"] = self.OnSubStart4016802,
        ["4016803"] = self.OnSubStart4016803,
        ["4016804"] = self.OnSubStart4016804,
        ["4016805"] = self.OnSubStart4016805,
        ["4016806"] = self.OnSubStart4016806,
        ["4016807"] = self.OnSubStart4016807,
        ["4016808"] = self.OnSubStart4016808,
        ["4016809"] = self.OnSubStart4016809,
        ["4016810"] = self.OnSubStart4016810,
        ["4016811"] = self.OnSubStart4016811,
        ["4016819"] = self.OnSubStart4016819,
        ["4016812"] = self.OnSubStart4016812,
        ["4016813"] = self.OnSubStart4016813,
        ["4016814"] = self.OnSubStart4016814,
        ["4016815"] = self.OnSubStart4016815,
        ["4016816"] = self.OnSubStart4016816,
        ["4016817"] = self.OnSubStart4016817,
        ["4016818"] = self.OnSubStart4016818,
        ["4016820"] = self.OnSubStart4016820
    }
end

function Quest40168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016801"] = self.OnSubFinish4016801,
        ["4016802"] = self.OnSubFinish4016802,
        ["4016803"] = self.OnSubFinish4016803,
        ["4016804"] = self.OnSubFinish4016804,
        ["4016805"] = self.OnSubFinish4016805,
        ["4016806"] = self.OnSubFinish4016806,
        ["4016807"] = self.OnSubFinish4016807,
        ["4016808"] = self.OnSubFinish4016808,
        ["4016809"] = self.OnSubFinish4016809,
        ["4016810"] = self.OnSubFinish4016810,
        ["4016811"] = self.OnSubFinish4016811,
        ["4016819"] = self.OnSubFinish4016819,
        ["4016812"] = self.OnSubFinish4016812,
        ["4016813"] = self.OnSubFinish4016813,
        ["4016814"] = self.OnSubFinish4016814,
        ["4016815"] = self.OnSubFinish4016815,
        ["4016816"] = self.OnSubFinish4016816,
        ["4016817"] = self.OnSubFinish4016817,
        ["4016818"] = self.OnSubFinish4016818,
        ["4016820"] = self.OnSubFinish4016820
    }
end

function Quest40168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4016813"] = self.OnSubFailed4016813}
end

function Quest40168:Start()
    print("Start")
end

function Quest40168:OnDestroy()
    print("OnDestroy")
end

function Quest40168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40168:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4077.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14464.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14622.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20883.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4193.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4442.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14685.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14704.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:LightNotifyTo(npcs.Npc4346.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4338.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4341.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342.alias, 0, true)
    this:ActorDestroy("Q40168Tigger1")
    this:ActorDestroy("Q40168Tigger2")
    this:ActorDestroy("Q40168Tigger3")
    this:ActorDestroy("Q40168Tigger4")
    this:ActorDestroy("Q40168Tigger5")
    this:ActorDestroy("Q40168Tigger6")
    this:ActorDestroy("Q40168Tigger7")
    this:DestroyNpcTrigger("Q4016802N1058Trigger")
    this:DestroyNpcTrigger("Q4016803N4060Trigger")
    this:DestroyNpcTrigger("Q4016804N4077Trigger")
    this:DestroyNpcTrigger("Q4016805N14464Trigger")
    this:DestroyNpcTrigger("Q4016806N1059Trigger")
    this:DestroyNpcTrigger("Q4016807N4193Trigger")
    this:DestroyNpcTrigger("Q4016808N1058Trigger")
    this:DestroyNpcTrigger("Q4016809N1058Trigger")
    this:DestroyNpcTrigger("Q4016810N2670Trigger")
    this:DestroyNpcTrigger("Q4016811N20883Trigger")
    this:DestroyNpcTrigger("Q4016814N20883Trigger")
    this:DestroyNpcTrigger("Q4016815N1085Trigger")
    this:DestroyNpcTrigger("Q4016816N1052Trigger")
    this:DestroyNpcTrigger("Q4016820N1064Trigger")
    this:BanCrowdNpc(3302, 8, datas.CrowdId1, false)
    this:CancelStoryByQuest(134016801)
    this:BanCrowdNpc(3302, 26, datas.CrowdId2, false)
    this:RemoveLocalGadget(73013012, "1")
    actorUtils.BanUIByQuest(2, false, 40168)
    actorUtils.BanUIByQuest(24, false, 40168)
end

function Quest40168:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40168:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40168:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40168:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40168:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40168:OnSubStart4016801(arg1)
    print("OnSubStart4016801")
end

function Quest40168:OnSubFinish4016801(arg1)
    print("OnSubFinish4016801")
end

function Quest40168:OnSubStart4016802(arg1)
    print("OnSubStart4016802")
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1058.id, 0, 10, 4016802)
    if sceneData.currSceneID ~= 20238 then
        if this:GetQuestVar(4016802, 4) == 0 then
            this:ActionSafeCall(function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId5, nil)
                this:SetQuestVarByMainId(4, 1)
            end)
        end
    end
end

function Quest40168:OnSubFinish4016802(arg1)
    print("OnSubFinish4016802")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId6, nil)
        actorUtils.ShowContext("ChapterBeginDialog", 10209)
    end)
end

function Quest40168:OnSubStart4016803(arg1)
    print("OnSubStart4016803")
    this:NpcCreateWithNpcTrigger(npcs.Npc4060.id, 0, 10, 4016803)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc4442.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
end

function Quest40168:OnSubFinish4016803(arg1)
    print("OnSubFinish4016803")
    this:ClearNarratorTask()
end

function Quest40168:OnSubStart4016804(arg1)
    print("OnSubStart4016804")
    this:CreateQuestNpc(arg1, npcs.Npc4060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc4077.id, 0, 10, 4016804)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016804(arg1)
    print("OnSubFinish4016804")
    this:SafeDestroyQuestNpc(npcs.Npc4077.alias, 3)
end

function Quest40168:OnSubStart4016805(arg1)
    print("OnSubStart4016805")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3302, 8, datas.CrowdId1, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc14464.id, 0, 11, 4016805)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc14622.id, 0, false, 0)
end

function Quest40168:OnSubFinish4016805(arg1)
    print("OnSubFinish4016805")
    this:SafeDestroyQuestNpc(npcs.Npc14464.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14622.alias, 3)
    this:BanCrowdNpc(3302, 8, datas.CrowdId1, false)
end

function Quest40168:OnSubStart4016806(arg1)
    print("OnSubStart4016806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016806, 0, 20, 1, npcs.Npc1059.id)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016806(arg1)
    print("OnSubFinish4016806")
end

function Quest40168:OnSubStart4016807(arg1)
    print("OnSubStart4016807")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1059.id, arg1)
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc1059.alias, 40168):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1059.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1058.alias, 40168):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1058.alias, 40168):DoFreeStyle(1280, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTrigger(npcs.Npc4193.id, 0, 10, 4016807)
        this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    end)
end

function Quest40168:OnSubFinish4016807(arg1)
    print("OnSubFinish4016807")
    this:SafeDestroyQuestNpc(npcs.Npc4193.alias, 3)
end

function Quest40168:OnSubStart4016808(arg1)
    print("OnSubStart4016808")
    this:GetQuestNpcActor(npcs.Npc1059.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1058.id, 0, 8, 4016808)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40168):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016808(arg1)
    print("OnSubFinish4016808")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
end

function Quest40168:OnSubStart4016809(arg1)
    print("OnSubStart4016809")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016809, 0, 20, 1, npcs.Npc1058.id)
end

function Quest40168:OnSubFinish4016809(arg1)
    print("OnSubFinish4016809")
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 3)
end

function Quest40168:OnSubStart4016810(arg1)
    print("OnSubStart4016810")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016810, 0, 30, 1, npcs.Npc2670.id)
end

function Quest40168:OnSubFinish4016810(arg1)
    print("OnSubFinish4016810")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest40168:OnSubStart4016811(arg1)
    print("OnSubStart4016811")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016811, 0, 15, 1, npcs.Npc20883.id)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016811(arg1)
    print("OnSubFinish4016811")
    this:SafeDestroyQuestNpc(npcs.Npc20883.alias, 3)
end

function Quest40168:OnSubStart4016819(arg1)
    print("OnSubStart4016819")
    actorUtils.BanUIByQuest(2, false, 40168)
    actorUtils.BanUIByQuest(24, false, 40168)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:ActorDestroy("Q40168Tigger3")
    this:ActorDestroy("Q40168Tigger4")
    this:ActorDestroy("Q40168Tigger7")
    this:CancelStoryByQuest(134016801)
    this:ClearNarratorTask()
    actorMgr:CreateActorWithPos("Q40168Tigger5", "Actor/Gadget/Q40168Tigger5", 70900002, 0, points._Q40168Tigger5Point_.pos, points._Q40168Tigger5Point_.rot, true, false, 3)
end

function Quest40168:OnSubFinish4016819(arg1)
    print("OnSubFinish4016819")
    this:ShowBlackScreenWithDialogText(0, 1, 0, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData4, nil, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest40168:OnSubStart4016812(arg1)
    print("OnSubStart4016812")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40168Tigger6", "Actor/Gadget/Q40168Tigger6", 70900002, 0, points._Q40168Tigger6Point_.pos, points._Q40168Tigger6Point_.rot, true, false, 3)
end

function Quest40168:OnSubFinish4016812(arg1)
    print("OnSubFinish4016812")
end

function Quest40168:OnSubStart4016813(arg1)
    print("OnSubStart4016813")
    actorUtils.BanUIByQuest(2, true, 40168)
    actorUtils.BanUIByQuest(24, true, 40168)
    this:CreateLocalGadget(73013012, "1", {x = -1593.594, y = 276.462, z = 4035.856}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134016801)
    actorMgr:CreateActorWithPos("Q40168Tigger3", "Actor/Gadget/Q40168Tigger3", 70900002, 0, points._Q40168Tigger3Point_.pos, points._Q40168Tigger3Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q40168Tigger4", "Actor/Gadget/Q40168Tigger4", 70900002, 0, points._Q40168Tigger4Point_.pos, points._Q40168Tigger4Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q40168Tigger7", "Actor/Gadget/Q40168Tigger7", 70900002, 0, points._Q40168Tigger7Point_.pos, points._Q40168Tigger7Point_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(4016813, 2) == 0 then
            this:ShowTutorialDialog(1953, function(arg1)
                this:ActionSafeCall(function(arg1)
                    if this:GetQuestVar(4016813, 1) == 0 then
                        this:QuestNarratorTask(datas.NarratorWithId2, function(arg1)
                            this:SetQuestVarByMainId(1, 1)
                        end)
                    end
                end)
            end)

            this:SetQuestVarByMainId(2, 1)
        end
    end)
end

function Quest40168:OnSubFinish4016813(arg1)
    print("OnSubFinish4016813")
    actorUtils.BanUIByQuest(2, false, 40168)
    actorUtils.BanUIByQuest(24, false, 40168)
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
    this:ActorDestroy("Q40168Tigger3")
    this:ActorDestroy("Q40168Tigger4")
    this:ActorDestroy("Q40168Tigger7")
    this:CancelStoryByQuest(134016801)
    this:RemoveLocalGadget(73013012, "1")
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData5, nil, nil, nil)
end

function Quest40168:OnSubFailed4016813(arg1)
    print("OnSubFailed4016813")
    actorUtils.BanUIByQuest(2, false, 40168)
    actorUtils.BanUIByQuest(24, false, 40168)
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        this:ActorDestroy("Q40168Tigger3")
        this:ActorDestroy("Q40168Tigger4")
        this:ActorDestroy("Q40168Tigger7")
        this:CancelStoryByQuest(134016801)
        this:ClearNarratorTask()
    end, nil, nil, 0, false, true)
end

function Quest40168:OnSubStart4016814(arg1)
    print("OnSubStart4016814")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016814, 0, 15, 1, npcs.Npc20883.id)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016814(arg1)
    print("OnSubFinish4016814")
    this:SafeDestroyQuestNpc(npcs.Npc20883.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData2, nil, nil, nil)
end

function Quest40168:OnSubStart4016815(arg1)
    print("OnSubStart4016815")
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40168):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016815, 0, 10, 1, npcs.Npc1085.id)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DoFreeStyle(6050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4442.alias, 40168):DisableInteeHeadCtrl(true)
end

function Quest40168:OnSubFinish4016815(arg1)
    print("OnSubFinish4016815")
    this:SafeDestroyQuestNpc(npcs.Npc4442.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4060.alias, 3)
end

function Quest40168:OnSubStart4016816(arg1)
    print("OnSubStart4016816")
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1085.alias, 40168):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1052.id, 0, 35, 4016816)
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2670.id, arg1)
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40168):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40168):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:DailyNpcSafeHideSelf(npcs.Npc4346.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc4338.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc4341.alias, true, 1)
        this:CreateQuestNpc(arg1, npcs.Npc13013.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc13013.alias, 40168):DoFreeStyle(1060, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc20883.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc20883.alias, 40168):DisableInteeHeadCtrl(true)
    end)
end

function Quest40168:OnSubFinish4016816(arg1)
    print("OnSubFinish4016816")
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20883.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 3)
    this:LightNotifyTo(npcs.Npc4346.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4338.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4341.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId9, nil)
    end)
end

function Quest40168:OnSubStart4016817(arg1)
    print("OnSubStart4016817")
    this:CreateQuestNpc(arg1, npcs.Npc14685.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4097.alias, true, 1)
    this:BanCrowdNpc(3302, 26, datas.CrowdId2, true)
end

function Quest40168:OnSubFinish4016817(arg1)
    print("OnSubFinish4016817")
    this:SafeDestroyQuestNpc(npcs.Npc14685.alias, 3)
    this:ClearNarratorTask()
end

function Quest40168:OnSubStart4016818(arg1)
    print("OnSubStart4016818")
    this:DailyNpcSafeHideSelf(npcs.Npc4097.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc14704.id, 0, false, 0)
    this:BanCrowdNpc(3302, 26, datas.CrowdId2, true)
end

function Quest40168:OnSubFinish4016818(arg1)
    print("OnSubFinish4016818")
    this:SafeDestroyQuestNpc(npcs.Npc14704.alias, 3)
    this:LightNotifyTo(npcs.Npc4097.alias, 0, true)
    this:BanCrowdNpc(3302, 26, datas.CrowdId2, false)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData3, nil, nil, nil)
end

function Quest40168:OnSubStart4016820(arg1)
    print("OnSubStart4016820")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016820, 0, 10, 1, npcs.Npc1064.id)
    this:DailyNpcSafeHideSelf(npcs.Npc4342.alias, true, 1)
end

function Quest40168:OnSubFinish4016820(arg1)
    print("OnSubFinish4016820")
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 3)
    this:LightNotifyTo(npcs.Npc4342.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 10209)
    end)
end

return Quest40168
