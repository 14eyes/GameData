require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75024 = class("Quest75024", QuestActorProxy)
Quest75024.defaultAlias = "Quest75024"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75024:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502401"] = self.OnSubStart7502401,
        ["7502402"] = self.OnSubStart7502402,
        ["7502403"] = self.OnSubStart7502403,
        ["7502404"] = self.OnSubStart7502404,
        ["7502409"] = self.OnSubStart7502409,
        ["7502405"] = self.OnSubStart7502405,
        ["7502406"] = self.OnSubStart7502406,
        ["7502407"] = self.OnSubStart7502407,
        ["7502408"] = self.OnSubStart7502408,
        ["7502410"] = self.OnSubStart7502410,
        ["7502411"] = self.OnSubStart7502411
    }
end

function Quest75024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502401"] = self.OnSubFinish7502401,
        ["7502402"] = self.OnSubFinish7502402,
        ["7502403"] = self.OnSubFinish7502403,
        ["7502404"] = self.OnSubFinish7502404,
        ["7502409"] = self.OnSubFinish7502409,
        ["7502405"] = self.OnSubFinish7502405,
        ["7502406"] = self.OnSubFinish7502406,
        ["7502407"] = self.OnSubFinish7502407,
        ["7502408"] = self.OnSubFinish7502408,
        ["7502410"] = self.OnSubFinish7502410,
        ["7502411"] = self.OnSubFinish7502411
    }
end

function Quest75024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7502410"] = self.OnSubFailed7502410}
end

function Quest75024:Start()
    print("Start")
end

function Quest75024:OnDestroy()
    print("OnDestroy")
end

function Quest75024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75024:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75024:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75024:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75024:OnSubStart7502401(arg1)
    print("OnSubStart7502401")
    this:CreateQuestNpc(arg1, npcs.Npc6174.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21498.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21497.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21496.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21568.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21497.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21498.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q75024Trigger01", "Actor/Gadget/Q75024Trigger01", 70900002, 0, points.Q75024Trigger01_point.pos, points.Q75024Trigger01_point.rot, true, false, 3)
end

function Quest75024:OnSubFinish7502401(arg1)
    print("OnSubFinish7502401")
end

function Quest75024:OnSubStart7502402(arg1)
    print("OnSubStart7502402")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6174.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc21498.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21497.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21496.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21497.alias, 75024):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21498.alias, 75024):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):TurnToAvatar()
        actorMgr:CreateActorWithPos("Q75024Trigger02", "Actor/Gadget/Q75024Trigger02", 70900002, 0, points.Q75024Trigger02_point.pos, points.Q75024Trigger02_point.rot, true, false, nil)
    end)
end

function Quest75024:OnSubFinish7502402(arg1)
    print("OnSubFinish7502402")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_750249950, nil)
    end)
end

function Quest75024:OnSubStart7502403(arg1)
    print("OnSubStart7502403")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):WalkToTask({x = -2029.996, y = 74.713, z = 8495.562}, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DoFreeStyle(8, true, nil, true, true, false, false)
    end, nil, nil)
end

function Quest75024:OnSubFinish7502403(arg1)
    print("OnSubFinish7502403")
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CallDelayByQuest("750240301", 3, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    end)
end

function Quest75024:OnSubStart7502404(arg1)
    print("OnSubStart7502404")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest75024:OnSubFinish7502404(arg1)
    print("OnSubFinish7502404")
    this:QuestNarratorTask(datas.NarratorWithId_750249958, nil)
end

function Quest75024:OnSubStart7502409(arg1)
    print("OnSubStart7502409")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7502409, 0, 3, 0, npcs.Npc21460.id)
end

function Quest75024:OnSubFinish7502409(arg1)
    print("OnSubFinish7502409")
end

function Quest75024:OnSubStart7502405(arg1)
    print("OnSubStart7502405")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21496.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DoFreeStyle(7, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DisableInteeHeadCtrl(true)
    this:CallDelayByQuest("Q7402505_2", 1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21497.alias, 75024):RunToRouteTask(datas.Npc21497RoutePointsData, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21497.alias, 75024):DoFreeStyle(7, true, nil, true, true, false, false)
        end, nil, nil, nil)
    end)

    this:CallDelayByQuest("Q7502405_10", 6, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21460.alias, 75024):DoFreeStyle(3, true, nil, true, true, false, false)
    end)

    this:CallDelayByQuest("Q7502405_3", 8, function(arg1)
        actorUtils.FinishQuestID(false, 7502405)
    end)
end

function Quest75024:OnSubFinish7502405(arg1)
    print("OnSubFinish7502405")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75024:OnSubStart7502406(arg1)
    print("OnSubStart7502406")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DoFreeStyle(7, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7502406Trigger", "Actor/Gadget/Q7502406Trigger", 70900002, 0, points._Q7502406TriggerPoint_.pos, points._Q7502406TriggerPoint_.rot, true, false, nil)
    this:GetQuestNpcActor(npcs.Npc21496.alias, 75024):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21498.alias, 75024):ShowSelf()
end

function Quest75024:OnSubFinish7502406(arg1)
    print("OnSubFinish7502406")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:ActorDestroy("Q7502406Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21568.alias, 3)
end

function Quest75024:OnSubStart7502407(arg1)
    print("OnSubStart7502407")
    this:GetQuestNpcActor(npcs.Npc21498.alias, 75024):HideSelf()
end

function Quest75024:OnSubFinish7502407(arg1)
    print("OnSubFinish7502407")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21498.alias)
    this:GetQuestNpcActor(npcs.Npc21498.alias, 75024):ShowSelf()
end

function Quest75024:OnSubStart7502408(arg1)
    print("OnSubStart7502408")
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:NpcCreateWithBlackscreen(0, npcs.Npc21497.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21497.alias, 75024):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6174.alias, 75024):DisableInteeHeadCtrl(false)
    this:RequestInteraction(npcs.Npc6174.alias, "", true)
end

function Quest75024:OnSubFinish7502408(arg1)
    print("OnSubFinish7502408")
    this:SafeDestroyQuestNpc(npcs.Npc6174.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21497.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21496.alias, 3)
end

function Quest75024:OnSubStart7502410(arg1)
    print("OnSubStart7502410")
end

function Quest75024:OnSubFinish7502410(arg1)
    print("OnSubFinish7502410")
    this:QuestNarratorTask(datas.NarratorWithId_750249601, nil)
    this:CallDelayByQuest("", 3, function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            actorUtils.FinishQuestID(false, 7502407)
        end, nil, nil, 0, false, true)
    end)
end

function Quest75024:OnSubFailed7502410(arg1)
    print("OnSubFailed7502410")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
    this:NatsaurusVehicleOff()
end

function Quest75024:OnSubStart7502411(arg1)
    print("OnSubStart7502411")
    actorMgr:CreateActorWithPos("Q75024Trigger03", "Actor/Gadget/Q75024Trigger03", 70900002, 0, points.Q75024Trigger03_point.pos, points.Q75024Trigger03_point.rot, true, false, nil)
end

function Quest75024:OnSubFinish7502411(arg1)
    print("OnSubFinish7502411")
    this:ActorDestroy("Q75024Trigger03")
end

return Quest75024
