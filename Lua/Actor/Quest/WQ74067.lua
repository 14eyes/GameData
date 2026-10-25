require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74067 = class("Quest74067", QuestActorProxy)
Quest74067.defaultAlias = "Quest74067"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74067:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406701"] = self.OnSubStart7406701,
        ["7406702"] = self.OnSubStart7406702,
        ["7406703"] = self.OnSubStart7406703,
        ["7406704"] = self.OnSubStart7406704
    }
end

function Quest74067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406701"] = self.OnSubFinish7406701,
        ["7406702"] = self.OnSubFinish7406702,
        ["7406703"] = self.OnSubFinish7406703,
        ["7406704"] = self.OnSubFinish7406704
    }
end

function Quest74067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74067:Start()
    print("Start")
end

function Quest74067:OnDestroy()
    print("OnDestroy")
end

function Quest74067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74067:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74067:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74067:OnSubStart7406701(arg1)
    print("OnSubStart7406701")
    actorMgr:CreateActorWithPos("Q7406701Trigger", "Actor/Gadget/Q7406701Trigger", 70900002, 0, points.TPos_Q7406701Trigger.pos, points.TPos_Q7406701Trigger.rot, true, false, 3)
end

function Quest74067:OnSubFinish7406701(arg1)
    print("OnSubFinish7406701")
    self:SetNavigationByMainId(74067, true)
end

function Quest74067:OnSubStart7406702(arg1)
    print("OnSubStart7406702")
    this:DailyNpcSafeHideSelf(npcs.Npc5252Data.alias, 1, true)
end

function Quest74067:OnSubFinish7406702(arg1)
    print("OnSubFinish7406702")
end

function Quest74067:OnSubStart7406703(arg1)
    print("OnSubStart7406703")
    this:CreateQuestNpc(arg1, npcs.Npc5252Data.id, 0)
    actorMgr:CreateActorWithPos("Q7406703Trigger", "Actor/Gadget/Q7406703Trigger", 70900002, 0, points.TPos_Q7406703Trigger.pos, points.TPos_Q7406703Trigger.rot, true, false, 3)
end

function Quest74067:OnSubFinish7406703(arg1)
    print("OnSubFinish7406703")
end

function Quest74067:OnSubStart7406704(arg1)
    print("OnSubStart7406704")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5252Data.id, 0, npcs.Npc5252Data.alias)
end

function Quest74067:OnSubFinish7406704(arg1)
    print("OnSubFinish7406704")
    this:SafeDestroyQuestNpc(npcs.Npc5252Data.alias, 3)
end

return Quest74067
