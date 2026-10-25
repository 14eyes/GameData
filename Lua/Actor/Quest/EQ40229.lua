require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40229 = class("Quest40229", QuestActorProxy)
Quest40229.defaultAlias = "Quest40229"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40229:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40229:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022912"] = self.OnSubStart4022912,
        ["4022901"] = self.OnSubStart4022901,
        ["4022913"] = self.OnSubStart4022913,
        ["4022902"] = self.OnSubStart4022902,
        ["4022903"] = self.OnSubStart4022903,
        ["4022904"] = self.OnSubStart4022904,
        ["4022905"] = self.OnSubStart4022905,
        ["4022906"] = self.OnSubStart4022906,
        ["4022907"] = self.OnSubStart4022907,
        ["4022911"] = self.OnSubStart4022911,
        ["4022914"] = self.OnSubStart4022914,
        ["4022908"] = self.OnSubStart4022908,
        ["4022915"] = self.OnSubStart4022915,
        ["4022909"] = self.OnSubStart4022909,
        ["4022910"] = self.OnSubStart4022910
    }
end

function Quest40229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022912"] = self.OnSubFinish4022912,
        ["4022901"] = self.OnSubFinish4022901,
        ["4022913"] = self.OnSubFinish4022913,
        ["4022902"] = self.OnSubFinish4022902,
        ["4022903"] = self.OnSubFinish4022903,
        ["4022904"] = self.OnSubFinish4022904,
        ["4022905"] = self.OnSubFinish4022905,
        ["4022906"] = self.OnSubFinish4022906,
        ["4022907"] = self.OnSubFinish4022907,
        ["4022911"] = self.OnSubFinish4022911,
        ["4022914"] = self.OnSubFinish4022914,
        ["4022908"] = self.OnSubFinish4022908,
        ["4022915"] = self.OnSubFinish4022915,
        ["4022909"] = self.OnSubFinish4022909,
        ["4022910"] = self.OnSubFinish4022910
    }
end

function Quest40229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4022902"] = self.OnSubFailed4022902,
        ["4022903"] = self.OnSubFailed4022903,
        ["4022904"] = self.OnSubFailed4022904,
        ["4022905"] = self.OnSubFailed4022905,
        ["4022906"] = self.OnSubFailed4022906,
        ["4022907"] = self.OnSubFailed4022907,
        ["4022911"] = self.OnSubFailed4022911,
        ["4022914"] = self.OnSubFailed4022914,
        ["4022908"] = self.OnSubFailed4022908
    }
end

function Quest40229:Start()
    print("Start")
end

function Quest40229:OnDestroy()
    print("OnDestroy")
end

function Quest40229:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40229:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40229:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16145.alias, 20328)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 20328)
    this:SafeDestroyQuestNpc(npcs.Npc1321.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1322.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc30973.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30974.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30977.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1663.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30991.alias, 3)
    this:CancelStoryByQuest(134022901)
    this:DestroyNpcTrigger("Q4022902N16145Trigger")
    this:DestroyNpcTrigger("Q4022907N16145Trigger")
    this:DestroyNpcTrigger("Q4022908N1001Trigger")
    this:DestroyNpcTrigger("Q4022909N1321Trigger")
    this:DestroyNpcTrigger("Q4022910N1006Trigger")
    this:ActorDestroy("Q4022909Trigger", 0)
    this:CancelStoryByQuest(134022902)
    this:CancelStoryByQuest(134022903)
    this:CancelStoryByQuest(134022900)
    this:RecycleAllRes()
end

function Quest40229:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4022909Trigger", 0)
end

function Quest40229:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 1 then
        local avatarPos = actorUtils.GetAvatarPos()
        self:PlayFreeCutscene({
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/CameraAni/Quest/Ca_Quest_MQ361_DragonFlyT_Test",
            startPosType = CutsceneInitPosType.FREE,
            startOffset = {x = avatarPos.x, y = avatarPos.y + 15, z = avatarPos.z + 10},
            useTargetPos = true,
            targetPos = {x = 2450, y = 200, z = -1174},
            syncLoad = false
        }, self, nil, nil)
    else
        if arg1.valueInt == 2 then
            self.uActor:AvatarPaimonAppear()
        else
            if arg1.valueInt == 3 then
                self.uActor:AvatarPaimonDisappear(nil, false)
            end
        end
    end
end

function Quest40229:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40229:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40229:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40229:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest40229:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40229:OnSubStart4022912(arg1)
    print("OnSubStart4022912")
    actorUtils.FinishQuestID(false, 4022912)
end

function Quest40229:OnSubFinish4022912(arg1)
    print("OnSubFinish4022912")
end

