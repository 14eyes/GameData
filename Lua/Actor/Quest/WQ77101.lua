require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77101 = class("Quest77101", QuestActorProxy)
Quest77101.defaultAlias = "Quest77101"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77101:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710123"] = self.OnSubStart7710123,
        ["7710101"] = self.OnSubStart7710101,
        ["7710140"] = self.OnSubStart7710140,
        ["7710139"] = self.OnSubStart7710139,
        ["7710138"] = self.OnSubStart7710138,
        ["7710102"] = self.OnSubStart7710102,
        ["7710103"] = self.OnSubStart7710103,
        ["7710104"] = self.OnSubStart7710104,
        ["7710105"] = self.OnSubStart7710105,
        ["7710106"] = self.OnSubStart7710106,
        ["7710126"] = self.OnSubStart7710126,
        ["7710108"] = self.OnSubStart7710108,
        ["7710109"] = self.OnSubStart7710109,
        ["7710127"] = self.OnSubStart7710127,
        ["7710137"] = self.OnSubStart7710137,
        ["7710125"] = self.OnSubStart7710125,
        ["7710110"] = self.OnSubStart7710110,
        ["7710111"] = self.OnSubStart7710111,
        ["7710112"] = self.OnSubStart7710112,
        ["7710113"] = self.OnSubStart7710113,
        ["7710114"] = self.OnSubStart7710114,
        ["7710115"] = self.OnSubStart7710115,
        ["7710116"] = self.OnSubStart7710116,
        ["7710117"] = self.OnSubStart7710117
    }
end

function Quest77101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710123"] = self.OnSubFinish7710123,
        ["7710101"] = self.OnSubFinish7710101,
        ["7710140"] = self.OnSubFinish7710140,
        ["7710139"] = self.OnSubFinish7710139,
        ["7710138"] = self.OnSubFinish7710138,
        ["7710102"] = self.OnSubFinish7710102,
        ["7710103"] = self.OnSubFinish7710103,
        ["7710104"] = self.OnSubFinish7710104,
        ["7710105"] = self.OnSubFinish7710105,
        ["7710106"] = self.OnSubFinish7710106,
        ["7710126"] = self.OnSubFinish7710126,
        ["7710108"] = self.OnSubFinish7710108,
        ["7710109"] = self.OnSubFinish7710109,
        ["7710127"] = self.OnSubFinish7710127,
        ["7710137"] = self.OnSubFinish7710137,
        ["7710125"] = self.OnSubFinish7710125,
        ["7710110"] = self.OnSubFinish7710110,
        ["7710111"] = self.OnSubFinish7710111,
        ["7710112"] = self.OnSubFinish7710112,
        ["7710113"] = self.OnSubFinish7710113,
        ["7710114"] = self.OnSubFinish7710114,
        ["7710115"] = self.OnSubFinish7710115,
        ["7710116"] = self.OnSubFinish7710116,
        ["7710117"] = self.OnSubFinish7710117
    }
end

function Quest77101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7710113"] = self.OnSubFailed7710113}
end

function Quest77101:Start()
    print("Start")
end

function Quest77101:OnDestroy()
    print("OnDestroy")
end

function Quest77101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77101:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710101Trigger", nil)
    this:ActorDestroy("Q7710104Trigger", nil)
    this:ActorDestroy("Q7710105Trigger", nil)
    this:ActorDestroy("Q7710108igger", 77101)
    this:ActorDestroy("Q7710110Trigger", nil)
    this:ActorDestroy("Q7710111Trigger", nil)
    this:ActorDestroy("Q7710115Trigger", nil)
    this:ActorDestroy("Q7710112Trigger", 77101)
    this:ActorDestroy("Q7710123Tigger", nil)
    this:ActorDestroy("Q7710126Trigger", nil)
    this:ActorDestroy("Q7710137Trigger", 77101)
end

