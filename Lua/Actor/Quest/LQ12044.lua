require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12044 = class("Quest12044", QuestActorProxy)
Quest12044.defaultAlias = "Quest12044"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest12044:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest12044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204401"] = self.OnSubStart1204401,
        ["1204402"] = self.OnSubStart1204402,
        ["1204403"] = self.OnSubStart1204403,
        ["1204408"] = self.OnSubStart1204408,
        ["1204409"] = self.OnSubStart1204409,
        ["1204404"] = self.OnSubStart1204404,
        ["1204405"] = self.OnSubStart1204405,
        ["1204406"] = self.OnSubStart1204406,
        ["1204407"] = self.OnSubStart1204407
    }
end

function Quest12044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204401"] = self.OnSubFinish1204401,
        ["1204402"] = self.OnSubFinish1204402,
        ["1204403"] = self.OnSubFinish1204403,
        ["1204408"] = self.OnSubFinish1204408,
        ["1204409"] = self.OnSubFinish1204409,
        ["1204404"] = self.OnSubFinish1204404,
        ["1204405"] = self.OnSubFinish1204405,
        ["1204406"] = self.OnSubFinish1204406,
        ["1204407"] = self.OnSubFinish1204407
    }
end

function Quest12044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12044:Start()
    print("Start")
end

function Quest12044:OnDestroy()
    print("OnDestroy")
end

function Quest12044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12044:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1204403Tigger")
end

function Quest12044:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest12044:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest12044:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest12044:OnSubStart1204401(arg1)
    print("OnSubStart1204401")
    actorUtils.FinishQuestID(false, 1204401)
end

function Quest12044:OnSubFinish1204401(arg1)
    print("OnSubFinish1204401")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1204401, nil)
    end)
end

function Quest12044:OnSubStart1204402(arg1)
    print("OnSubStart1204402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc15170.id, 0, 1204402, 20, true)
end

function Quest12044:OnSubFinish1204402(arg1)
    print("OnSubFinish1204402")
    this:ClearNarratorTask()
end

function Quest12044:OnSubStart1204403(arg1)
    print("OnSubStart1204403")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15170.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc15170.alias, 12044)
        this:NpcWalkToRouteTask(questNpcActor, datas.RoutePointsData_01, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc15170.alias, 12044)
            questNpcActor:SyncPos(1)
            questNpcActor:StandbyNoResume()
        end, nil, function(arg1)
            print("resume")
        end, nil)
    end)

    actorMgr:CreateActorWithPos("Q1204403Tigger", "Actor/Gadget/Q1204403Tigger", 70900002, 0, points._Q1204403TiggerPoint_.pos, points._Q1204403TiggerPoint_.rot, true, false, 3)
end

function Quest12044:OnSubFinish1204403(arg1)
    print("OnSubFinish1204403")
end

function Quest12044:OnSubStart1204408(arg1)
    print("OnSubStart1204408")
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204408, 0, 15, 0, npcs.Npc15029.id)
end

function Quest12044:OnSubFinish1204408(arg1)
    print("OnSubFinish1204408")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 3)
end

function Quest12044:OnSubStart1204409(arg1)
    print("OnSubStart1204409")
end

function Quest12044:OnSubFinish1204409(arg1)
    print("OnSubFinish1204409")
end

function Quest12044:OnSubStart1204404(arg1)
    print("OnSubStart1204404")
end

function Quest12044:OnSubFinish1204404(arg1)
    print("OnSubFinish1204404")
end

function Quest12044:OnSubStart1204405(arg1)
    print("OnSubStart1204405")
end

function Quest12044:OnSubFinish1204405(arg1)
    print("OnSubFinish1204405")
end

function Quest12044:OnSubStart1204406(arg1)
    print("OnSubStart1204406")
end

function Quest12044:OnSubFinish1204406(arg1)
    print("OnSubFinish1204406")
end

function Quest12044:OnSubStart1204407(arg1)
    print("OnSubStart1204407")
end

function Quest12044:OnSubFinish1204407(arg1)
    print("OnSubFinish1204407")
end

return Quest12044
