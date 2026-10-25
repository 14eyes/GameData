require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75086 = class("Quest75086", QuestActorProxy)
Quest75086.defaultAlias = "Quest75086"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75086:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75086:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7508608"] = self.OnSubStart7508608,
        ["7508612"] = self.OnSubStart7508612,
        ["7508614"] = self.OnSubStart7508614,
        ["7508602"] = self.OnSubStart7508602,
        ["7508603"] = self.OnSubStart7508603,
        ["7508601"] = self.OnSubStart7508601,
        ["7508604"] = self.OnSubStart7508604,
        ["7508615"] = self.OnSubStart7508615,
        ["7508616"] = self.OnSubStart7508616,
        ["7508605"] = self.OnSubStart7508605,
        ["7508606"] = self.OnSubStart7508606,
        ["7508609"] = self.OnSubStart7508609,
        ["7508610"] = self.OnSubStart7508610,
        ["7508611"] = self.OnSubStart7508611
    }
end

function Quest75086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7508608"] = self.OnSubFinish7508608,
        ["7508612"] = self.OnSubFinish7508612,
        ["7508614"] = self.OnSubFinish7508614,
        ["7508602"] = self.OnSubFinish7508602,
        ["7508603"] = self.OnSubFinish7508603,
        ["7508601"] = self.OnSubFinish7508601,
        ["7508604"] = self.OnSubFinish7508604,
        ["7508615"] = self.OnSubFinish7508615,
        ["7508616"] = self.OnSubFinish7508616,
        ["7508605"] = self.OnSubFinish7508605,
        ["7508606"] = self.OnSubFinish7508606,
        ["7508609"] = self.OnSubFinish7508609,
        ["7508610"] = self.OnSubFinish7508610,
        ["7508611"] = self.OnSubFinish7508611
    }
end

function Quest75086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7508608"] = self.OnSubFailed7508608,
        ["7508612"] = self.OnSubFailed7508612,
        ["7508614"] = self.OnSubFailed7508614,
        ["7508604"] = self.OnSubFailed7508604
    }
end

function Quest75086:Start()
    print("Start")
end

function Quest75086:OnDestroy()
    print("OnDestroy")
end

function Quest75086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75086:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6274.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21758.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21759.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21760.alias, 3)
    this:ActorDestroy("Trigger7508601")
    this:ActorDestroy("Trigger7508608")
    this:ActorDestroy("Trigger7508609")
    this:ActorDestroy("Trigger7508611")
    this:ActorDestroy("Trigger7508602")
    this:ActorDestroy("Trigger7508605")
end

function Quest75086:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7508603)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest75086:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75086:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75086:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75086:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest75086:OnSubStart7508608(arg1)
    print("OnSubStart7508608")
    this:NpcCreateWithNpcTrigger(npcs.Npc21758.id, 0, 8, 7508608)
    this:CreateQuestNpc(arg1, npcs.Npc6173.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6168.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6171.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6285.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6178.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6172.id, 0, false, 0)
    this:CreateQuestNpcWithTriggerBlackEx("Trigger7508608", 7508608, npcs.Npc21758.id, 0, 20, 0.5, 1, 0.5, 2)
end

function Quest75086:OnSubFinish7508608(arg1)
    print("OnSubFinish7508608")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508608")
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
end

function Quest75086:OnSubFailed7508608(arg1)
    print("OnSubFailed7508608")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508608")
end

function Quest75086:OnSubStart7508612(arg1)
    print("OnSubStart7508612")
    this:NpcCreateWithNpcTrigger(npcs.Npc21759.id, 0, 8, 7508612)
    this:CreateQuestNpcWithTriggerBlackEx("Trigger7508612", 7508612, npcs.Npc21759.id, 0, 15, 0.5, 1, 0.5, 2)
end

function Quest75086:OnSubFinish7508612(arg1)
    print("OnSubFinish7508612")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508612")
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
end

function Quest75086:OnSubFailed7508612(arg1)
    print("OnSubFailed7508612")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508612")
end

function Quest75086:OnSubStart7508614(arg1)
    print("OnSubStart7508614")
    this:NpcCreateWithNpcTrigger(npcs.Npc21760.id, 0, 10, 7508614)
    this:CreateQuestNpcWithTriggerBlackEx("Trigger7508614", 7508614, npcs.Npc21760.id, 0, 15, 0.5, 1, 0.5, 2)
