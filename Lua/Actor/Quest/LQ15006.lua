require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15006 = class("Quest15006", QuestActorProxy)
Quest15006.defaultAlias = "Quest15006"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest15006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500609"] = self.OnSubStart1500609,
        ["1500608"] = self.OnSubStart1500608,
        ["1500607"] = self.OnSubStart1500607,
        ["1500604"] = self.OnSubStart1500604,
        ["1500603"] = self.OnSubStart1500603,
        ["1500615"] = self.OnSubStart1500615,
        ["1500612"] = self.OnSubStart1500612,
        ["1500602"] = self.OnSubStart1500602,
        ["1500601"] = self.OnSubStart1500601,
        ["1500605"] = self.OnSubStart1500605
    }
end

function Quest15006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500609"] = self.OnSubFinish1500609,
        ["1500608"] = self.OnSubFinish1500608,
        ["1500607"] = self.OnSubFinish1500607,
        ["1500604"] = self.OnSubFinish1500604,
        ["1500603"] = self.OnSubFinish1500603,
        ["1500615"] = self.OnSubFinish1500615,
        ["1500612"] = self.OnSubFinish1500612,
        ["1500602"] = self.OnSubFinish1500602,
        ["1500601"] = self.OnSubFinish1500601,
        ["1500605"] = self.OnSubFinish1500605
    }
end

function Quest15006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15006:Start()
    print("Start")
end

function Quest15006:OnDestroy()
    print("OnDestroy")
end

function Quest15006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15006:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15006:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15006:OnSubStart1500609(arg1)
    print("OnSubStart1500609")
    this:TryStartTribalAutoTrack(arg1)
    this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 15006):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6057.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 15006):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1500609Trigger", "Actor/Gadget/Q1500609Trigger", 70900002, 0, points._Q1500609TriggerPoint_.pos, points._Q1500609TriggerPoint_.rot, true, false, 3)
    if this:GetQuestGlobalVar(1500601) == 0 then
        this:CreateQuestNpcById(1500609, npcs.Npc14590.id, 0, false, 0)
    end
end

function Quest15006:OnSubFinish1500609(arg1)
    print("OnSubFinish1500609")
    this:SafeDestroyQuestNpc(npcs.Npc14590.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 2056)
        this:SetNavigationByMainId(15006, true)
        this:LightNotifyTo(npcs.Npc6057.alias, 0, true)
    end)
end

function Quest15006:OnSubStart1500608(arg1)
    print("OnSubStart1500608")
    this:NpcCreateWithNpcTrigger(npcs.Npc14300.id, 0, 15, 1500608)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 15006):DisableInteeHeadCtrl(false)
end

function Quest15006:OnSubFinish1500608(arg1)
    print("OnSubFinish1500608")
    this:SafeDestroyQuestNpc(npcs.Npc14300.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
end

function Quest15006:OnSubStart1500607(arg1)
    print("OnSubStart1500607")
    this:CreateQuestNpc(arg1, npcs.Npc14303.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14304.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1500607Trigger", "Actor/Gadget/Q1500607Trigger", 70900002, 0, points._Q1500607TriggerPoint_.pos, points._Q1500607TriggerPoint_.rot, true, false, 3)
end

function Quest15006:OnSubFinish1500607(arg1)
    print("OnSubFinish1500607")
end

function Quest15006:OnSubStart1500604(arg1)
    print("OnSubStart1500604")
end

function Quest15006:OnSubFinish1500604(arg1)
    print("OnSubFinish1500604")
end

function Quest15006:OnSubStart1500603(arg1)
    print("OnSubStart1500603")
end

function Quest15006:OnSubFinish1500603(arg1)
    print("OnSubFinish1500603")
end

function Quest15006:OnSubStart1500615(arg1)
    print("OnSubStart1500615")
    this:CreateQuestNpc(arg1, npcs.Npc14300.id, 0, false, 0)
    actorMgr:CreateActorWithPos("trigger1500615", "Actor/Gadget/trigger1500615", 70900002, 0, points.trigger1500615.pos, points.trigger1500615.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14304.alias, 15006):ForceAvatarWalkByDist(10, 11)
end

function Quest15006:OnSubFinish1500615(arg1)
    print("OnSubFinish1500615")
    this:SafeDestroyQuestNpc(npcs.Npc14303.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14300.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14304.alias, 3)
    this:GetQuestNpcActor(npcs.Npc14304.alias, 15006):ForceAvatarWalkByDist(0, 1)
end

function Quest15006:OnSubStart1500612(arg1)
    print("OnSubStart1500612")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500612, 0, 15, 1, npcs.Npc14300.id)
end

function Quest15006:OnSubFinish1500612(arg1)
    print("OnSubFinish1500612")
    this:SafeDestroyQuestNpc(npcs.Npc14300.alias, 3)
end

function Quest15006:OnSubStart1500602(arg1)
    print("OnSubStart1500602")
end

function Quest15006:OnSubFinish1500602(arg1)
    print("OnSubFinish1500602")
end

function Quest15006:OnSubStart1500601(arg1)
    print("OnSubStart1500601")
end

function Quest15006:OnSubFinish1500601(arg1)
    print("OnSubFinish1500601")
end

function Quest15006:OnSubStart1500605(arg1)
    print("OnSubStart1500605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500605, 0, 10, 1, npcs.Npc14300.id)
end

function Quest15006:OnSubFinish1500605(arg1)
    print("OnSubFinish1500605")
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14300.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 2056)
    end)
end

return Quest15006
