require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73231 = class("Quest73231", QuestActorProxy)
Quest73231.defaultAlias = "Quest73231"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73231:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73231:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323114"] = self.OnSubStart7323114,
        ["7323101"] = self.OnSubStart7323101,
        ["7323116"] = self.OnSubStart7323116,
        ["7323118"] = self.OnSubStart7323118,
        ["7323119"] = self.OnSubStart7323119,
        ["7323120"] = self.OnSubStart7323120,
        ["7323102"] = self.OnSubStart7323102,
        ["7323103"] = self.OnSubStart7323103,
        ["7323104"] = self.OnSubStart7323104,
        ["7323105"] = self.OnSubStart7323105,
        ["7323108"] = self.OnSubStart7323108,
        ["7323109"] = self.OnSubStart7323109,
        ["7323111"] = self.OnSubStart7323111,
        ["7323115"] = self.OnSubStart7323115,
        ["7323112"] = self.OnSubStart7323112
    }
end

function Quest73231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323114"] = self.OnSubFinish7323114,
        ["7323101"] = self.OnSubFinish7323101,
        ["7323116"] = self.OnSubFinish7323116,
        ["7323118"] = self.OnSubFinish7323118,
        ["7323119"] = self.OnSubFinish7323119,
        ["7323120"] = self.OnSubFinish7323120,
        ["7323102"] = self.OnSubFinish7323102,
        ["7323103"] = self.OnSubFinish7323103,
        ["7323104"] = self.OnSubFinish7323104,
        ["7323105"] = self.OnSubFinish7323105,
        ["7323108"] = self.OnSubFinish7323108,
        ["7323109"] = self.OnSubFinish7323109,
        ["7323111"] = self.OnSubFinish7323111,
        ["7323115"] = self.OnSubFinish7323115,
        ["7323112"] = self.OnSubFinish7323112
    }
end

function Quest73231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73231:Start()
    print("Start")
end

function Quest73231:OnDestroy()
    print("OnDestroy")
end

function Quest73231:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73231:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73231:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73231:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73231:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest73231:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73231:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73231:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:TransmitPlayerWithTextByQuestId(7323111, 1, datas.TextmapId, 3)
    end
end

function Quest73231:OnSubStart7323114(arg1)
    print("OnSubStart7323114")
    actorMgr:CreateActorWithPos("Q73231Trigger", "Actor/Gadget/Q73231Trigger", 70900002, 0, points.TPos_Q73231Trigger.pos, points.TPos_Q73231Trigger.rot, true, false, 3)
end

function Quest73231:OnSubFinish7323114(arg1)
    print("OnSubFinish7323114")
end

function Quest73231:OnSubStart7323101(arg1)
    print("OnSubStart7323101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20987Data.id, 7323101, 1, 20, 1)
end

function Quest73231:OnSubFinish7323101(arg1)
    print("OnSubFinish7323101")
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
end

function Quest73231:OnSubStart7323116(arg1)
    print("OnSubStart7323116")
end

function Quest73231:OnSubFinish7323116(arg1)
    print("OnSubFinish7323116")
end

function Quest73231:OnSubStart7323118(arg1)
    print("OnSubStart7323118")
end

function Quest73231:OnSubFinish7323118(arg1)
    print("OnSubFinish7323118")
end

function Quest73231:OnSubStart7323119(arg1)
    print("OnSubStart7323119")
end

function Quest73231:OnSubFinish7323119(arg1)
    print("OnSubFinish7323119")
end

function Quest73231:OnSubStart7323120(arg1)
    print("OnSubStart7323120")
end

function Quest73231:OnSubFinish7323120(arg1)
    print("OnSubFinish7323120")
end

function Quest73231:OnSubStart7323102(arg1)
    print("OnSubStart7323102")
end

function Quest73231:OnSubFinish7323102(arg1)
    print("OnSubFinish7323102")
end

function Quest73231:OnSubStart7323103(arg1)
    print("OnSubStart7323103")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323103Trigger", "Actor/Gadget/Q7323103Trigger", 70900002, 0, points.TPos_Q7323103Trigger.pos, points.TPos_Q7323103Trigger.rot, true, false, 3)
end

function Quest73231:OnSubFinish7323103(arg1)
    print("OnSubFinish7323103")
end

function Quest73231:OnSubStart7323104(arg1)
    print("OnSubStart7323104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20987Data.id, 7323104, 1, 30, 1)
end

function Quest73231:OnSubFinish7323104(arg1)
    print("OnSubFinish7323104")
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
end

function Quest73231:OnSubStart7323105(arg1)
    print("OnSubStart7323105")
end

function Quest73231:OnSubFinish7323105(arg1)
    print("OnSubFinish7323105")
end

function Quest73231:OnSubStart7323108(arg1)
    print("OnSubStart7323108")
end

function Quest73231:OnSubFinish7323108(arg1)
    print("OnSubFinish7323108")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.protectTxt, nil, 73231)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc20887Data.alias, 3)
end

function Quest73231:OnSubStart7323109(arg1)
    print("OnSubStart7323109")
end

function Quest73231:OnSubFinish7323109(arg1)
    print("OnSubFinish7323109")
    this:ShowBlackScreen(0.2, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest73231:OnSubStart7323111(arg1)
    print("OnSubStart7323111")
    this:NpcCreateWithTriggerBlack(npcs.Npc20887Data.id, 7323111, 1)
end

function Quest73231:OnSubFinish7323111(arg1)
    print("OnSubFinish7323111")
    this:SafeDestroyQuestNpc(npcs.Npc20887Data.alias, 3)
end

function Quest73231:OnSubStart7323115(arg1)
    print("OnSubStart7323115")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20887Data.id, 1)
    actorMgr:CreateActorWithPos("Q73231Trigger1", "Actor/Gadget/Q73231Trigger1", 70900002, 0, points.TPos_Q73231Trigger1.pos, points.TPos_Q73231Trigger1.rot, true, false, 3)
end

function Quest73231:OnSubFinish7323115(arg1)
    print("OnSubFinish7323115")
end

function Quest73231:OnSubStart7323112(arg1)
    print("OnSubStart7323112")
end

function Quest73231:OnSubFinish7323112(arg1)
    print("OnSubFinish7323112")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20887Data.alias)
end

function Quest73231:OnSubStart7323106(arg1)
    print("OnSubStart7323106")
end

function Quest73231:OnSubFinish7323106(arg1)
    print("OnSubFinish7323106")
end

function Quest73231:OnSubStart7323107(arg1)
    print("OnSubStart7323107")
end

function Quest73231:OnSubFinish7323107(arg1)
    print("OnSubFinish7323107")
end

function Quest73231:OnSubStart7323110(arg1)
    print("OnSubStart7323110")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc20887Data.alias, 73231)
    this:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData2, function(arg1)
        actorMgr:GetActor("73231").FinishQuestID(false, 7323110)
    end)
end

function Quest73231:OnSubFinish7323110(arg1)
    print("OnSubFinish7323110")
end

function Quest73231:OnSubStart7323113(arg1)
    print("OnSubStart7323113")
end

function Quest73231:OnSubFinish7323113(arg1)
    print("OnSubFinish7323113")
end

return Quest73231
