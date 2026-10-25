require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75657 = class("Quest75657", QuestActorProxy)
Quest75657.defaultAlias = "Quest75657"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75657:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565701"] = self.OnSubStart7565701, ["7565702"] = self.OnSubStart7565702}
end

function Quest75657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565701"] = self.OnSubFinish7565701, ["7565702"] = self.OnSubFinish7565702}
end

function Quest75657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75657:Start()
    print("Start")
end

function Quest75657:OnDestroy()
    print("OnDestroy")
end

function Quest75657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75657:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q75657Trigger")
    this:GetQuestNpcActor(npcs.Npc30632Data.alias):DestroyWithDisappear(false)
    this:ActorDestroy("Q75657Trigger1")
    this:CancelStoryByQuest(147565701)
end

function Quest75657:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75657:OnSubStart7565701(arg1)
    print("OnSubStart7565701")
    actorMgr:CreateActorWithPos("Q75657Trigger", "Actor/Gadget/Q75657Trigger", 70900002, 0, points.TPos_Q75657Trigger.pos, points.TPos_Q75657Trigger.rot, true, false, 3)
    this:DeployStoryByQuest(147565701)
end

function Quest75657:OnSubFinish7565701(arg1)
    print("OnSubFinish7565701")
    this:ActorDestroy("Q75657Trigger")
end

function Quest75657:OnSubStart7565702(arg1)
    print("OnSubStart7565702")
    actorMgr:CreateActorWithPos("Q75657Trigger1", "Actor/Gadget/Q75657Trigger1", 70900002, 0, points.TPos_Q75657Trigger1.pos, points.TPos_Q75657Trigger1.rot, true, false, 3)
    this:DeployStoryByQuest(147565701)
end

function Quest75657:OnSubFinish7565702(arg1)
    print("OnSubFinish7565702")
end

return Quest75657
