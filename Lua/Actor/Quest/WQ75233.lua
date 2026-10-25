require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75233 = class("Quest75233", QuestActorProxy)
Quest75233.defaultAlias = "Quest75233"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75233:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75233:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7523301"] = self.OnSubStart7523301,
        ["7523309"] = self.OnSubStart7523309,
        ["7523310"] = self.OnSubStart7523310,
        ["7523311"] = self.OnSubStart7523311,
        ["7523302"] = self.OnSubStart7523302,
        ["7523320"] = self.OnSubStart7523320,
        ["7523303"] = self.OnSubStart7523303,
        ["7523315"] = self.OnSubStart7523315,
        ["7523312"] = self.OnSubStart7523312,
        ["7523304"] = self.OnSubStart7523304,
        ["7523305"] = self.OnSubStart7523305,
        ["7523306"] = self.OnSubStart7523306,
        ["7523307"] = self.OnSubStart7523307,
        ["7523308"] = self.OnSubStart7523308,
        ["7523313"] = self.OnSubStart7523313,
        ["7523314"] = self.OnSubStart7523314,
        ["7523316"] = self.OnSubStart7523316,
        ["7523317"] = self.OnSubStart7523317,
        ["7523318"] = self.OnSubStart7523318,
        ["7523319"] = self.OnSubStart7523319
    }
end

function Quest75233:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7523301"] = self.OnSubFinish7523301,
        ["7523309"] = self.OnSubFinish7523309,
        ["7523310"] = self.OnSubFinish7523310,
        ["7523311"] = self.OnSubFinish7523311,
        ["7523302"] = self.OnSubFinish7523302,
        ["7523320"] = self.OnSubFinish7523320,
        ["7523303"] = self.OnSubFinish7523303,
        ["7523315"] = self.OnSubFinish7523315,
        ["7523312"] = self.OnSubFinish7523312,
        ["7523304"] = self.OnSubFinish7523304,
        ["7523305"] = self.OnSubFinish7523305,
        ["7523306"] = self.OnSubFinish7523306,
        ["7523307"] = self.OnSubFinish7523307,
        ["7523308"] = self.OnSubFinish7523308,
        ["7523313"] = self.OnSubFinish7523313,
        ["7523314"] = self.OnSubFinish7523314,
        ["7523316"] = self.OnSubFinish7523316,
        ["7523317"] = self.OnSubFinish7523317,
        ["7523318"] = self.OnSubFinish7523318,
        ["7523319"] = self.OnSubFinish7523319
    }
end

function Quest75233:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75233:Start()
    print("Start")
end

function Quest75233:OnDestroy()
    print("OnDestroy")
end

function Quest75233:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75233:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75233:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75233:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7523302Trigger")
    this:ActorDestroy("Q7523306Trigger")
    this:ActorDestroy("Q7523309Trigger")
    this:ActorDestroy("Q7523320Trigger")
end

function Quest75233:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75233:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75233:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75233:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75233:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75233:OnSubStart7523301(arg1)
    print("OnSubStart7523301")
    this:NpcCreateWithNpcTrigger(npcs.Npc6502.id, 0, 20, 7523301)
end

