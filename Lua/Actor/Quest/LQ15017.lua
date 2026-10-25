require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15017 = class("Quest15017", QuestActorProxy)
Quest15017.defaultAlias = "Quest15017"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest15017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest15017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501701"] = self.OnSubStart1501701,
        ["1501702"] = self.OnSubStart1501702,
        ["1501703"] = self.OnSubStart1501703,
        ["1501704"] = self.OnSubStart1501704
    }
end

function Quest15017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501701"] = self.OnSubFinish1501701,
        ["1501702"] = self.OnSubFinish1501702,
        ["1501703"] = self.OnSubFinish1501703,
        ["1501704"] = self.OnSubFinish1501704
    }
end

function Quest15017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15017:Start()
    print("Start")
end

function Quest15017:OnDestroy()
    print("OnDestroy")
end

function Quest15017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15017:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest15017:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest15017:OnSubStart1501701(arg1)
    print("OnSubStart1501701")
    this:CreateQuestNpc(arg1, npcs.Npc6083Data.id, 0, false, 0)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15017:OnSubFinish1501701(arg1)
    print("OnSubFinish1501701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6083Data.alias)
    this:SetNavigationByMainId(15017, true)
end

function Quest15017:OnSubStart1501702(arg1)
    print("OnSubStart1501702")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc6083Data.id, 1501702, 0, 20, 0.5)
    this:CreateQuestNpc(arg1, npcs.Npc6084Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14312Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14312Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15017:OnSubFinish1501702(arg1)
    print("OnSubFinish1501702")
end

function Quest15017:OnSubStart1501703(arg1)
    print("OnSubStart1501703")
    this:GetQuestNpcActor(npcs.Npc14312Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1501703Trigger", "Actor/Gadget/Q1501703Trigger", 70900002, 0, points.TPos_Q1501703Trigger.pos, points.TPos_Q1501703Trigger.rot, true, false, 3)
end

function Quest15017:OnSubFinish1501703(arg1)
    print("OnSubFinish1501703")
end

function Quest15017:OnSubStart1501704(arg1)
    print("OnSubStart1501704")
    this:GetQuestNpcActor(npcs.Npc14312Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1501704Trigger", "Actor/Gadget/Q1501704Trigger", 70900002, 0, points.TPos_Q1501704Trigger.pos, points.TPos_Q1501704Trigger.rot, true, false, 3)
end

function Quest15017:OnSubFinish1501704(arg1)
    print("OnSubFinish1501704")
    this:SafeDestroyQuestNpc(npcs.Npc6084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14312Data.alias, 3)
end

return Quest15017
