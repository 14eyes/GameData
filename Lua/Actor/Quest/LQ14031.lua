require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14031 = class("Quest14031", QuestActorProxy)
Quest14031.defaultAlias = "Quest14031"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14031:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403101"] = self.OnSubStart1403101,
        ["1403104"] = self.OnSubStart1403104,
        ["1403102"] = self.OnSubStart1403102
    }
end

function Quest14031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403101"] = self.OnSubFinish1403101,
        ["1403104"] = self.OnSubFinish1403104,
        ["1403102"] = self.OnSubFinish1403102
    }
end

function Quest14031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403101"] = self.OnSubFailed1403101,
        ["1403104"] = self.OnSubFailed1403104,
        ["1403102"] = self.OnSubFailed1403102
    }
end

function Quest14031:Start()
    print("Start")
end

function Quest14031:OnDestroy()
    print("OnDestroy")
end

function Quest14031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14031:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14031:OnSubStart1403101(arg1)
    print("OnSubStart1403101")
    this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1077.alias, 14031):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14031):DoFreeStyle(1170, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1403101NarratorTrigger", "Actor/Gadget/Q1403101NarratorTrigger", 70900002, 0, points.Q1403101Trigger.pos, points.Q1403101Trigger.rot, true, false, 3)
end

function Quest14031:OnSubFinish1403101(arg1)
    print("OnSubFinish1403101")
    this:ExitSceneLookCamera()
end

function Quest14031:OnSubFailed1403101(arg1)
    print("OnSubFailed1403101")
end

function Quest14031:OnSubStart1403104(arg1)
    print("OnSubStart1403104")
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14031):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1077.id, 1403104, 0, 15)
    this:GetQuestNpcActor(npcs.Npc1077.alias, 14031):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14031:OnSubFinish1403104(arg1)
    print("OnSubFinish1403104")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest14031:OnSubFailed1403104(arg1)
    print("OnSubFailed1403104")
end

function Quest14031:OnSubStart1403102(arg1)
    print("OnSubStart1403102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1071.id, 1403102, 0, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1071.alias, 14031):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1073.alias, 14031):SitOnChair(0, false)
end

function Quest14031:OnSubFinish1403102(arg1)
    print("OnSubFinish1403102")
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
end

function Quest14031:OnSubFailed1403102(arg1)
    print("OnSubFailed1403102")
end

return Quest14031
