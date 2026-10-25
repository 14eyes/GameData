require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40115 = class("Quest40115", QuestActorProxy)
Quest40115.defaultAlias = "Quest40115"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40115:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011518"] = self.OnSubStart4011518,
        ["4011501"] = self.OnSubStart4011501,
        ["4011509"] = self.OnSubStart4011509,
        ["4011520"] = self.OnSubStart4011520,
        ["4011502"] = self.OnSubStart4011502,
        ["4011503"] = self.OnSubStart4011503,
        ["4011517"] = self.OnSubStart4011517,
        ["4011504"] = self.OnSubStart4011504,
        ["4011519"] = self.OnSubStart4011519,
        ["4011505"] = self.OnSubStart4011505,
        ["4011506"] = self.OnSubStart4011506,
        ["4011507"] = self.OnSubStart4011507,
        ["4011508"] = self.OnSubStart4011508,
        ["4011511"] = self.OnSubStart4011511,
        ["4011512"] = self.OnSubStart4011512,
        ["4011513"] = self.OnSubStart4011513,
        ["4011516"] = self.OnSubStart4011516,
        ["4011514"] = self.OnSubStart4011514,
        ["4011515"] = self.OnSubStart4011515,
        ["4011510"] = self.OnSubStart4011510
    }
end

function Quest40115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011518"] = self.OnSubFinish4011518,
        ["4011501"] = self.OnSubFinish4011501,
        ["4011509"] = self.OnSubFinish4011509,
        ["4011520"] = self.OnSubFinish4011520,
        ["4011502"] = self.OnSubFinish4011502,
        ["4011503"] = self.OnSubFinish4011503,
        ["4011517"] = self.OnSubFinish4011517,
        ["4011504"] = self.OnSubFinish4011504,
        ["4011519"] = self.OnSubFinish4011519,
        ["4011505"] = self.OnSubFinish4011505,
        ["4011506"] = self.OnSubFinish4011506,
        ["4011507"] = self.OnSubFinish4011507,
        ["4011508"] = self.OnSubFinish4011508,
        ["4011511"] = self.OnSubFinish4011511,
        ["4011512"] = self.OnSubFinish4011512,
        ["4011513"] = self.OnSubFinish4011513,
        ["4011516"] = self.OnSubFinish4011516,
        ["4011514"] = self.OnSubFinish4011514,
        ["4011515"] = self.OnSubFinish4011515,
        ["4011510"] = self.OnSubFinish4011510
    }
end

function Quest40115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40115:Start()
    print("Start")
end

function Quest40115:OnDestroy()
    print("OnDestroy")
end

function Quest40115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40115:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13251Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13251Data.alias, 20183)
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 20183)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 20183)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    actorMgr:DestroyEntityActor("Q4011502Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011506Finish", 20183, false)
    actorMgr:DestroyEntityActor("Q4011510Finish", 20183, false)
    actorMgr:DestroyEntityActor("Q4011515Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011516CS", 10, false)
    actorMgr:DestroyEntityActor("Q4011514Talk", 10, false)
    this:ActorDestroy("Q4011509Finish")
    this:ActorDestroy("Q4011520Finish")
    this:ActorDestroy("Q4011501Talk")
    this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 10)
    this:UnCallDelayByQuest("4011515")
end

function Quest40115:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest40115:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40115:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40115:OnSubStart4011518(arg1)
    print("OnSubStart4011518")
end

function Quest40115:OnSubFinish4011518(arg1)
    print("OnSubFinish4011518")
end

function Quest40115:OnSubStart4011501(arg1)
    print("OnSubStart4011501")
    this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    actorMgr:CreateActorWithPos("Q4011501Talk", "Actor/Gadget/Q4011501Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011501_N13247").pos, sceneData:GetDummyPoint(10, "Q4011501_N13247").rot, true, false, 10)
end

function Quest40115:OnSubFinish4011501(arg1)
    print("OnSubFinish4011501")
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40115:OnSubStart4011509(arg1)
    print("OnSubStart4011509")
    actorMgr:CreateActorWithPos("Q4011509Finish", "Actor/Gadget/Q4011509Finish", 70900002, 0, points.TPos_Q4011509Finish.pos, points.TPos_Q4011509Finish.rot, true, false, 10)
end

function Quest40115:OnSubFinish4011509(arg1)
    print("OnSubFinish4011509")
end

function Quest40115:OnSubStart4011520(arg1)
    print("OnSubStart4011520")
    actorMgr:CreateActorWithPos("Q4011520Finish", "Actor/Gadget/Q4011520Finish", 70900002, 0, points.TPos_Q4011520Finish.pos, points.TPos_Q4011520Finish.rot, true, false, 10)
end

function Quest40115:OnSubFinish4011520(arg1)
    print("OnSubFinish4011520")
end

function Quest40115:OnSubStart4011502(arg1)
    print("OnSubStart4011502")
    this:CreateQuestNpc(arg1, npcs.Npc13251Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011502Finish", "Actor/Gadget/Q4011502Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011502_N13251").pos, sceneData:GetDummyPoint(10, "Q4011502_N13251").rot, true, false, 10)
end

function Quest40115:OnSubFinish4011502(arg1)
    print("OnSubFinish4011502")
end

function Quest40115:OnSubStart4011503(arg1)
    print("OnSubStart4011503")
    this:RequestInteraction(npcs.Npc13251Data.alias)
end

function Quest40115:OnSubFinish4011503(arg1)
    print("OnSubFinish4011503")
    this:SafeDestroyQuestNpc(npcs.Npc13251Data.alias, 10)
end

function Quest40115:OnSubStart4011517(arg1)
    print("OnSubStart4011517")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13251Data.id, 4011517, 0, 15, 1)
