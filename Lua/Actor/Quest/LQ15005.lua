require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15005 = class("Quest15005", QuestActorProxy)
Quest15005.defaultAlias = "Quest15005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500501"] = self.OnSubStart1500501,
        ["1500502"] = self.OnSubStart1500502,
        ["1500503"] = self.OnSubStart1500503
    }
end

function Quest15005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500501"] = self.OnSubFinish1500501,
        ["1500502"] = self.OnSubFinish1500502,
        ["1500503"] = self.OnSubFinish1500503
    }
end

function Quest15005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15005:Start()
    print("Start")
end

function Quest15005:OnDestroy()
    print("OnDestroy")
end

function Quest15005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15005:OnSubStart1500501(arg1)
    print("OnSubStart1500501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500501, 0, 10, 1, npcs.Npc14317.id)
end

function Quest15005:OnSubFinish1500501(arg1)
    print("OnSubFinish1500501")
    this:SafeDestroyQuestNpc(npcs.Npc14317.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 2055)
        this:SetNavigationByMainId(15005, true)
    end)
end

function Quest15005:OnSubStart1500502(arg1)
    print("OnSubStart1500502")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14227.alias, 15005):DoFreeStyle(4180, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14228.alias, 15005):DoFreeStyle(4190, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q1500502Trigger", "Actor/Gadget/Q1500502Trigger", 70900002, 0, points._Q1500502TriggerPoint_.pos, points._Q1500502TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest15005:OnSubFinish1500502(arg1)
    print("OnSubFinish1500502")
    this:ActorDestroy("Q1500502Trigger")
end

function Quest15005:OnSubStart1500503(arg1)
    print("OnSubStart1500503")
    actorMgr:CreateActorWithPos("Q1500501trigger", "Actor/Gadget/Q1500501trigger", 70900002, 0, points.Q1500501trigger.pos, points.Q1500501trigger.rot, true, false, 3)
end

function Quest15005:OnSubFinish1500503(arg1)
    print("OnSubFinish1500503")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 2055)
        this:NatsaurusVehicleOff()
    end)
end

return Quest15005