function Quest77101:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77101:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77101:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77101:OnSubStart7710123(arg1)
    print("OnSubStart7710123")
    actorMgr:CreateActorWithPos("Q7710123Tigger", "Actor/Gadget/Q7710123Tigger", 70900002, 0, points._Q7710123TiggerPoint_.pos, points._Q7710123TiggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710123(arg1)
    print("OnSubFinish7710123")
end

function Quest77101:OnSubStart7710101(arg1)
    print("OnSubStart7710101")
    actorMgr:CreateActorWithPos("Q7710101Trigger", "Actor/Gadget/Q7710101Trigger", 70900002, 0, points._Q7710101TriggerPoint_.pos, points._Q7710101TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710101(arg1)
    print("OnSubFinish7710101")
end

function Quest77101:OnSubStart7710140(arg1)
    print("OnSubStart7710140")
end

function Quest77101:OnSubFinish7710140(arg1)
    print("OnSubFinish7710140")
end

function Quest77101:OnSubStart7710139(arg1)
    print("OnSubStart7710139")
end

function Quest77101:OnSubFinish7710139(arg1)
    print("OnSubFinish7710139")
end

function Quest77101:OnSubStart7710138(arg1)
    print("OnSubStart7710138")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710138, 0, 8, 0, npcs.Npc22280.id)
end

function Quest77101:OnSubFinish7710138(arg1)
    print("OnSubFinish7710138")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

function Quest77101:OnSubStart7710102(arg1)
    print("OnSubStart7710102")
end

function Quest77101:OnSubFinish7710102(arg1)
    print("OnSubFinish7710102")
end

function Quest77101:OnSubStart7710103(arg1)
    print("OnSubStart7710103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710103, 0, 15, 0, npcs.Npc22279.id)
end

function Quest77101:OnSubFinish7710103(arg1)
    print("OnSubFinish7710103")
    this:SafeDestroyQuestNpc(npcs.Npc22279.alias, 3)
end

function Quest77101:OnSubStart7710104(arg1)
    print("OnSubStart7710104")
    actorMgr:CreateActorWithPos("Q7710104Trigger", "Actor/Gadget/Q7710104Trigger", 70900002, 0, points._Q7710104TriggerPoint_.pos, points._Q7710104TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710104(arg1)
    print("OnSubFinish7710104")
end

function Quest77101:OnSubStart7710105(arg1)
    print("OnSubStart7710105")
    actorMgr:CreateActorWithPos("Q7710105Trigger", "Actor/Gadget/Q7710105Trigger", 70900002, 0, points._Q7710105TriggerPoint_.pos, points._Q7710105TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710105(arg1)
    print("OnSubFinish7710105")
end

function Quest77101:OnSubStart7710106(arg1)
    print("OnSubStart7710106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710106, 0, 6, 0, npcs.Npc22280.id)
end

function Quest77101:OnSubFinish7710106(arg1)
    print("OnSubFinish7710106")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

function Quest77101:OnSubStart7710126(arg1)
    print("OnSubStart7710126")
    actorMgr:CreateActorWithPos("Q7710126Trigger", "Actor/Gadget/Q7710126Trigger", 70900002, 0, points._Q7710126TriggerPoint_.pos, points._Q7710126TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710126(arg1)
    print("OnSubFinish7710126")
end

function Quest77101:OnSubStart7710108(arg1)
    print("OnSubStart7710108")
    actorMgr:CreateActorWithPos("Q7710108igger", "Actor/Gadget/Q7710108igger", 70900002, 0, points._Q7710108iggerPoint_.pos, points._Q7710108iggerPoint_.rot, true, false, 3, nil, 0, 77101)
end

function Quest77101:OnSubFinish7710108(arg1)
    print("OnSubFinish7710108")
end

function Quest77101:OnSubStart7710109(arg1)
    print("OnSubStart7710109")
end

function Quest77101:OnSubFinish7710109(arg1)
    print("OnSubFinish7710109")
end

function Quest77101:OnSubStart7710127(arg1)
    print("OnSubStart7710127")
end

function Quest77101:OnSubFinish7710127(arg1)
    print("OnSubFinish7710127")
end

function Quest77101:OnSubStart7710137(arg1)
    print("OnSubStart7710137")
    actorMgr:CreateActorWithPos("Q7710137Trigger", "Actor/Gadget/Q7710137Trigger", 70900002, 0, points._Q7710137TriggerPoint_.pos, points._Q7710137TriggerPoint_.rot, true, false, 3, nil, 0, 77101)
end

function Quest77101:OnSubFinish7710137(arg1)
    print("OnSubFinish7710137")
end

function Quest77101:OnSubStart7710125(arg1)
    print("OnSubStart7710125")
end

function Quest77101:OnSubFinish7710125(arg1)
    print("OnSubFinish7710125")
end

function Quest77101:OnSubStart7710110(arg1)
    print("OnSubStart7710110")
    actorMgr:CreateActorWithPos("Q7710110Trigger", "Actor/Gadget/Q7710110Trigger", 70900002, 0, points._Q7710110TriggerPoint_.pos, points._Q7710110TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710110(arg1)
    print("OnSubFinish7710110")
end

function Quest77101:OnSubStart7710111(arg1)
    print("OnSubStart7710111")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710111, 0, 8, 1, npcs.Npc22280.id)
    actorMgr:CreateActorWithPos("Q7710111Trigger", "Actor/Gadget/Q7710111Trigger", 70900002, 0, points._Q7710111TriggerPoint_.pos, points._Q7710111TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710111(arg1)
    print("OnSubFinish7710111")
end

function Quest77101:OnSubStart7710112(arg1)
    print("OnSubStart7710112")
    actorMgr:CreateActorWithPos("Q7710112Trigger", "Actor/Gadget/Q7710112Trigger", 70900002, 0, points._Q7710112TriggerPoint_.pos, points._Q7710112TriggerPoint_.rot, true, false, 3, nil, 0, 77101)
end

function Quest77101:OnSubFinish7710112(arg1)
    print("OnSubFinish7710112")
    this:ActorDestroy("Q7710112Trigger", 77101)
end

function Quest77101:OnSubStart7710113(arg1)
    print("OnSubStart7710113")
end

function Quest77101:OnSubFinish7710113(arg1)
    print("OnSubFinish7710113")
end

function Quest77101:OnSubFailed7710113(arg1)
    print("OnSubFailed7710113")
    this:RecycleAllRes()
end

function Quest77101:OnSubStart7710114(arg1)
    print("OnSubStart7710114")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710114, 0, 20, 1, npcs.Npc22288.id)
end

function Quest77101:OnSubFinish7710114(arg1)
    print("OnSubFinish7710114")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22288.alias)
end

function Quest77101:OnSubStart7710115(arg1)
    print("OnSubStart7710115")
    actorMgr:CreateActorWithPos("Q7710115Trigger", "Actor/Gadget/Q7710115Trigger", 70900002, 0, points._Q7710115TriggerPoint_.pos, points._Q7710115TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77101:OnSubFinish7710115(arg1)
    print("OnSubFinish7710115")
end

function Quest77101:OnSubStart7710116(arg1)
    print("OnSubStart7710116")
end

function Quest77101:OnSubFinish7710116(arg1)
    print("OnSubFinish7710116")
end

function Quest77101:OnSubStart7710117(arg1)
    print("OnSubStart7710117")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710117, 0, 20, 1, npcs.Npc22280.id)
end

function Quest77101:OnSubFinish7710117(arg1)
    print("OnSubFinish7710117")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

return Quest77101
