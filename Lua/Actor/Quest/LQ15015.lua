require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15015 = class("Quest15015", QuestActorProxy)
Quest15015.defaultAlias = "Quest15015"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501504"] = self.OnSubStart1501504,
        ["1501507"] = self.OnSubStart1501507,
        ["1501508"] = self.OnSubStart1501508,
        ["1501501"] = self.OnSubStart1501501,
        ["1501509"] = self.OnSubStart1501509,
        ["1501505"] = self.OnSubStart1501505,
        ["1501506"] = self.OnSubStart1501506,
        ["1501502"] = self.OnSubStart1501502,
        ["1501503"] = self.OnSubStart1501503
    }
end

function Quest15015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501504"] = self.OnSubFinish1501504,
        ["1501507"] = self.OnSubFinish1501507,
        ["1501508"] = self.OnSubFinish1501508,
        ["1501501"] = self.OnSubFinish1501501,
        ["1501509"] = self.OnSubFinish1501509,
        ["1501505"] = self.OnSubFinish1501505,
        ["1501506"] = self.OnSubFinish1501506,
        ["1501502"] = self.OnSubFinish1501502,
        ["1501503"] = self.OnSubFinish1501503
    }
end

function Quest15015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1501507"] = self.OnSubFailed1501507,
        ["1501508"] = self.OnSubFailed1501508,
        ["1501501"] = self.OnSubFailed1501501
    }
end

function Quest15015:Start()
    print("Start")
end

function Quest15015:OnDestroy()
    print("OnDestroy")
end

function Quest15015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15015:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15015:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15015:OnSubStart1501504(arg1)
    print("OnSubStart1501504")
end

function Quest15015:OnSubFinish1501504(arg1)
    print("OnSubFinish1501504")
end

function Quest15015:OnSubStart1501507(arg1)
    print("OnSubStart1501507")
    this:CreateQuestNpc(arg1, npcs.Npc14310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14311.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14705.id, 0, false, 0)
    actorMgr:CreateActorWithPos("tigger1501507", "Actor/Gadget/tigger1501507", 70900002, 0, points._tigger1501507Point_.pos, points._tigger1501507Point_.rot, true, false, 20234)
end

function Quest15015:OnSubFinish1501507(arg1)
    print("OnSubFinish1501507")
    this:SafeDestroyQuestNpc(npcs.Npc14705.alias, 20234)
end

function Quest15015:OnSubFailed1501507(arg1)
    print("OnSubFailed1501507")
    this:ActorDestroy("tigger1501507")
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14311.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14705.alias, 3)
end

function Quest15015:OnSubStart1501508(arg1)
    print("OnSubStart1501508")
    actorMgr:CreateActorWithPos("tigger1501508", "Actor/Gadget/tigger1501508", 70900002, 0, points._tigger1501508Point_.pos, points._tigger1501508Point_.rot, true, false, 20234)
end

function Quest15015:OnSubFinish1501508(arg1)
    print("OnSubFinish1501508")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData, nil, nil, nil)
end

function Quest15015:OnSubFailed1501508(arg1)
    print("OnSubFailed1501508")
    this:ActorDestroy("tigger1501508")
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14311.alias, 3)
end

function Quest15015:OnSubStart1501501(arg1)
    print("OnSubStart1501501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 30, 1501501)
end

function Quest15015:OnSubFinish1501501(arg1)
    print("OnSubFinish1501501")
    this:SafeDestroyQuestNpc(npcs.Npc14311.alias, 20234)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20234)
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 20234)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest15015:OnSubFailed1501501(arg1)
    print("OnSubFailed1501501")
    this:SafeDestroyQuestNpc(npcs.Npc14311.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:DestroyNpcTrigger("Q1501501N1095Trigger")
end

function Quest15015:OnSubStart1501509(arg1)
    print("OnSubStart1501509")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501509, 0, 15, 3, npcs.Npc1095.id)
end

function Quest15015:OnSubFinish1501509(arg1)
    print("OnSubFinish1501509")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15015:OnSubStart1501505(arg1)
    print("OnSubStart1501505")
    actorMgr:CreateActorWithPos("tigger1501505", "Actor/Gadget/tigger1501505", 70900002, 0, points._tigger1501505Point_.pos, points._tigger1501505Point_.rot, true, false, 3)
end

function Quest15015:OnSubFinish1501505(arg1)
    print("OnSubFinish1501505")
end

function Quest15015:OnSubStart1501506(arg1)
    print("OnSubStart1501506")
    actorMgr:CreateActorWithPos("tigger1501506", "Actor/Gadget/tigger1501506", 70900002, 0, points._tigger1501506Point_.pos, points._tigger1501506Point_.rot, true, false, 3)
end

function Quest15015:OnSubFinish1501506(arg1)
    print("OnSubFinish1501506")
end

function Quest15015:OnSubStart1501502(arg1)
    print("OnSubStart1501502")
end

function Quest15015:OnSubFinish1501502(arg1)
    print("OnSubFinish1501502")
end

function Quest15015:OnSubStart1501503(arg1)
    print("OnSubStart1501503")
end

function Quest15015:OnSubFinish1501503(arg1)
    print("OnSubFinish1501503")
end

return Quest15015
