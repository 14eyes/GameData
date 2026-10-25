require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8016 = class("Quest8016", QuestActorProxy)
Quest8016.defaultAlias = "Quest8016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest8016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801601"] = self.OnSubStart801601,
        ["801611"] = self.OnSubStart801611,
        ["801602"] = self.OnSubStart801602,
        ["801603"] = self.OnSubStart801603,
        ["801604"] = self.OnSubStart801604,
        ["801605"] = self.OnSubStart801605,
        ["801609"] = self.OnSubStart801609,
        ["801610"] = self.OnSubStart801610,
        ["801606"] = self.OnSubStart801606,
        ["801607"] = self.OnSubStart801607,
        ["801608"] = self.OnSubStart801608
    }
end

function Quest8016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801601"] = self.OnSubFinish801601,
        ["801611"] = self.OnSubFinish801611,
        ["801602"] = self.OnSubFinish801602,
        ["801603"] = self.OnSubFinish801603,
        ["801604"] = self.OnSubFinish801604,
        ["801605"] = self.OnSubFinish801605,
        ["801609"] = self.OnSubFinish801609,
        ["801610"] = self.OnSubFinish801610,
        ["801606"] = self.OnSubFinish801606,
        ["801607"] = self.OnSubFinish801607,
        ["801608"] = self.OnSubFinish801608
    }
end

function Quest8016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["801610"] = self.OnSubFailed801610, ["801607"] = self.OnSubFailed801607}
end

function Quest8016:Start()
    print("Start")
end

function Quest8016:OnDestroy()
    print("OnDestroy")
end

function Quest8016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8016:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q801604EnterDungeon")
    this:ActorDestroy("Q801611igger")
    this:ActorDestroy("Q801602TalkTrigger")
    this:ActorDestroy("Q801608TriggerOut")
end

function Quest8016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest8016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest8016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest8016:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest8016:OnSubStart801601(arg1)
    print("OnSubStart801601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1091.id, 0, 5, 801601)
end

function Quest8016:OnSubFinish801601(arg1)
    print("OnSubFinish801601")
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 3)
end

function Quest8016:OnSubStart801611(arg1)
    print("OnSubStart801611")
    this:CreateQuestNpc(arg1, npcs.Npc15205.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15205.alias, 8016):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15205.alias, 8016):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q801611igger", "Actor/Gadget/Q801611igger", 70900002, 0, points._Q801611iggerPoint_.pos, points._Q801611iggerPoint_.rot, true, false, 3)
end

function Quest8016:OnSubFinish801611(arg1)
    print("OnSubFinish801611")
end

function Quest8016:OnSubStart801602(arg1)
    print("OnSubStart801602")
    this:GetQuestNpcActor(npcs.Npc15205.alias, 8016):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15205.alias, 8016):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q801602TalkTrigger", "Actor/Gadget/Q801602TalkTrigger", 70900002, 0, points._Q801602TalkTriggerPoint_.pos, points._Q801602TalkTriggerPoint_.rot, true, false, 3)
end

function Quest8016:OnSubFinish801602(arg1)
    print("OnSubFinish801602")
    this:DestroyQuestNpcActor(npcs.Npc15205.alias, 3)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q801602TalkTrigger")
end

function Quest8016:OnSubStart801603(arg1)
    print("OnSubStart801603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801603, 0, 50, 1, npcs.Npc1089.id)
end

function Quest8016:OnSubFinish801603(arg1)
    print("OnSubFinish801603")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
end

function Quest8016:OnSubStart801604(arg1)
    print("OnSubStart801604")
    this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 8016):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q801604EnterDungeon", "Actor/Gadget/Q801604EnterDungeon", 70900002, 0, points._Q801604EnterDungeonPoint_.pos, points._Q801604EnterDungeonPoint_.rot, true, false, 3)
end

function Quest8016:OnSubFinish801604(arg1)
    print("OnSubFinish801604")
    this:ActorDestroy("Q801604EnterDungeon")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
end

function Quest8016:OnSubStart801605(arg1)
    print("OnSubStart801605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1096.id, 0, 801605, 30, true)
end

function Quest8016:OnSubFinish801605(arg1)
    print("OnSubFinish801605")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20265)
end

function Quest8016:OnSubStart801609(arg1)
    print("OnSubStart801609")
end

function Quest8016:OnSubFinish801609(arg1)
    print("OnSubFinish801609")
end

function Quest8016:OnSubStart801610(arg1)
    print("OnSubStart801610")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801610, 0, 30, 1, npcs.Npc1096.id)
end

function Quest8016:OnSubFinish801610(arg1)
    print("OnSubFinish801610")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20265)
end

function Quest8016:OnSubFailed801610(arg1)
    print("OnSubFailed801610")
    this:ActorDestroy("Q801610N1096Trigger")
end

function Quest8016:OnSubStart801606(arg1)
    print("OnSubStart801606")
end

function Quest8016:OnSubFinish801606(arg1)
    print("OnSubFinish801606")
end

function Quest8016:OnSubStart801607(arg1)
    print("OnSubStart801607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801607, 0, 50, 1, npcs.Npc1096.id)
end

function Quest8016:OnSubFinish801607(arg1)
    print("OnSubFinish801607")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20265)
end

function Quest8016:OnSubFailed801607(arg1)
    print("OnSubFailed801607")
    this:ActorDestroy("Q801607N1096Trigger")
end

function Quest8016:OnSubStart801608(arg1)
    print("OnSubStart801608")
    actorMgr:CreateActorWithPos("Q801608TriggerOut", "Actor/Gadget/Q801608TriggerOut", 70900002, 0, points._Q801608TriggerOutPoint_.pos, points._Q801608TriggerOutPoint_.rot, true, false, 20265)
end

function Quest8016:OnSubFinish801608(arg1)
    print("OnSubFinish801608")
    this:ActorDestroy("Q801608TriggerOut")
end

return Quest8016
