require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71106 = class("Quest71106", QuestActorProxy)
Quest71106.defaultAlias = "Quest71106"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71106:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110601"] = self.OnSubStart7110601,
        ["7110603"] = self.OnSubStart7110603,
        ["7110604"] = self.OnSubStart7110604,
        ["7110605"] = self.OnSubStart7110605,
        ["7110602"] = self.OnSubStart7110602,
        ["7110606"] = self.OnSubStart7110606,
        ["7110607"] = self.OnSubStart7110607,
        ["7110608"] = self.OnSubStart7110608,
        ["7110609"] = self.OnSubStart7110609
    }
end

function Quest71106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110601"] = self.OnSubFinish7110601,
        ["7110603"] = self.OnSubFinish7110603,
        ["7110604"] = self.OnSubFinish7110604,
        ["7110605"] = self.OnSubFinish7110605,
        ["7110602"] = self.OnSubFinish7110602,
        ["7110606"] = self.OnSubFinish7110606,
        ["7110607"] = self.OnSubFinish7110607,
        ["7110608"] = self.OnSubFinish7110608,
        ["7110609"] = self.OnSubFinish7110609
    }
end

function Quest71106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71106:Start()
    print("Start")
end

function Quest71106:OnDestroy()
    print("OnDestroy")
end

function Quest71106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71106:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2491Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2498Data.alias, 3)
end

function Quest71106:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71106:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71106:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest71106:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71106:OnSubStart7110601(arg1)
    print("OnSubStart7110601")
    this:CreateQuestNpc(arg1, npcs.Npc2491Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2491Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71106:OnSubFinish7110601(arg1)
    print("OnSubFinish7110601")
end

function Quest71106:OnSubStart7110603(arg1)
    print("OnSubStart7110603")
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2498Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110603Trigger", "Actor/Gadget/Q7110603Trigger", 70900002, 0, points.TPos_Q7110603Trigger.pos, points.TPos_Q7110603Trigger.rot, true, false, 3)
end

function Quest71106:OnSubFinish7110603(arg1)
    print("OnSubFinish7110603")
    this:PlayCutsceneIndex(7110603, nil, nil, nil, false)
    if actorMgr:GetActor("Q7110603Trigger   ") ~= nil then
        this:ActorDestroy("Q7110603Trigger")
        this:QuestNarratorTask(datas.Narrator_711060302)
    end
end

function Quest71106:OnSubStart7110604(arg1)
    print("OnSubStart7110604")
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2498Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110604Trigger", "Actor/Gadget/Q7110604Trigger", 70900002, 0, points.TPos_Q7110604Trigger.pos, points.TPos_Q7110604Trigger.rot, true, false, 3)
end

function Quest71106:OnSubFinish7110604(arg1)
    print("OnSubFinish7110604")
    this:PlayCutsceneIndex(7110604, nil, nil, nil, false)
    if actorMgr:GetActor("Q7110604Trigger   ") ~= nil then
        this:ActorDestroy("Q7110604Trigger")
        this:QuestNarratorTask(datas.Narrator_711060402)
    end
end

function Quest71106:OnSubStart7110605(arg1)
    print("OnSubStart7110605")
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2498Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110605Trigger", "Actor/Gadget/Q7110605Trigger", 70900002, 0, points.TPos_Q7110605Trigger.pos, points.TPos_Q7110605Trigger.rot, true, false, 3)
end

function Quest71106:OnSubFinish7110605(arg1)
    print("OnSubFinish7110605")
    this:PlayCutsceneIndex(7110605, nil, nil, nil, false)
    if actorMgr:GetActor("Q7110605Trigger   ") ~= nil then
        this:ActorDestroy("Q7110605Trigger")
        this:QuestNarratorTask(datas.Narrator_711060502)
    end
end

function Quest71106:OnSubStart7110602(arg1)
    print("OnSubStart7110602")
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2498Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71106:OnSubFinish7110602(arg1)
    print("OnSubFinish7110602")
end

function Quest71106:OnSubStart7110606(arg1)
    print("OnSubStart7110606")
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
end

function Quest71106:OnSubFinish7110606(arg1)
    print("OnSubFinish7110606")
    globalActor:PlayerEnterDungeon(978, 1183, false, nil, 0)
    this:NpcDestroyWithDither(npcs.Npc2491Data.alias, 3)
end

function Quest71106:OnSubStart7110607(arg1)
    print("OnSubStart7110607")
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
end

function Quest71106:OnSubFinish7110607(arg1)
    print("OnSubFinish7110607")
end

function Quest71106:OnSubStart7110608(arg1)
    print("OnSubStart7110608")
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2498Data.alias, 1, true)
end

function Quest71106:OnSubFinish7110608(arg1)
    print("OnSubFinish7110608")
end

function Quest71106:OnSubStart7110609(arg1)
    print("OnSubStart7110609")
    this:NpcCreateWithNpcTrigger(npcs.Npc2491Data.id, 7110609, 0, 20)
    this:NpcCreateWithNpcTrigger(npcs.Npc2498Data.id, 7110609, 0, 20)
end

function Quest71106:OnSubFinish7110609(arg1)
    print("OnSubFinish7110609")
    this:LightNotifyTo("Npc2491", 0, true)
    this:LightNotifyTo("Npc2498", 0, true)
    this:NpcDestroyWithDither(npcs.Npc2491Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc2498Data.alias, 3)
end

return Quest71106
