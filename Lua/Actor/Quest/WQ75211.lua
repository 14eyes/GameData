require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75211 = class("Quest75211", QuestActorProxy)
Quest75211.defaultAlias = "Quest75211"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75211:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7521104"] = self.OnSubStart7521104,
        ["7521111"] = self.OnSubStart7521111,
        ["7521112"] = self.OnSubStart7521112,
        ["7521107"] = self.OnSubStart7521107,
        ["7521106"] = self.OnSubStart7521106,
        ["7521109"] = self.OnSubStart7521109,
        ["7521108"] = self.OnSubStart7521108,
        ["7521101"] = self.OnSubStart7521101,
        ["7521102"] = self.OnSubStart7521102,
        ["7521103"] = self.OnSubStart7521103,
        ["7521105"] = self.OnSubStart7521105
    }
end

function Quest75211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7521104"] = self.OnSubFinish7521104,
        ["7521111"] = self.OnSubFinish7521111,
        ["7521112"] = self.OnSubFinish7521112,
        ["7521107"] = self.OnSubFinish7521107,
        ["7521106"] = self.OnSubFinish7521106,
        ["7521109"] = self.OnSubFinish7521109,
        ["7521108"] = self.OnSubFinish7521108,
        ["7521101"] = self.OnSubFinish7521101,
        ["7521102"] = self.OnSubFinish7521102,
        ["7521103"] = self.OnSubFinish7521103,
        ["7521105"] = self.OnSubFinish7521105
    }
end

function Quest75211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75211:Start()
    print("Start")
end

function Quest75211:OnDestroy()
    print("OnDestroy")
end

function Quest75211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75211:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75211:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7521103Trigger")
    this:ActorDestroy("Q7521106Trigger")
    this:ActorDestroy("Q7521105Trigger")
end

function Quest75211:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75211:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75211:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75211:OnSubStart7521104(arg1)
    print("OnSubStart7521104")
    this:CreateQuestNpc(arg1, npcs.Npc6599_1.id, 0, false, 0)
end

function Quest75211:OnSubFinish7521104(arg1)
    print("OnSubFinish7521104")
end

function Quest75211:OnSubStart7521111(arg1)
    print("OnSubStart7521111")
    this:NpcCreateWithBlackscreen(0, npcs.Npc6599_1.id, arg1)
end

function Quest75211:OnSubFinish7521111(arg1)
    print("OnSubFinish7521111")
end

function Quest75211:OnSubStart7521112(arg1)
    print("OnSubStart7521112")
end

function Quest75211:OnSubFinish7521112(arg1)
    print("OnSubFinish7521112")
end

function Quest75211:OnSubStart7521107(arg1)
    print("OnSubStart7521107")
end

function Quest75211:OnSubFinish7521107(arg1)
    print("OnSubFinish7521107")
    this:NpcDestroyImmediately(3, npcs.Npc6599_1.alias)
end

function Quest75211:OnSubStart7521106(arg1)
    print("OnSubStart7521106")
    this:CreateQuestNpc(arg1, npcs.Npc6598.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521106Trigger", "Actor/Gadget/Q7521106Trigger", 70900002, 0, points._Q7521106TriggerPoint_.pos, points._Q7521106TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521106Trigger", "Actor/Gadget/Q7521106Trigger", 70900002, 0, points._Q7521106TriggerPoint_.pos, points._Q7521106TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521106Trigger", "Actor/Gadget/Q7521106Trigger", 70900002, 0, points._Q7521106TriggerPoint_.pos, points._Q7521106TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521106Trigger", "Actor/Gadget/Q7521106Trigger", 70900002, 0, points._Q7521106TriggerPoint_.pos, points._Q7521106TriggerPoint_.rot, true, false, 3)
end

function Quest75211:OnSubFinish7521106(arg1)
    print("OnSubFinish7521106")
end

function Quest75211:OnSubStart7521109(arg1)
    print("OnSubStart7521109")
end

function Quest75211:OnSubFinish7521109(arg1)
    print("OnSubFinish7521109")
end

function Quest75211:OnSubStart7521108(arg1)
    print("OnSubStart7521108")
    this:CreateQuestNpc(arg1, npcs.Npc6598.id, 0, false, 0)
end

function Quest75211:OnSubFinish7521108(arg1)
    print("OnSubFinish7521108")
end

function Quest75211:OnSubStart7521101(arg1)
    print("OnSubStart7521101")
    this:CreateQuestNpc(arg1, npcs.Npc6554_1.id, 0, false, 0)
end

function Quest75211:OnSubFinish7521101(arg1)
    print("OnSubFinish7521101")
end

function Quest75211:OnSubStart7521102(arg1)
    print("OnSubStart7521102")
end

function Quest75211:OnSubFinish7521102(arg1)
    print("OnSubFinish7521102")
end

function Quest75211:OnSubStart7521103(arg1)
    print("OnSubStart7521103")
    actorMgr:CreateActorWithPos("Q7521103Trigger", "Actor/Gadget/Q7521103Trigger", 70900002, 0, points._Q7521103TriggerPoint_.pos, points._Q7521103TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521103Trigger", "Actor/Gadget/Q7521103Trigger", 70900002, 0, points._Q7521103TriggerPoint_.pos, points._Q7521103TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521103Trigger", "Actor/Gadget/Q7521103Trigger", 70900002, 0, points._Q7521103TriggerPoint_.pos, points._Q7521103TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521103Trigger", "Actor/Gadget/Q7521103Trigger", 70900002, 0, points._Q7521103TriggerPoint_.pos, points._Q7521103TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7521103Trigger", "Actor/Gadget/Q7521103Trigger", 70900002, 0, points._Q7521103TriggerPoint_.pos, points._Q7521103TriggerPoint_.rot, true, false, 3)
end

function Quest75211:OnSubFinish7521103(arg1)
    print("OnSubFinish7521103")
end

function Quest75211:OnSubStart7521105(arg1)
    print("OnSubStart7521105")
    actorMgr:CreateActorWithPos("Q7521105Trigger", "Actor/Gadget/Q7521105Trigger", 70900002, 0, points._Q7521105TriggerPoint_.pos, points._Q7521105TriggerPoint_.rot, true, false, 3)
end

function Quest75211:OnSubFinish7521105(arg1)
    print("OnSubFinish7521105")
end

return Quest75211
