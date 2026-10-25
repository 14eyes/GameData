require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25031 = class("Quest25031", QuestActorProxy)
Quest25031.defaultAlias = "Quest25031"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest25031:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503101"] = self.OnSubStart2503101,
        ["2503102"] = self.OnSubStart2503102,
        ["2503103"] = self.OnSubStart2503103,
        ["2503104"] = self.OnSubStart2503104,
        ["2503105"] = self.OnSubStart2503105
    }
end

function Quest25031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503101"] = self.OnSubFinish2503101,
        ["2503102"] = self.OnSubFinish2503102,
        ["2503103"] = self.OnSubFinish2503103,
        ["2503104"] = self.OnSubFinish2503104,
        ["2503105"] = self.OnSubFinish2503105
    }
end

function Quest25031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25031:Start()
    print("Start")
end

function Quest25031:OnDestroy()
    print("OnDestroy")
end

function Quest25031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
    this:ActorDestroy("Q25031AilaniTalk")
    this:DestroyNpcTrigger("Q2503101N6087Trigger")
end

function Quest25031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25031:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest25031:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest25031:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25031:OnSubStart2503101(arg1)
    print("OnSubStart2503101")
    this:NpcCreateWithNpcTrigger(npcs.Npc6087.id, 0, 8, 2503101)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6087.alias, 25031):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest25031:OnSubFinish2503101(arg1)
    print("OnSubFinish2503101")
end

function Quest25031:OnSubStart2503102(arg1)
    print("OnSubStart2503102")
    this:NpcCreateWithActionSafeCall(0, npcs.NPC20088.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 25031):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6087.alias, 25031):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest25031:OnSubFinish2503102(arg1)
    print("OnSubFinish2503102")
end

function Quest25031:OnSubStart2503103(arg1)
    print("OnSubStart2503103")
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 25031):DoFreeStyle(4190, true, nil, true, true, false, true)
end

function Quest25031:OnSubFinish2503103(arg1)
    print("OnSubFinish2503103")
end

function Quest25031:OnSubStart2503104(arg1)
    print("OnSubStart2503104")
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 25031):DoFreeStyle(1160, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q25031AilaniTalk", "Actor/Gadget/Q25031AilaniTalk", 70900002, 0, points._Q25031AilaniTalkPoint_.pos, points._Q25031AilaniTalkPoint_.rot, true, false, 3)
end

function Quest25031:OnSubFinish2503104(arg1)
    print("OnSubFinish2503104")
    this:NpcDestroyWithBlackscreen(3, npcs.NPC20088.alias)
    this:SafeDestroyQuestNpc(npcs.Npc20776.alias, 3)
end

function Quest25031:OnSubStart2503105(arg1)
    print("OnSubStart2503105")
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6087.alias, 25031):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest25031:OnSubFinish2503105(arg1)
    print("OnSubFinish2503105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6087.alias)
    this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
end

return Quest25031
