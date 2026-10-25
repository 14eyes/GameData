require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19184 = class("Quest19184", QuestActorProxy)
Quest19184.defaultAlias = "Quest19184"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19184:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19184:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1918401"] = self.OnSubStart1918401}
end

function Quest19184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1918401"] = self.OnSubFinish1918401}
end

function Quest19184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19184:Start()
    print("Start")
end

function Quest19184:OnDestroy()
    print("OnDestroy")
end

function Quest19184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19184:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc5100Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1918401Trigger", 1085, false)
end

function Quest19184:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19184:OnSubStart1918401(arg1)
    print("OnSubStart1918401")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918401)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918401Trigger", "Actor/Gadget/Q1918401Trigger", 70900002, 0, points.TPos_Q1918401Trigger.pos, points.TPos_Q1918401Trigger.rot, true, false, 1085)
end

function Quest19184:OnSubFinish1918401(arg1)
    print("OnSubFinish1918401")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1085)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

return Quest19184
