require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40228 = class("Quest40228", QuestActorProxy)
Quest40228.defaultAlias = "Quest40228"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40228:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40228:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022801"] = self.OnSubStart4022801,
        ["4022802"] = self.OnSubStart4022802,
        ["4022803"] = self.OnSubStart4022803,
        ["4022804"] = self.OnSubStart4022804,
        ["4022805"] = self.OnSubStart4022805,
        ["4022806"] = self.OnSubStart4022806,
        ["4022808"] = self.OnSubStart4022808,
        ["4022809"] = self.OnSubStart4022809,
        ["4022807"] = self.OnSubStart4022807
    }
end

function Quest40228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022801"] = self.OnSubFinish4022801,
        ["4022802"] = self.OnSubFinish4022802,
        ["4022803"] = self.OnSubFinish4022803,
        ["4022804"] = self.OnSubFinish4022804,
        ["4022805"] = self.OnSubFinish4022805,
        ["4022806"] = self.OnSubFinish4022806,
        ["4022808"] = self.OnSubFinish4022808,
        ["4022809"] = self.OnSubFinish4022809,
        ["4022807"] = self.OnSubFinish4022807
    }
end

function Quest40228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4022804"] = self.OnSubFailed4022804}
end

function Quest40228:Start()
    print("Start")
end

function Quest40228:OnDestroy()
    print("OnDestroy")
end

function Quest40228:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40228:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40228:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("4022806")
    this:DestroyNpcTrigger("Q4022801N16604Trigger")
    this:DestroyNpcTrigger("Q4022802N1329Trigger")
    this:DestroyNpcTrigger("Q4022805N1329Trigger")
    this:DestroyNpcTrigger("Q4022806N2605Trigger")
    this:DestroyNpcTrigger("Q4022807N2605Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16604.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16605.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1329.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2605.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16607.alias, 3)
    this:CancelStoryByQuest(134022801)
    this:RecycleAllRes()
end

function Quest40228:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40228:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40228:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40228:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40228:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40228:OnSubStart4022801(arg1)
    print("OnSubStart4022801")
    this:NpcCreateWithNpcTrigger(npcs.Npc16604.id, 0, 20, 4022801)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40228):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16605.alias, 40228):DoFreeStyle(1230, true, nil, true, true, false, false)
    if this:GetQuestVar(4022801, 0) == 0 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4022801, nil)
            this:SetQuestVarByMainId(0, 1)
        end)
    end
end

function Quest40228:OnSubFinish4022801(arg1)
    print("OnSubFinish4022801")
    this:NpcDestroyImmediately(3, npcs.Npc16604.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16605.alias)
    this:ClearNarratorTask()
end

function Quest40228:OnSubStart4022802(arg1)
    print("OnSubStart4022802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022802, 0, 10, 1, npcs.Npc1329.id)
end

function Quest40228:OnSubFinish4022802(arg1)
    print("OnSubFinish4022802")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
end

function Quest40228:OnSubStart4022803(arg1)
    print("OnSubStart4022803")
end

function Quest40228:OnSubFinish4022803(arg1)
    print("OnSubFinish4022803")
end

function Quest40228:OnSubStart4022804(arg1)
    print("OnSubStart4022804")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4022802, nil)
    end)
end

function Quest40228:OnSubFinish4022804(arg1)
    print("OnSubFinish4022804")
    this:ClearNarratorTask()
end

function Quest40228:OnSubFailed4022804(arg1)
    print("OnSubFailed4022804")
    this:RecycleAllRes()
end

function Quest40228:OnSubStart4022805(arg1)
    print("OnSubStart4022805")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022805, 0, 30, 1, npcs.Npc1329.id)
end

function Quest40228:OnSubFinish4022805(arg1)
    print("OnSubFinish4022805")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
end

function Quest40228:OnSubStart4022806(arg1)
    print("OnSubStart4022806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022806, 0, 30, 1, npcs.Npc2605.id)
end

function Quest40228:OnSubFinish4022806(arg1)
    print("OnSubFinish4022806")
    this:NpcDestroyImmediately(3, npcs.Npc2605.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelayByQuest("4022806", 0.1, function(arg1)
            this:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("LoliFriendMainPage", 0)
            end)
        end)
    end)
end

function Quest40228:OnSubStart4022808(arg1)
    print("OnSubStart4022808")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1040.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1329.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2605.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2623.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10233.id, arg1)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc16607.id, arg1)
end

function Quest40228:OnSubFinish4022808(arg1)
    print("OnSubFinish4022808")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4022803, nil)
    end)
end

function Quest40228:OnSubStart4022809(arg1)
    print("OnSubStart4022809")
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DisableInteeHeadCtrl(true)
end

function Quest40228:OnSubFinish4022809(arg1)
    print("OnSubFinish4022809")
end

function Quest40228:OnSubStart4022807(arg1)
    print("OnSubStart4022807")
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40228):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022807, 0, 30, 1, npcs.Npc2605.id)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40228):DisableInteeHeadCtrl(true)
end

function Quest40228:OnSubFinish4022807(arg1)
    print("OnSubFinish4022807")
    this:NpcDestroyImmediately(3, npcs.Npc1040.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2605.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16607.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2623.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10233.alias)
    this:DeployStoryByQuest(134022801)
end

return Quest40228
