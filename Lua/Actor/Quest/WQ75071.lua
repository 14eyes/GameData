require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75071 = class("Quest75071", QuestActorProxy)
Quest75071.defaultAlias = "Quest75071"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75071:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7507110"] = self.OnSubStart7507110,
        ["7507116"] = self.OnSubStart7507116,
        ["7507114"] = self.OnSubStart7507114,
        ["7507111"] = self.OnSubStart7507111,
        ["7507115"] = self.OnSubStart7507115,
        ["7507112"] = self.OnSubStart7507112,
        ["7507113"] = self.OnSubStart7507113
    }
end

function Quest75071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7507110"] = self.OnSubFinish7507110,
        ["7507116"] = self.OnSubFinish7507116,
        ["7507114"] = self.OnSubFinish7507114,
        ["7507111"] = self.OnSubFinish7507111,
        ["7507115"] = self.OnSubFinish7507115,
        ["7507112"] = self.OnSubFinish7507112,
        ["7507113"] = self.OnSubFinish7507113
    }
end

function Quest75071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7507114"] = self.OnSubFailed7507114}
end

function Quest75071:Start()
    print("Start")
end

function Quest75071:OnDestroy()
    print("OnDestroy")
end

function Quest75071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75071:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75071:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75071:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75071:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75071:OnSubStart7507110(arg1)
    print("OnSubStart7507110")
    this:NpcCreateWithNpcTrigger(npcs.Npc21586Data.id, 7507110, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21774Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21774Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21775Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21775Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest75071:OnSubFinish7507110(arg1)
    print("OnSubFinish7507110")
end

function Quest75071:OnSubStart7507116(arg1)
    print("OnSubStart7507116")
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21774Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21775Data.id, 0, false, 0)
end

function Quest75071:OnSubFinish7507116(arg1)
    print("OnSubFinish7507116")
    this:ShowBlackScreenWithDialogText(0.1, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75071:OnSubStart7507114(arg1)
    print("OnSubStart7507114")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21774Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21775Data.id, 0, false, 0)
end

function Quest75071:OnSubFinish7507114(arg1)
    print("OnSubFinish7507114")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21460Data.alias, 0)
    this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData_02)
end

function Quest75071:OnSubFailed7507114(arg1)
    print("OnSubFailed7507114")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 750719901, false, true)
end

function Quest75071:OnSubStart7507111(arg1)
    print("OnSubStart7507111")
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21621Data.id, 0, false, 0)
    this:CallDelayByQuest("", 4, function(arg1)
        this:RequestInteraction(npcs.Npc21586Data.alias, "", true)
    end)
end

function Quest75071:OnSubFinish7507111(arg1)
    print("OnSubFinish7507111")
end

function Quest75071:OnSubStart7507115(arg1)
    print("OnSubStart7507115")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21460Data.alias, 0)
    this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData)
    actorMgr:CreateActorWithPos("Q75071Trigger", "Actor/Gadget/Q75071Trigger", 70900002, 0, {x = -1057.92, y = 202.499, z = 9688.037}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CallDelayByQuest("", 3, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21586Data.alias, 0)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData_01)
    end)
end

function Quest75071:OnSubFinish7507115(arg1)
    print("OnSubFinish7507115")
    this:SafeDestroyQuestNpc(npcs.Npc21460Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21774Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21775Data.alias, 3)
end

function Quest75071:OnSubStart7507112(arg1)
    print("OnSubStart7507112")
end

function Quest75071:OnSubFinish7507112(arg1)
    print("OnSubFinish7507112")
end

function Quest75071:OnSubStart7507113(arg1)
    print("OnSubStart7507113")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21460Data.id, 7507113, 0, 30)
    actorMgr:CreateActorWithPos("Q75071Trigger1", "Actor/Gadget/Q75071Trigger1", 70900002, 0, {x = -1047.361, y = 200.556, z = 9680.991}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75071:OnSubFinish7507113(arg1)
    print("OnSubFinish7507113")
    this:SafeDestroyQuestNpc(npcs.Npc21586Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21621Data.alias)
    this:ActorDestroy("Q75071Trigger1")
end

return Quest75071
