require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71116 = class("Quest71116", QuestActorProxy)
Quest71116.defaultAlias = "Quest71116"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71116:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111601"] = self.OnSubStart7111601,
        ["7111602"] = self.OnSubStart7111602,
        ["7111603"] = self.OnSubStart7111603,
        ["7111604"] = self.OnSubStart7111604,
        ["7111605"] = self.OnSubStart7111605,
        ["7111609"] = self.OnSubStart7111609,
        ["7111606"] = self.OnSubStart7111606,
        ["7111607"] = self.OnSubStart7111607,
        ["7111608"] = self.OnSubStart7111608
    }
end

function Quest71116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111601"] = self.OnSubFinish7111601,
        ["7111602"] = self.OnSubFinish7111602,
        ["7111603"] = self.OnSubFinish7111603,
        ["7111604"] = self.OnSubFinish7111604,
        ["7111605"] = self.OnSubFinish7111605,
        ["7111609"] = self.OnSubFinish7111609,
        ["7111606"] = self.OnSubFinish7111606,
        ["7111607"] = self.OnSubFinish7111607,
        ["7111608"] = self.OnSubFinish7111608
    }
end

function Quest71116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7111605"] = self.OnSubFailed7111605, ["7111607"] = self.OnSubFailed7111607}
end

function Quest71116:Start()
    print("Start")
end

function Quest71116:OnDestroy()
    print("OnDestroy")
end

function Quest71116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71116:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71116:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest71116:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71116:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71116:OnSubStart7111601(arg1)
    print("OnSubStart7111601")
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21411Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21364Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21300Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21409Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21410Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21433Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21433Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21434Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21434Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7111601Trigger", "Actor/Gadget/Q7111601Trigger", 70900002, 0, points.TPos_Q7111601Trigger.pos, points.TPos_Q7111601Trigger.rot, true, false, 3)
    this:CreateSpeechBubbleTask(npcs.Npc21411Data.id, 711169501, 3, true, 20, 30, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc21433Data.id, 711169502, 3, true, 20, 30, true, false)
end

function Quest71116:OnSubFinish7111601(arg1)
    print("OnSubFinish7111601")
    this:SafeDestroyQuestNpc(npcs.Npc21409Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21410Data.alias, 3)
end

function Quest71116:OnSubStart7111602(arg1)
    print("OnSubStart7111602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21297Data.id, 7111602, 0, 60, 1, false)
    this:CreateQuestNpc(arg1, npcs.Npc21298Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21299Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21363Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21363Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21433Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21433Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21434Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21434Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21429Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21429Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateSpeechBubbleTask(npcs.Npc21411Data.id, 711169501, 3, true, 20, 30, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc21433Data.id, 711169502, 3, true, 20, 30, true, false)
end

function Quest71116:OnSubFinish7111602(arg1)
    print("OnSubFinish7111602")
    this:ClearSpeechBubbleTask()
    this:ClearSpeechBubbleTask()
end

function Quest71116:OnSubStart7111603(arg1)
    print("OnSubStart7111603")
    this:CreateQuestNpc(arg1, npcs.Npc21298Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21299Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21363Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21433Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21433Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21434Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21434Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7111602Trigger", "Actor/Gadget/Q7111602Trigger", 70900002, 0, points.TPos_Q7111602Trigger.pos, points.TPos_Q7111602Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7111603Trigger", "Actor/Gadget/Q7111603Trigger", 70900002, 0, points.TPos_Q7111603Trigger.pos, points.TPos_Q7111603Trigger.rot, true, false, 3)
    this:CreateSpeechBubbleTask(npcs.Npc21411Data.id, 711169501, 3, true, 20, 30, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc21433Data.id, 711169502, 3, true, 20, 30, true, false)
end

function Quest71116:OnSubFinish7111603(arg1)
    print("OnSubFinish7111603")
    this:SafeDestroyQuestNpc(npcs.Npc21297Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21433Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21434Data.alias, 3)
end

function Quest71116:OnSubStart7111604(arg1)
    print("OnSubStart7111604")
    this:CreateQuestNpc(arg1, npcs.Npc21298Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21299Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21363Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21299Data.alias, "", true)
    end)
end

function Quest71116:OnSubFinish7111604(arg1)
    print("OnSubFinish7111604")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21298Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21299Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21363Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21362Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21429Data.alias)
end

function Quest71116:OnSubStart7111605(arg1)
    print("OnSubStart7111605")
    this:CreateQuestNpc(arg1, npcs.Npc21411Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21364Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21300Data.id, 0, false, 0)
end

function Quest71116:OnSubFinish7111605(arg1)
    print("OnSubFinish7111605")
end

function Quest71116:OnSubFailed7111605(arg1)
    print("OnSubFailed7111605")
    this:DestroyQuestNpcActor(npcs.Npc21436Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc21437Data.alias, 3)
end

function Quest71116:OnSubStart7111609(arg1)
    print("OnSubStart7111609")
    this:CreateQuestNpc(arg1, npcs.Npc21436Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21436Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21437Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21437Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest71116:OnSubFinish7111609(arg1)
    print("OnSubFinish7111609")
    this:SafeDestroyQuestNpc(npcs.Npc21436Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21437Data.alias, 3)
end

function Quest71116:OnSubStart7111606(arg1)
    print("OnSubStart7111606")
    this:CreateQuestNpc(arg1, npcs.Npc21297Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21298Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21411Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21364Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21300Data.id, 0, false, 0)
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21298Data.alias, "", true)
    end)
end

function Quest71116:OnSubFinish7111606(arg1)
    print("OnSubFinish7111606")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21297Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21298Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21362Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21364Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21300Data.alias, 3)
end

function Quest71116:OnSubStart7111607(arg1)
    print("OnSubStart7111607")
    this:CreateQuestNpc(arg1, npcs.Npc21411Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2251Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2251Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2299Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2299Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2301Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2301Data.alias, 1, true)
end

function Quest71116:OnSubFinish7111607(arg1)
    print("OnSubFinish7111607")
end

function Quest71116:OnSubFailed7111607(arg1)
    print("OnSubFailed7111607")
    this:DestroyQuestNpcActor(npcs.Npc2251Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc2299Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc2301Data.alias, 3)
end

function Quest71116:OnSubStart7111608(arg1)
    print("OnSubStart7111608")
    this:CreateQuestNpc(arg1, npcs.Npc21297Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21362Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21411Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2251Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc2251Data.alias, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc2299Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc2299Data.alias, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc2301Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc2301Data.alias, 0, true)
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21297Data.alias, "", true)
    end)
end

function Quest71116:OnSubFinish7111608(arg1)
    print("OnSubFinish7111608")
    this:SafeDestroyQuestNpc(npcs.Npc21411Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2251Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2299Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2301Data.alias)
end

return Quest71116
