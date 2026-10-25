require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70096 = class("Quest70096", QuestActorProxy)
Quest70096.defaultAlias = "Quest70096"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70096:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70096:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7009601"] = self.OnSubStart7009601,
        ["7009602"] = self.OnSubStart7009602,
        ["7009603"] = self.OnSubStart7009603,
        ["7009609"] = self.OnSubStart7009609,
        ["7009604"] = self.OnSubStart7009604,
        ["7009607"] = self.OnSubStart7009607,
        ["7009608"] = self.OnSubStart7009608,
        ["7009605"] = self.OnSubStart7009605,
        ["7009606"] = self.OnSubStart7009606
    }
end

function Quest70096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7009601"] = self.OnSubFinish7009601,
        ["7009602"] = self.OnSubFinish7009602,
        ["7009603"] = self.OnSubFinish7009603,
        ["7009609"] = self.OnSubFinish7009609,
        ["7009604"] = self.OnSubFinish7009604,
        ["7009607"] = self.OnSubFinish7009607,
        ["7009608"] = self.OnSubFinish7009608,
        ["7009605"] = self.OnSubFinish7009605,
        ["7009606"] = self.OnSubFinish7009606
    }
end

function Quest70096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7009604"] = self.OnSubFailed7009604, ["7009605"] = self.OnSubFailed7009605}
end

function Quest70096:Start()
    print("Start")
end

function Quest70096:OnDestroy()
    print("OnDestroy")
end

function Quest70096:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70096:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70096:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70096:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7009606Trigger", 0)
    this:ActorDestroy("Q7009609Trigger", 70096)
    this:BanCrowdNpc(3009, 4, datas.InstanceIDList_1, false, true)
    this:BanCrowdNpc(3009, 10, datas.InstanceIDList, false, true)
end

function Quest70096:ActorDestroy(arg1, arg2)
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

function Quest70096:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70096:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70096:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70096:OnSubStart7009601(arg1)
    print("OnSubStart7009601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1326.id, 0, 15, 7009601)
    this:CreateQuestNpc(arg1, npcs.Npc7080.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7080.alias, 70096):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7080.alias, 70096):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7605.alias, 70096):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3009, 4, datas.InstanceIDList_1, true, true)
end

function Quest70096:OnSubFinish7009601(arg1)
    print("OnSubFinish7009601")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
end

function Quest70096:OnSubStart7009602(arg1)
    print("OnSubStart7009602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009602, 0, 15, 1, npcs.Npc1326.id)
    this:CreateQuestNpc(arg1, npcs.Npc7080.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7080.alias, 70096):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7080.alias, 70096):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7605.alias, 70096):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 70096):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 70096):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 70096):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 70096):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3009, 10, datas.InstanceIDList, true, true)
    this:BanCrowdNpc(3009, 4, datas.InstanceIDList_1, true, true)
end

function Quest70096:OnSubFinish7009602(arg1)
    print("OnSubFinish7009602")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7080.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7605.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1313.alias)
    this:BanCrowdNpc(3009, 10, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3009, 4, datas.InstanceIDList_1, false, true)
end

function Quest70096:OnSubStart7009603(arg1)
    print("OnSubStart7009603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009603, 0, 10, 1, npcs.Npc1326.id)
end

function Quest70096:OnSubFinish7009603(arg1)
    print("OnSubFinish7009603")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
end

function Quest70096:OnSubStart7009609(arg1)
    print("OnSubStart7009609")
    actorMgr:CreateActorWithPos("Q7009609Trigger", "Actor/Gadget/Q7009609Trigger", 70900002, 0, points._Q7009609TriggerPoint_.pos, points._Q7009609TriggerPoint_.rot, true, false, 3, nil, 0, 70096)
end

function Quest70096:OnSubFinish7009609(arg1)
    print("OnSubFinish7009609")
end

function Quest70096:OnSubStart7009604(arg1)
    print("OnSubStart7009604")
end

function Quest70096:OnSubFinish7009604(arg1)
    print("OnSubFinish7009604")
end

function Quest70096:OnSubFailed7009604(arg1)
    print("OnSubFailed7009604")
    this:RecycleAllRes()
end

function Quest70096:OnSubStart7009607(arg1)
    print("OnSubStart7009607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009607, 0, 30, 1, npcs.Npc1326.id)
end

function Quest70096:OnSubFinish7009607(arg1)
    print("OnSubFinish7009607")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:PlayerEnterDungeonWithData(2112, 1337, 7009607, 1, datas.Dungeon20369, nil, nil)
end

function Quest70096:OnSubStart7009608(arg1)
    print("OnSubStart7009608")
    this:ClearNarratorTask()
end

function Quest70096:OnSubFinish7009608(arg1)
    print("OnSubFinish7009608")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_700960901, nil)
        end)
    end)
end

function Quest70096:OnSubStart7009605(arg1)
    print("OnSubStart7009605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009605, 0, 15, 1, npcs.Npc1326.id)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 70096):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 70096):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(147009601)
end

function Quest70096:OnSubFinish7009605(arg1)
    print("OnSubFinish7009605")
    this:NpcDestroyImmediately(20369, npcs.Npc1326.alias)
    this:NpcDestroyImmediately(20369, npcs.Npc1320.alias)
    this:CancelAllStory()
    this:TransmitPlayerByData(arg1, 1, datas.Q7009605Transmit, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest70096:OnSubFailed7009605(arg1)
    print("OnSubFailed7009605")
    this:RecycleAllRes()
end

function Quest70096:OnSubStart7009606(arg1)
    print("OnSubStart7009606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009606, 0, 10, 1, npcs.Npc1326.id)
end

function Quest70096:OnSubFinish7009606(arg1)
    print("OnSubFinish7009606")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1322.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 70096):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 70096):DoFreeStyle(1396, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000129)
        actorMgr:CreateActorWithPos("Q7009606Trigger", "Actor/Gadget/Q7009606Trigger", 70900002, 0, points._Q7009606TriggerPoint_.pos, points._Q7009606TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    end)
end

return Quest70096
