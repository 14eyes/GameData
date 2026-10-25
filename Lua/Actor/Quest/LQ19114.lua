require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19114 = class("Quest19114", QuestActorProxy)
Quest19114.defaultAlias = "Quest19114"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911401"] = self.OnSubStart1911401,
        ["1911408"] = self.OnSubStart1911408,
        ["1911402"] = self.OnSubStart1911402,
        ["1911403"] = self.OnSubStart1911403,
        ["1911404"] = self.OnSubStart1911404,
        ["1911406"] = self.OnSubStart1911406,
        ["1911407"] = self.OnSubStart1911407,
        ["1911405"] = self.OnSubStart1911405
    }
end

function Quest19114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911401"] = self.OnSubFinish1911401,
        ["1911408"] = self.OnSubFinish1911408,
        ["1911402"] = self.OnSubFinish1911402,
        ["1911403"] = self.OnSubFinish1911403,
        ["1911404"] = self.OnSubFinish1911404,
        ["1911406"] = self.OnSubFinish1911406,
        ["1911407"] = self.OnSubFinish1911407,
        ["1911405"] = self.OnSubFinish1911405
    }
end

function Quest19114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911401"] = self.OnSubFailed1911401,
        ["1911408"] = self.OnSubFailed1911408,
        ["1911402"] = self.OnSubFailed1911402,
        ["1911403"] = self.OnSubFailed1911403,
        ["1911404"] = self.OnSubFailed1911404,
        ["1911406"] = self.OnSubFailed1911406,
        ["1911407"] = self.OnSubFailed1911407,
        ["1911405"] = self.OnSubFailed1911405
    }
end

function Quest19114:Start()
    print("Start")
end

function Quest19114:OnDestroy()
    print("OnDestroy")
end

function Quest19114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19114:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12165Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12166Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12182Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3101Data.alias, 0, true)
end

function Quest19114:OnSubStart1911401(arg1)
    print("OnSubStart1911401")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
end

function Quest19114:OnSubFinish1911401(arg1)
    print("OnSubFinish1911401")
end

function Quest19114:OnSubFailed1911401(arg1)
    print("OnSubFailed1911401")
end

function Quest19114:OnSubStart1911408(arg1)
    print("OnSubStart1911408")
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911406)
end

function Quest19114:OnSubFinish1911408(arg1)
    print("OnSubFinish1911408")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 1060)
end

function Quest19114:OnSubFailed1911408(arg1)
    print("OnSubFailed1911408")
end

function Quest19114:OnSubStart1911402(arg1)
    print("OnSubStart1911402")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911401)
end

function Quest19114:OnSubFinish1911402(arg1)
    print("OnSubFinish1911402")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 1060)
end

function Quest19114:OnSubFailed1911402(arg1)
    print("OnSubFailed1911402")
end

function Quest19114:OnSubStart1911403(arg1)
    print("OnSubStart1911403")
    self:CreateQuestNpc(arg1, npcs.Npc12166Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12182Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911402)
end

function Quest19114:OnSubFinish1911403(arg1)
    print("OnSubFinish1911403")
    self:SafeDestroyQuestNpc(npcs.Npc12166Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc12182Data.alias, 3)
end

function Quest19114:OnSubFailed1911403(arg1)
    print("OnSubFailed1911403")
end

function Quest19114:OnSubStart1911404(arg1)
    print("OnSubStart1911404")
    self:CreateQuestNpc(arg1, npcs.Npc12165Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911403)
end

function Quest19114:OnSubFinish1911404(arg1)
    print("OnSubFinish1911404")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 1060)
end

function Quest19114:OnSubFailed1911404(arg1)
    print("OnSubFailed1911404")
end

function Quest19114:OnSubStart1911406(arg1)
    print("OnSubStart1911406")
    self:CreateQuestNpcWithTriggerBlack("1911406trigger", subIDs.q1911406, npcs.Coop_TohmaData.id, 1, 2, 2)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911405)
end

function Quest19114:OnSubFinish1911406(arg1)
    print("OnSubFinish1911406")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc12165Data.alias, 3)
end

function Quest19114:OnSubFailed1911406(arg1)
    print("OnSubFailed1911406")
end

function Quest19114:OnSubStart1911407(arg1)
    print("OnSubStart1911407")
end

function Quest19114:OnSubFinish1911407(arg1)
    print("OnSubFinish1911407")
end

function Quest19114:OnSubFailed1911407(arg1)
    print("OnSubFailed1911407")
end

function Quest19114:OnSubStart1911405(arg1)
    print("OnSubStart1911405")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3006Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc12165Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12165Data.alias):DoFreeStyle(8040, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12166Data.id, 3)
    self:CreateQuestNpcWithTrigger("1911405trigger", subIDs.q1911405, npcs.Coop_TohmaData.id, 4, 10)
    self:CreateQuestNpc(arg1, npcs.Npc12182Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12182Data.alias):DoFreeStyle(8040, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3101Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911404)
end

function Quest19114:OnSubFinish1911405(arg1)
    print("OnSubFinish1911405")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12165Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12166Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12182Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3101Data.alias, 0, true)
end

function Quest19114:OnSubFailed1911405(arg1)
    print("OnSubFailed1911405")
end

return Quest19114