function Quest75233:OnSubFinish7523301(arg1)
    print("OnSubFinish7523301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6502.alias)
end

function Quest75233:OnSubStart7523309(arg1)
    print("OnSubStart7523309")
    this:NpcCreateWithNpcTrigger(npcs.Npc6503.id, 0, 10, 7523309)
    actorMgr:CreateActorWithPos("Q7523309Trigger", "Actor/Gadget/Q7523309Trigger", 70900002, 0, points._Q7523309TriggerPoint_.pos, points._Q7523309TriggerPoint_.rot, true, false, 3)
end

function Quest75233:OnSubFinish7523309(arg1)
    print("OnSubFinish7523309")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6503.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6507.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523310(arg1)
    print("OnSubStart7523310")
end

function Quest75233:OnSubFinish7523310(arg1)
    print("OnSubFinish7523310")
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523311(arg1)
    print("OnSubStart7523311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523311, 0, 30, 2, npcs.Npc6503.id)
end

function Quest75233:OnSubFinish7523311(arg1)
    print("OnSubFinish7523311")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6503.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6507.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523302(arg1)
    print("OnSubStart7523302")
    this:NpcCreateWithNpcTrigger(npcs.Npc6505.id, 0, 10, 7523302)
    actorMgr:CreateActorWithPos("Q7523302Trigger", "Actor/Gadget/Q7523302Trigger", 70900002, 0, points._Q7523302TriggerPoint_.pos, points._Q7523302TriggerPoint_.rot, true, false, 3)
end

function Quest75233:OnSubFinish7523302(arg1)
    print("OnSubFinish7523302")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6505.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523320(arg1)
    print("OnSubStart7523320")
end

function Quest75233:OnSubFinish7523320(arg1)
    print("OnSubFinish7523320")
end

function Quest75233:OnSubStart7523303(arg1)
    print("OnSubStart7523303")
    this:CreateQuestNpc(arg1, npcs.Npc6505.id, 0, false, 0)
end

function Quest75233:OnSubFinish7523303(arg1)
    print("OnSubFinish7523303")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6505.alias)
end

function Quest75233:OnSubStart7523315(arg1)
    print("OnSubStart7523315")
end

function Quest75233:OnSubFinish7523315(arg1)
    print("OnSubFinish7523315")
end

function Quest75233:OnSubStart7523312(arg1)
    print("OnSubStart7523312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523312, 0, 10, 2, npcs.Npc6505.id)
end

function Quest75233:OnSubFinish7523312(arg1)
    print("OnSubFinish7523312")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6505.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21980.alias, 3)
end

function Quest75233:OnSubStart7523304(arg1)
    print("OnSubStart7523304")
end

function Quest75233:OnSubFinish7523304(arg1)
    print("OnSubFinish7523304")
end

function Quest75233:OnSubStart7523305(arg1)
    print("OnSubStart7523305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523305, 0, 50, 2, npcs.Npc6505.id)
end

function Quest75233:OnSubFinish7523305(arg1)
    print("OnSubFinish7523305")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6505.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21980.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523306(arg1)
    print("OnSubStart7523306")
    this:NpcCreateWithNpcTrigger(npcs.Npc6504.id, 0, 10, 7523306)
    actorMgr:CreateActorWithPos("Q7523306Trigger", "Actor/Gadget/Q7523306Trigger", 70900002, 0, points._Q7523306TriggerPoint_.pos, points._Q7523306TriggerPoint_.rot, true, false, 3)
end

function Quest75233:OnSubFinish7523306(arg1)
    print("OnSubFinish7523306")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6504.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523307(arg1)
    print("OnSubStart7523307")
    this:NpcCreateWithBlackscreen(0, npcs.Npc6504.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6504.alias, 75233):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75233:OnSubFinish7523307(arg1)
    print("OnSubFinish7523307")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6504.alias)
end

function Quest75233:OnSubStart7523308(arg1)
    print("OnSubStart7523308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523308, 0, 20, 2, npcs.Npc6504.id)
end

function Quest75233:OnSubFinish7523308(arg1)
    print("OnSubFinish7523308")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6504.alias)
end

function Quest75233:OnSubStart7523313(arg1)
    print("OnSubStart7523313")
    this:NpcCreateWithNpcTrigger(npcs.Npc6502.id, 0, 30, 7523313)
end

function Quest75233:OnSubFinish7523313(arg1)
    print("OnSubFinish7523313")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6502.alias)
end

function Quest75233:OnSubStart7523314(arg1)
    print("OnSubStart7523314")
    this:NpcCreateWithNpcTrigger(npcs.Npc6506.id, 0, 15, 7523314)
end

function Quest75233:OnSubFinish7523314(arg1)
    print("OnSubFinish7523314")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6506.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6502.alias, 3)
end

function Quest75233:OnSubStart7523316(arg1)
    print("OnSubStart7523316")
end

function Quest75233:OnSubFinish7523316(arg1)
    print("OnSubFinish7523316")
end

function Quest75233:OnSubStart7523317(arg1)
    print("OnSubStart7523317")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523317, 0, 30, 2, npcs.Npc6502.id)
    this:NpcCreateWithBlackscreen(0, npcs.Npc6503.id, arg1)
end

function Quest75233:OnSubFinish7523317(arg1)
    print("OnSubFinish7523317")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6502.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6503.alias)
end

function Quest75233:OnSubStart7523318(arg1)
    print("OnSubStart7523318")
end

function Quest75233:OnSubFinish7523318(arg1)
    print("OnSubFinish7523318")
end

function Quest75233:OnSubStart7523319(arg1)
    print("OnSubStart7523319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523319, 0, 15, 2, npcs.Npc21960.id)
end

function Quest75233:OnSubFinish7523319(arg1)
    print("OnSubFinish7523319")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21960.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6503.alias)
end

return Quest75233