end

function Quest40115:OnSubFinish4011517(arg1)
    print("OnSubFinish4011517")
    this:SafeDestroyQuestNpc(npcs.Npc13251Data.alias, 10)
end

function Quest40115:OnSubStart4011504(arg1)
    print("OnSubStart4011504")
end

function Quest40115:OnSubFinish4011504(arg1)
    print("OnSubFinish4011504")
    globalActor:PlayerEnterDungeon(14, 2191, false, nil, 0)
end

function Quest40115:OnSubStart4011519(arg1)
    print("OnSubStart4011519")
end

function Quest40115:OnSubFinish4011519(arg1)
    print("OnSubFinish4011519")
end

function Quest40115:OnSubStart4011505(arg1)
    print("OnSubStart4011505")
    actorMgr:CreateActorWithPos("Q4011505Talk", "Actor/Gadget/Q4011505Talk", 70900002, 0, sceneData:GetDummyPoint(20183, "Q4011505_N1029").pos, sceneData:GetDummyPoint(20183, "Q4011505_N1029").rot, true, false, 20183)
end

function Quest40115:OnSubFinish4011505(arg1)
    print("OnSubFinish4011505")
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 20183)
end

function Quest40115:OnSubStart4011506(arg1)
    print("OnSubStart4011506")
    this:CreateQuestNpc(arg1, npcs.Npc13253Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011506Finish", "Actor/Gadget/Q4011506Finish", 70900002, 0, {x = 454.693, y = 17.132, z = 450.917}, {x = 0.0, y = 343.647, z = 0.0}, true, false, 20183)
    this:GetQuestNpcActor(npcs.Npc13253Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest40115:OnSubFinish4011506(arg1)
    print("OnSubFinish4011506")
end

function Quest40115:OnSubStart4011507(arg1)
    print("OnSubStart4011507")
    this:RequestInteraction(npcs.Npc13253Data.alias)
end

function Quest40115:OnSubFinish4011507(arg1)
    print("OnSubFinish4011507")
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 20183)
end

function Quest40115:OnSubStart4011508(arg1)
    print("OnSubStart4011508")
    actorMgr:CreateActorWithPos("Q4011510Finish", "Actor/Gadget/Q4011510Finish", 70900002, 0, {x = 407.731, y = 45.762, z = 486.308}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20183)
end

function Quest40115:OnSubFinish4011508(arg1)
    print("OnSubFinish4011508")
end

function Quest40115:OnSubStart4011511(arg1)
    print("OnSubStart4011511")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc13251Data.id, 1, npcs.Npc13251Data.alias)
end

function Quest40115:OnSubFinish4011511(arg1)
    print("OnSubFinish4011511")
    this:SafeDestroyQuestNpc(npcs.Npc13251Data.alias, 20183)
end

function Quest40115:OnSubStart4011512(arg1)
    print("OnSubStart4011512")
end

function Quest40115:OnSubFinish4011512(arg1)
    print("OnSubFinish4011512")
end

function Quest40115:OnSubStart4011513(arg1)
    print("OnSubStart4011513")
    this:PlayCutsceneIndex(4011513, function(arg1)
        actorUtils.FinishQuestID(false, 4011513)
    end, nil, nil, false)
end

function Quest40115:OnSubFinish4011513(arg1)
    print("OnSubFinish4011513")
    this:TransmitPlayerById(arg1, 1)
end

function Quest40115:OnSubStart4011516(arg1)
    print("OnSubStart4011516")
    actorMgr:CreateActorWithPos("Q4011516CS", "Actor/Gadget/Q4011516CS", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011514_N1029").pos, sceneData:GetDummyPoint(10, "Q4011514_N1029").rot, true, false, 10)
end

function Quest40115:OnSubFinish4011516(arg1)
    print("OnSubFinish4011516")
end

function Quest40115:OnSubStart4011514(arg1)
    print("OnSubStart4011514")
    actorMgr:CreateActorWithPos("Q4011514Talk", "Actor/Gadget/Q4011514Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011514_N1029").pos, sceneData:GetDummyPoint(10, "Q4011514_N1029").rot, true, false, 10)
end

function Quest40115:OnSubFinish4011514(arg1)
    print("OnSubFinish4011514")
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
end

function Quest40115:OnSubStart4011515(arg1)
    print("OnSubStart4011515")
    this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011515Finish", "Actor/Gadget/Q4011515Finish", 70900002, 0, points.TPos_Q4011515Finish.pos, points.TPos_Q4011515Finish.rot, true, false, 10)
end

function Quest40115:OnSubFinish4011515(arg1)
    print("OnSubFinish4011515")
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("4011515", 4.5, function(arg1)
            actorUtils.ShowContext("PenAdvMainPage")
        end)
    end)
end

function Quest40115:OnSubStart4011510(arg1)
    print("OnSubStart4011510")
    actorMgr:CreateActorWithPos("Q4011510Finish", "Actor/Gadget/Q4011510Finish", 70900002, 0, {x = 407.731, y = 45.762, z = 486.308}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20183)
end

function Quest40115:OnSubFinish4011510(arg1)
    print("OnSubFinish4011510")
end

return Quest40115
