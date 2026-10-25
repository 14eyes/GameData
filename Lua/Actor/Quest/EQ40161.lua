require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40161 = class("Quest40161", QuestActorProxy)
Quest40161.defaultAlias = "Quest40161"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40161:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40161:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4016101"] = self.OnSubStart4016101, ["4016102"] = self.OnSubStart4016102}
end

function Quest40161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4016101"] = self.OnSubFinish4016101, ["4016102"] = self.OnSubFinish4016102}
end

function Quest40161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40161:Start()
    print("Start")
end

function Quest40161:OnDestroy()
    print("OnDestroy")
end

function Quest40161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40161:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30519Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40161Trigger", 3, false)
end

function Quest40161:OnSubStart4016101(arg1)
    print("OnSubStart4016101")
    actorMgr:CreateActorWithPos("Q40161Trigger", "Actor/Gadget/Q40161Trigger", 70900002, 0, points.TPos_Q40161Trigger.pos, points.TPos_Q40161Trigger.rot, true, false, 3)
end

function Quest40161:OnSubFinish4016101(arg1)
    print("OnSubFinish4016101")
end

function Quest40161:OnSubStart4016102(arg1)
    print("OnSubStart4016102")
    this:CreateQuestNpc(arg1, npcs.Npc30519Data.id, 0)
end

function Quest40161:OnSubFinish4016102(arg1)
    print("OnSubFinish4016102")
    this:DestroyQuestNpcActor(npcs.Npc30519Data.alias, 3)
end

return Quest40161
