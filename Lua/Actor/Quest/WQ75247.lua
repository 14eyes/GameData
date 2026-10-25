require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75247 = class("Quest75247", QuestActorProxy)
Quest75247.defaultAlias = "Quest75247"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75247:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75247:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524705"] = self.OnSubStart7524705,
        ["7524701"] = self.OnSubStart7524701,
        ["7524702"] = self.OnSubStart7524702,
        ["7524706"] = self.OnSubStart7524706,
        ["7524707"] = self.OnSubStart7524707,
        ["7524708"] = self.OnSubStart7524708,
        ["7524709"] = self.OnSubStart7524709,
        ["7524703"] = self.OnSubStart7524703,
        ["7524704"] = self.OnSubStart7524704
    }
end

function Quest75247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524705"] = self.OnSubFinish7524705,
        ["7524701"] = self.OnSubFinish7524701,
        ["7524702"] = self.OnSubFinish7524702,
        ["7524706"] = self.OnSubFinish7524706,
        ["7524707"] = self.OnSubFinish7524707,
        ["7524708"] = self.OnSubFinish7524708,
        ["7524709"] = self.OnSubFinish7524709,
        ["7524703"] = self.OnSubFinish7524703,
        ["7524704"] = self.OnSubFinish7524704
    }
end

function Quest75247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75247:Start()
    print("Start")
end

function Quest75247:OnDestroy()
    print("OnDestroy")
end

function Quest75247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75247:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75247:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7524704Trigger")
    this:BanCrowdNpc(3520, 82, datas.Growd3520_82, false, true)
end

function Quest75247:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75247:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75247:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest75247:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75247:OnSubStart7524705(arg1)
    print("OnSubStart7524705")
end

function Quest75247:OnSubFinish7524705(arg1)
    print("OnSubFinish7524705")
end

function Quest75247:OnSubStart7524701(arg1)
    print("OnSubStart7524701")
    this:NpcCreateWithNpcTrigger(npcs.Npc21849.id, 0, 10, 7524701)
    this:GetQuestNpcActor(npcs.Npc21849.alias, 75247):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21850.id, 0, false, 0)
    this:BanCrowdNpc(3520, 82, datas.Growd3520_82, true, true)
end

function Quest75247:OnSubFinish7524701(arg1)
    print("OnSubFinish7524701")
    this:SafeDestroyQuestNpc(npcs.Npc21849.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21850.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7524701, nil)
        this:SetNavigationByMainId(75247, true)
    end)
end

function Quest75247:OnSubStart7524702(arg1)
    print("OnSubStart7524702")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(147524701)
        this:BanCrowdNpc(3520, 82, datas.Growd3520_82, true, true)
    end)
end

function Quest75247:OnSubFinish7524702(arg1)
    print("OnSubFinish7524702")
end

function Quest75247:OnSubStart7524706(arg1)
    print("OnSubStart7524706")
end

function Quest75247:OnSubFinish7524706(arg1)
    print("OnSubFinish7524706")
end

function Quest75247:OnSubStart7524707(arg1)
    print("OnSubStart7524707")
end

function Quest75247:OnSubFinish7524707(arg1)
    print("OnSubFinish7524707")
end

function Quest75247:OnSubStart7524708(arg1)
    print("OnSubStart7524708")
end

function Quest75247:OnSubFinish7524708(arg1)
    print("OnSubFinish7524708")
end

function Quest75247:OnSubStart7524709(arg1)
    print("OnSubStart7524709")
end

function Quest75247:OnSubFinish7524709(arg1)
    print("OnSubFinish7524709")
end

function Quest75247:OnSubStart7524703(arg1)
    print("OnSubStart7524703")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7524703, 0, 30, 1, npcs.Npc21849.id)
    this:BanCrowdNpc(3520, 82, datas.Growd3520_82, true, true)
end

function Quest75247:OnSubFinish7524703(arg1)
    print("OnSubFinish7524703")
    this:SafeDestroyQuestNpc(npcs.Npc21849.alias, 3)
    this:CancelStoryByQuest(147524701)
    this:BanCrowdNpc(3520, 82, datas.Growd3520_82, false, true)
end

function Quest75247:OnSubStart7524704(arg1)
    print("OnSubStart7524704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7524704, 0, 25, 1, npcs.Npc21849.id)
    this:CreateQuestNpc(arg1, npcs.Npc6536.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6536.alias, 75247):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateLocalGadget(74019011, "1", points.Q7524704_Gadget74019011_1_Point.pos, points.Q7524704_Gadget74019011_1_Point.rot, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74019011, "2", points.Q7524704_Gadget74019011_2_Point.pos, points.Q7524704_Gadget74019011_2_Point.rot, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74019014, "1", points.Q7524704_Gadget74019014_1_Point.pos, points.Q7524704_Gadget74019014_1_Point.rot, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74019015, "1", points.Q7524704_Gadget74019015_1_Point.pos, points.Q7524704_Gadget74019015_1_Point.rot, 3, nil, nil, true, 0, true)
end

function Quest75247:OnSubFinish7524704(arg1)
    print("OnSubFinish7524704")
    this:SafeDestroyQuestNpc(npcs.Npc6536.alias, 3)
    this:CreateLocalGadget(74019009, "1", points.Q7524704_Gadget70291252_1_Point.pos, points.Q7524704_Gadget70291252_1_Point.rot, 3, nil, nil, false, 0, true)
    this:RemoveLocalGadget(74019011, "1")
    this:RemoveLocalGadget(74019011, "2")
    this:RemoveLocalGadget(74019014, "1")
    this:RemoveLocalGadget(74019015, "1")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q7524704Trigger", "Actor/Gadget/Q7524704Trigger", 70900002, 0, points._Q7524704TriggerPoint_.pos, points._Q7524704TriggerPoint_.rot, true, false, 3)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc21849.id, 0, false, 0, nil)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc21850.id, 0, false, 0, nil)
        this:CreateQuestOrphanNpc(arg1, 21971, 0, false, 0.5, nil)
        this:GetQuestNpcActor(npcs.Npc21850.alias, 75247):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc21849.alias, 75247):SitOnChair(0, true)
    end)
end

return Quest75247