function Quest40229:OnSubStart4022901(arg1)
    print("OnSubStart4022901")
    if this:GetQuestVar(4022901, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_4022901, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest40229:OnSubFinish4022901(arg1)
    print("OnSubFinish4022901")
end

function Quest40229:OnSubStart4022913(arg1)
    print("OnSubStart4022913")
    if this:GetQuestVar(4022913, 1) == 0 then
        actorMgr:CreateActorWithPos("Q4022913Trigger", "Actor/Gadget/Q4022913Trigger", 70900002, 0, points._Q4022913TriggerPoint_.pos, points._Q4022913TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    end
end

function Quest40229:OnSubFinish4022913(arg1)
    print("OnSubFinish4022913")
    this:ActorDestroy("Q4022913Trigger", 0)
end

function Quest40229:OnSubStart4022902(arg1)
    print("OnSubStart4022902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022902, 0, 10, 1, npcs.Npc16145.id)
end

function Quest40229:OnSubFinish4022902(arg1)
    print("OnSubFinish4022902")
    this:NpcDestroyImmediately(20328, npcs.Npc16145.alias)
    this:QuestNarratorTask(datas.NarratorWithId_4022902, nil)
end

function Quest40229:OnSubFailed4022902(arg1)
    print("OnSubFailed4022902")
    this:RecycleAllRes()
end

function Quest40229:OnSubStart4022903(arg1)
    print("OnSubStart4022903")
    this:DeployStoryByQuest(134022900)
end

function Quest40229:OnSubFinish4022903(arg1)
    print("OnSubFinish4022903")
    this:CancelStoryByQuest(134022900)
end

function Quest40229:OnSubFailed4022903(arg1)
    print("OnSubFailed4022903")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022900)
end

function Quest40229:OnSubStart4022904(arg1)
    print("OnSubStart4022904")
    this:NpcCreateWithNoBlack(npcs.Npc16145.id, 0, 25, 4022904, true, 4022904)
end

function Quest40229:OnSubFinish4022904(arg1)
    print("OnSubFinish4022904")
    this:NpcDestroyImmediately(20328, npcs.Npc16145.alias)
end

function Quest40229:OnSubFailed4022904(arg1)
    print("OnSubFailed4022904")
    this:RecycleAllRes()
end

function Quest40229:OnSubStart4022905(arg1)
    print("OnSubStart4022905")
end

function Quest40229:OnSubFinish4022905(arg1)
    print("OnSubFinish4022905")
    this:QuestNarratorTask(datas.NarratorWithId_4022903, nil)
end

function Quest40229:OnSubFailed4022905(arg1)
    print("OnSubFailed4022905")
    this:RecycleAllRes()
end

function Quest40229:OnSubStart4022906(arg1)
    print("OnSubStart4022906")
    this:DeployStoryByQuest(134022901)
end

function Quest40229:OnSubFinish4022906(arg1)
    print("OnSubFinish4022906")
    this:CancelStoryByQuest(134022901)
end

function Quest40229:OnSubFailed4022906(arg1)
    print("OnSubFailed4022906")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022901)
end

function Quest40229:OnSubStart4022907(arg1)
    print("OnSubStart4022907")
    this:NpcCreateWithNpcTrigger(npcs.Npc16145.id, 0, 4, 4022907)
    this:DeployStoryByQuest(134022902)
end

function Quest40229:OnSubFinish4022907(arg1)
    print("OnSubFinish4022907")
    this:CancelStoryByQuest(134022902)
end

function Quest40229:OnSubFailed4022907(arg1)
    print("OnSubFailed4022907")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022902)
end

function Quest40229:OnSubStart4022911(arg1)
    print("OnSubStart4022911")
    this:CreateQuestNpc(arg1, npcs.Npc16145.id, 0, false, 0)
    this:DeployStoryByQuest(134022903)
end

function Quest40229:OnSubFinish4022911(arg1)
    print("OnSubFinish4022911")
end

function Quest40229:OnSubFailed4022911(arg1)
    print("OnSubFailed4022911")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022903)
end

function Quest40229:OnSubStart4022914(arg1)
    print("OnSubStart4022914")
    this:DeployStoryByQuest(134022903)
end

function Quest40229:OnSubFinish4022914(arg1)
    print("OnSubFinish4022914")
end

function Quest40229:OnSubFailed4022914(arg1)
    print("OnSubFailed4022914")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022903)
end

function Quest40229:OnSubStart4022908(arg1)
    print("OnSubStart4022908")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022908, 0, 50, 1, npcs.Wendy.id)
    this:DeployStoryByQuest(134022903)
    self.uActor:AvatarPaimonAppear()
end

function Quest40229:OnSubFinish4022908(arg1)
    print("OnSubFinish4022908")
    this:NpcDestroyImmediately(20328, npcs.Wendy.alias)
    this:NpcDestroyImmediately(20328, npcs.Npc16145.alias)
    this:CancelStoryByQuest(134022903)
    self.uActor:AvatarPaimonDisappear(nil, false)
end

function Quest40229:OnSubFailed4022908(arg1)
    print("OnSubFailed4022908")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022903)
    self.uActor:AvatarPaimonDisappear(nil, false)
end

function Quest40229:OnSubStart4022915(arg1)
    print("OnSubStart4022915")
    actorMgr:CreateActorWithPos("Q4022909Trigger", "Actor/Gadget/Q4022909Trigger", 70900002, 0, points._Q4022909TriggerPoint_.pos, points._Q4022909TriggerPoint_.rot, true, false, 20328, nil, 0, 0)
end

function Quest40229:OnSubFinish4022915(arg1)
    print("OnSubFinish4022915")
    this:ActorDestroy("Q4022909Trigger", 0)
end

function Quest40229:OnSubStart4022909(arg1)
    print("OnSubStart4022909")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022909, 0, 10, 1, npcs.Npc1321.id)
end

function Quest40229:OnSubFinish4022909(arg1)
    print("OnSubFinish4022909")
end

function Quest40229:OnSubStart4022910(arg1)
    print("OnSubStart4022910")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 5, 4022910)
    this:CreateQuestNpc(arg1, npcs.Npc1322.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1321.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30973.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30973.alias, 40229):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30974.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30974.alias, 40229):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30977.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30977.alias, 40229):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1663.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30991.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 40229):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 40229):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1321.alias, 40229):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1321.alias, 40229):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Wendy.alias, 40229):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Wendy.alias, 40229):DisableInteeHeadCtrl(true)
end

function Quest40229:OnSubFinish4022910(arg1)
    print("OnSubFinish4022910")
    this:NpcDestroyImmediately(3, npcs.Qin.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1322.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1321.alias)
    this:NpcDestroyImmediately(1004, npcs.Wendy.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30973.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30974.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30977.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1663.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30991.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("BubbleDramaMainPage", 0)
    end)
end

return Quest40229