end

function Quest75086:OnSubFinish7508614(arg1)
    print("OnSubFinish7508614")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508614")
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
end

function Quest75086:OnSubFailed7508614(arg1)
    print("OnSubFailed7508614")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Trigger7508614")
end

function Quest75086:OnSubStart7508602(arg1)
    print("OnSubStart7508602")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6172.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc6274.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6275.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Trigger7508602", "Actor/Gadget/Trigger7508602", 70900002, 0, points._Trigger7508602Point_.pos, points._Trigger7508602Point_.rot, true, false, 3)
end

function Quest75086:OnSubFinish7508602(arg1)
    print("OnSubFinish7508602")
    this:SafeDestroyQuestNpc(npcs.Npc6173.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6285.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6178.alias, 3)
end

function Quest75086:OnSubStart7508603(arg1)
    print("OnSubStart7508603")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6172.id, arg1)
end

function Quest75086:OnSubFinish7508603(arg1)
    print("OnSubFinish7508603")
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
end

function Quest75086:OnSubStart7508601(arg1)
    print("OnSubStart7508601")
end

function Quest75086:OnSubFinish7508601(arg1)
    print("OnSubFinish7508601")
end

function Quest75086:OnSubStart7508604(arg1)
    print("OnSubStart7508604")
end

function Quest75086:OnSubFinish7508604(arg1)
    print("OnSubFinish7508604")
end

function Quest75086:OnSubFailed7508604(arg1)
    print("OnSubFailed7508604")
    this:TransmitPlayerByQuestId(7508604, 2, nil, nil, nil)
end

function Quest75086:OnSubStart7508615(arg1)
    print("OnSubStart7508615")
    this:NpcCreateWithNpcTrigger(npcs.Npc6274.id, 0, 10, 7508615)
    this:CreateQuestNpcWithTrigger("Trigger7508615", 7508615, npcs.Npc6274.id, 0, 10, 2)
end

function Quest75086:OnSubFinish7508615(arg1)
    print("OnSubFinish7508615")
end

function Quest75086:OnSubStart7508616(arg1)
    print("OnSubStart7508616")
    actorMgr:CreateActorWithPos("Trigger7508616", "Actor/Gadget/Trigger7508616", 70900002, 0, points._Trigger7508616Point_.pos, points._Trigger7508616Point_.rot, true, false, 3)
end

function Quest75086:OnSubFinish7508616(arg1)
    print("OnSubFinish7508616")
    this:ActorDestroy("Trigger7508616")
end

function Quest75086:OnSubStart7508605(arg1)
    print("OnSubStart7508605")
    actorMgr:CreateActorWithPos("Trigger7508605", "Actor/Gadget/Trigger7508605", 70900002, 0, points._Trigger7508605Point_.pos, points._Trigger7508605Point_.rot, true, false, 3)
end

function Quest75086:OnSubFinish7508605(arg1)
    print("OnSubFinish7508605")
    this:SafeDestroyQuestNpc(npcs.Npc6274.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6275.alias, 3)
end

function Quest75086:OnSubStart7508606(arg1)
    print("OnSubStart7508606")
    this:NpcCreateWithNpcTrigger(npcs.Npc6171.id, 0, 10, 7508606)
end

function Quest75086:OnSubFinish7508606(arg1)
    print("OnSubFinish7508606")
end

function Quest75086:OnSubStart7508609(arg1)
    print("OnSubStart7508609")
    this:NpcCreateWithNpcTrigger(npcs.Npc21758.id, 0, 10, 7508609)
end

function Quest75086:OnSubFinish7508609(arg1)
    print("OnSubFinish7508609")
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21758.alias, 3)
    this:ActorDestroy("Trigger7508609")
end

function Quest75086:OnSubStart7508610(arg1)
    print("OnSubStart7508610")
end

function Quest75086:OnSubFinish7508610(arg1)
    print("OnSubFinish7508610")
end

function Quest75086:OnSubStart7508611(arg1)
    print("OnSubStart7508611")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21460.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc21759.id, 0, 10, 7508611)
end

function Quest75086:OnSubFinish7508611(arg1)
    print("OnSubFinish7508611")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21759.alias, 3)
    this:ActorDestroy("Trigger7508611")
end

return Quest75086
