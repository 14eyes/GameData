require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10005 = class("Quest10005", QuestActorProxy)
Quest10005.defaultAlias = "Quest10005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10005:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1000501"] = self.OnSubStart1000501, ["1000502"] = self.OnSubStart1000502}
end

function Quest10005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1000501"] = self.OnSubFinish1000501, ["1000502"] = self.OnSubFinish1000502}
end

function Quest10005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10005:Start()
    print("Start")
end

function Quest10005:OnDestroy()
    print("OnDestroy")
end

function Quest10005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10005:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000501Trigger")
    this:ActorDestroy("Q1000502Trigger")
end

function Quest10005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10005:OnSubStart1000501(arg1)
    print("OnSubStart1000501")
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 10005):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 10005):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1000501Trigger", "Actor/Gadget/Q1000501Trigger", 70900002, 0, points._Q1000501TriggerPoint_.pos, points._Q1000501TriggerPoint_.rot, true, false, 3)
end

function Quest10005:OnSubFinish1000501(arg1)
    print("OnSubFinish1000501")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000501, nil)
    end)
end

function Quest10005:OnSubStart1000502(arg1)
    print("OnSubStart1000502")
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 10005):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest10005:OnSubFinish1000502(arg1)
    print("OnSubFinish1000502")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1018.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 10005):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1000502Trigger", "Actor/Gadget/Q1000502Trigger", 70900002, 0, points._Q1000502TriggerPoint_.pos, points._Q1000502TriggerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000038)
    end)
end

return Quest10005
