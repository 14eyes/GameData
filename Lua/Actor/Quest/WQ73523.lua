require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73523 = class("Quest73523", QuestActorProxy)
Quest73523.defaultAlias = "Quest73523"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73523:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73523:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7352301"] = self.OnSubStart7352301,
        ["7352304"] = self.OnSubStart7352304,
        ["7352302"] = self.OnSubStart7352302,
        ["7352305"] = self.OnSubStart7352305,
        ["7352303"] = self.OnSubStart7352303
    }
end

function Quest73523:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7352301"] = self.OnSubFinish7352301,
        ["7352304"] = self.OnSubFinish7352304,
        ["7352302"] = self.OnSubFinish7352302,
        ["7352305"] = self.OnSubFinish7352305,
        ["7352303"] = self.OnSubFinish7352303
    }
end

function Quest73523:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73523:Start()
    print("Start")
end

function Quest73523:OnDestroy()
    print("OnDestroy")
end

function Quest73523:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73523:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73523:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13254Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13225Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30356Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7352301_TriggerOut", 3, false)
    actorMgr:DestroyEntityActor("Q7352302_TriggerOut", 3, false)
    actorMgr:DestroyEntityActor("Q7352303_TriggerOut", 3, false)
end

function Quest73523:OnSubStart7352301(arg1)
    print("OnSubStart7352301")
    this:CreateQuestNpc(arg1, npcs.Npc13254Data.id, 1)
    actorMgr:CreateActorWithPos("Q7352301_TriggerOut", "Actor/Gadget/Q7352301_TriggerOut", 70900002, 0, points.TPos_Q7352301_TriggerOut.pos, points.TPos_Q7352301_TriggerOut.rot, true, false, 3)
end

function Quest73523:OnSubFinish7352301(arg1)
    print("OnSubFinish7352301")
    this:SafeDestroyQuestNpc(npcs.Npc13254Data.alias, 3)
end

function Quest73523:OnSubStart7352304(arg1)
    print("OnSubStart7352304")
end

function Quest73523:OnSubFinish7352304(arg1)
    print("OnSubFinish7352304")
end

function Quest73523:OnSubStart7352302(arg1)
    print("OnSubStart7352302")
    this:CreateQuestNpc(arg1, npcs.Npc13225Data.id, 1)
    actorMgr:CreateActorWithPos("Q7352302_TriggerOut", "Actor/Gadget/Q7352302_TriggerOut", 70900002, 0, points.TPos_Q7352302_TriggerOut.pos, points.TPos_Q7352302_TriggerOut.rot, true, false, 3)
end

function Quest73523:OnSubFinish7352302(arg1)
    print("OnSubFinish7352302")
    this:SafeDestroyQuestNpc(npcs.Npc13225Data.alias, 3)
end

function Quest73523:OnSubStart7352305(arg1)
    print("OnSubStart7352305")
end

function Quest73523:OnSubFinish7352305(arg1)
    print("OnSubFinish7352305")
end

function Quest73523:OnSubStart7352303(arg1)
    print("OnSubStart7352303")
    this:CreateQuestNpc(arg1, npcs.Npc30356Data.id, 1)
    actorMgr:CreateActorWithPos("Q7352303_TriggerOut", "Actor/Gadget/Q7352303_TriggerOut", 70900002, 0, points.TPos_Q7352303_TriggerOut.pos, points.TPos_Q7352303_TriggerOut.rot, true, false, 3)
end

function Quest73523:OnSubFinish7352303(arg1)
    print("OnSubFinish7352303")
    this:SafeDestroyQuestNpc(npcs.Npc30356Data.alias, 3)
end

return Quest73523
