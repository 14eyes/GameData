require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40136 = class("Quest40136", QuestActorProxy)
Quest40136.defaultAlias = "Quest40136"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40136:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013604"] = self.OnSubStart4013604,
        ["4013601"] = self.OnSubStart4013601,
        ["4013602"] = self.OnSubStart4013602,
        ["4013603"] = self.OnSubStart4013603
    }
end

function Quest40136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013604"] = self.OnSubFinish4013604,
        ["4013601"] = self.OnSubFinish4013601,
        ["4013602"] = self.OnSubFinish4013602,
        ["4013603"] = self.OnSubFinish4013603
    }
end

function Quest40136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40136:Start()
    print("Start")
end

function Quest40136:OnDestroy()
    print("OnDestroy")
end

function Quest40136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40136:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4013603Trigger", 3, false)
    this:DestroyNpcTrigger("Q4013601N30435Trigger")
    this:DestroyNpcTrigger("Q4013602N1078Trigger")
end

function Quest40136:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40136:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40136:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40136:OnSubStart4013604(arg1)
    print("OnSubStart4013604")
end

function Quest40136:OnSubFinish4013604(arg1)
    print("OnSubFinish4013604")
end

function Quest40136:OnSubStart4013601(arg1)
    print("OnSubStart4013601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30435Data.id, 4013601, 0, 30, 1)
end

function Quest40136:OnSubFinish4013601(arg1)
    print("OnSubFinish4013601")
end

function Quest40136:OnSubStart4013602(arg1)
    print("OnSubStart4013602")
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1078Data.id, 4013602, 0, 30, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40136:OnSubFinish4013602(arg1)
    print("OnSubFinish4013602")
end

function Quest40136:OnSubStart4013603(arg1)
    print("OnSubStart4013603")
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013603Trigger", "Actor/Gadget/Q4013603Trigger", 70900002, 0, points.TPos_Q4013603Trigger.pos, points.TPos_Q4013603Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40136:OnSubFinish4013603(arg1)
    print("OnSubFinish4013603")
    this:ActorDestroy("Q4013603Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
end

return Quest40136
