require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19183 = class("Quest19183", QuestActorProxy)
Quest19183.defaultAlias = "Quest19183"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19183:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19183:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1918301"] = self.OnSubStart1918301}
end

function Quest19183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1918301"] = self.OnSubFinish1918301}
end

function Quest19183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19183:Start()
    print("Start")
end

function Quest19183:OnDestroy()
    print("OnDestroy")
end

function Quest19183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19183:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19183:OnSubStart1918301(arg1)
    print("OnSubStart1918301")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918301)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13932Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13933Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13934Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918301Trigger", "Actor/Gadget/Q1918301Trigger", 70900002, 0, points.TPos_Q1918301Trigger.pos, points.TPos_Q1918301Trigger.rot, true, false, 1085)
end

function Quest19183:OnSubFinish1918301(arg1)
    print("OnSubFinish1918301")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13933Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 1085)
end

return Quest19183
