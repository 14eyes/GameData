require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75087 = class("Quest75087", QuestActorProxy)
Quest75087.defaultAlias = "Quest75087"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75087:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7508701"] = self.OnSubStart7508701,
        ["7508708"] = self.OnSubStart7508708,
        ["7508709"] = self.OnSubStart7508709,
        ["7508702"] = self.OnSubStart7508702,
        ["7508703"] = self.OnSubStart7508703,
        ["7508704"] = self.OnSubStart7508704,
        ["7508705"] = self.OnSubStart7508705,
        ["7508706"] = self.OnSubStart7508706,
        ["7508707"] = self.OnSubStart7508707
    }
end

function Quest75087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7508701"] = self.OnSubFinish7508701,
        ["7508708"] = self.OnSubFinish7508708,
        ["7508709"] = self.OnSubFinish7508709,
        ["7508702"] = self.OnSubFinish7508702,
        ["7508703"] = self.OnSubFinish7508703,
        ["7508704"] = self.OnSubFinish7508704,
        ["7508705"] = self.OnSubFinish7508705,
        ["7508706"] = self.OnSubFinish7508706,
        ["7508707"] = self.OnSubFinish7508707
    }
end

function Quest75087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7508702"] = self.OnSubFailed7508702}
end

function Quest75087:Start()
    print("Start")
end

function Quest75087:OnDestroy()
    print("OnDestroy")
end

function Quest75087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75087:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75087:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75087:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75087:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75087:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75087:OnSubStart7508701(arg1)
    print("OnSubStart7508701")
    this:CreateQuestNpc(arg1, npcs.Npc21760.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Trigger7508701", "Actor/Gadget/Trigger7508701", 70900002, 0, points._Trigger7508701Point_.pos, points._Trigger7508701Point_.rot, true, false, 3)
end

function Quest75087:OnSubFinish7508701(arg1)
    print("OnSubFinish7508701")
    this:QuestNarratorTask(datas.NarratorWithId_75087018, nil)
end

function Quest75087:OnSubStart7508708(arg1)
    print("OnSubStart7508708")
    actorMgr:CreateActorWithPos("Trigger7508708", "Actor/Gadget/Trigger7508708", 70900002, 0, points._Trigger7508708Point_.pos, points._Trigger7508708Point_.rot, true, false, 3)
end

function Quest75087:OnSubFinish7508708(arg1)
    print("OnSubFinish7508708")
    this:ActorDestroy("Trigger7508708")
end

function Quest75087:OnSubStart7508709(arg1)
    print("OnSubStart7508709")
    this:NpcCreateWithActionSafeCall(0, npcs.Paimon.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc21760.id, 0, 10, 7508709)
end

function Quest75087:OnSubFinish7508709(arg1)
    print("OnSubFinish7508709")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest75087:OnSubStart7508702(arg1)
    print("OnSubStart7508702")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21773.id, arg1)
    actorMgr:CreateActorWithPos("Trigger7508702", "Actor/Gadget/Trigger7508702", 70900002, 0, points._Trigger7508702Point_.pos, points._Trigger7508702Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Trigger7508702finish1", "Actor/Gadget/Trigger7508702finish1", 70900002, 0, points._Trigger7508702finish1Point_.pos, points._Trigger7508702finish1Point_.rot, true, false, 3)
end

function Quest75087:OnSubFinish7508702(arg1)
    print("OnSubFinish7508702")
    this:ActorDestroy("Trigger7508702")
    this:QuestNarratorTask(datas.NarratorWithId_75087029, nil)
    this:ActorDestroy("Trigger7508702finish1")
    this:QuestNarratorTask(datas.NarratorWithId_75087028, nil)
end

function Quest75087:OnSubFailed7508702(arg1)
    print("OnSubFailed7508702")
    this:TransmitPlayerByQuestId(7508702, 1, nil, nil, nil)
end

function Quest75087:OnSubStart7508703(arg1)
    print("OnSubStart7508703")
    this:NpcCreateWithNpcTrigger(npcs.Npc21773.id, 0, 5, 7508703)
    this:GetQuestNpcActor(npcs.Npc21773.alias, 75087):DoFreeStyle(1011, true, nil, true, true, false, false)
end

function Quest75087:OnSubFinish7508703(arg1)
    print("OnSubFinish7508703")
    this:SafeDestroyQuestNpc(npcs.Npc21773.alias, 3)
end

function Quest75087:OnSubStart7508704(arg1)
    print("OnSubStart7508704")
    actorMgr:CreateActorWithPos("Trigger7508704", "Actor/Gadget/Trigger7508704", 70900002, 0, points._Trigger7508704Point_.pos, points._Trigger7508704Point_.rot, true, false, 3)
end

function Quest75087:OnSubFinish7508704(arg1)
    print("OnSubFinish7508704")
    this:SafeDestroyQuestNpc(npcs.Npc21760.alias, 3)
    this:ActorDestroy("Trigger7508704")
end

function Quest75087:OnSubStart7508705(arg1)
    print("OnSubStart7508705")
    this:NpcCreateWithNpcTrigger(npcs.Npc21607.id, 0, 20, 7508705)
    this:CreateQuestNpc(arg1, npcs.Npc21790.id, 0, false, 0)
end

function Quest75087:OnSubFinish7508705(arg1)
    print("OnSubFinish7508705")
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21790.alias, 3)
end

function Quest75087:OnSubStart7508706(arg1)
    print("OnSubStart7508706")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6178.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6171.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6168.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6172.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6173.id, arg1)
    actorMgr:CreateActorWithPos("Trigger", "Actor/Gadget/Trigger", 70900002, 0, points._TriggerPoint_.pos, points._TriggerPoint_.rot, true, false, 3)
end

function Quest75087:OnSubFinish7508706(arg1)
    print("OnSubFinish7508706")
end

function Quest75087:OnSubStart7508707(arg1)
    print("OnSubStart7508707")
    this:NpcCreateWithNpcTrigger(npcs.Npc6173.id, 0, 15, 7508707)
end

function Quest75087:OnSubFinish7508707(arg1)
    print("OnSubFinish7508707")
    this:SafeDestroyQuestNpc(npcs.Npc6178.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6173.alias, 3)
end

return Quest75087
