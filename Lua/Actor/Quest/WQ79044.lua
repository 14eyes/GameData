require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79044 = class("Quest79044", QuestActorProxy)
Quest79044.defaultAlias = "Quest79044"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest79044:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest79044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904401"] = self.OnSubStart7904401,
        ["7904402"] = self.OnSubStart7904402,
        ["7904407"] = self.OnSubStart7904407,
        ["7904408"] = self.OnSubStart7904408,
        ["7904409"] = self.OnSubStart7904409,
        ["7904403"] = self.OnSubStart7904403,
        ["7904410"] = self.OnSubStart7904410,
        ["7904404"] = self.OnSubStart7904404,
        ["7904405"] = self.OnSubStart7904405,
        ["7904406"] = self.OnSubStart7904406
    }
end

function Quest79044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904401"] = self.OnSubFinish7904401,
        ["7904402"] = self.OnSubFinish7904402,
        ["7904407"] = self.OnSubFinish7904407,
        ["7904408"] = self.OnSubFinish7904408,
        ["7904409"] = self.OnSubFinish7904409,
        ["7904403"] = self.OnSubFinish7904403,
        ["7904410"] = self.OnSubFinish7904410,
        ["7904404"] = self.OnSubFinish7904404,
        ["7904405"] = self.OnSubFinish7904405,
        ["7904406"] = self.OnSubFinish7904406
    }
end

function Quest79044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79044:Start()
    print("Start")
end

function Quest79044:OnDestroy()
    print("OnDestroy")
end

function Quest79044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79044:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79044:OnSubStart7904401(arg1)
    print("OnSubStart7904401")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20975Data.id, 1)
end

function Quest79044:OnSubFinish7904401(arg1)
    print("OnSubFinish7904401")
    self:SetNavigationByMainId(79045, true)
end

function Quest79044:OnSubStart7904402(arg1)
    print("OnSubStart7904402")
end

function Quest79044:OnSubFinish7904402(arg1)
    print("OnSubFinish7904402")
    self:SetNavigationByMainId(79044, true)
end

function Quest79044:OnSubStart7904407(arg1)
    print("OnSubStart7904407")
end

function Quest79044:OnSubFinish7904407(arg1)
    print("OnSubFinish7904407")
end

function Quest79044:OnSubStart7904408(arg1)
    print("OnSubStart7904408")
end

function Quest79044:OnSubFinish7904408(arg1)
    print("OnSubFinish7904408")
end

function Quest79044:OnSubStart7904409(arg1)
    print("OnSubStart7904409")
end

function Quest79044:OnSubFinish7904409(arg1)
    print("OnSubFinish7904409")
end

function Quest79044:OnSubStart7904403(arg1)
    print("OnSubStart7904403")
end

function Quest79044:OnSubFinish7904403(arg1)
    print("OnSubFinish7904403")
end

function Quest79044:OnSubStart7904410(arg1)
    print("OnSubStart7904410")
end

function Quest79044:OnSubFinish7904410(arg1)
    print("OnSubFinish7904410")
    this:DestroyQuestNpcActor(npcs.Npc20975Data.alias, 10)
end

function Quest79044:OnSubStart7904404(arg1)
    print("OnSubStart7904404")
    this:CreateQuestNpcWithTriggerBlack("Q79044Trigger", 7904404, npcs.Npc20975Data.id, 1, 5, 1)
end

function Quest79044:OnSubFinish7904404(arg1)
    print("OnSubFinish7904404")
    this:SafeDestroyQuestNpc(npcs.Npc20975Data.alias, 10)
end

function Quest79044:OnSubStart7904405(arg1)
    print("OnSubStart7904405")
    this:CreateQuestNpcWithTriggerBlack("Q79044Trigger1", 7904405, npcs.Npc21016Data.id, 0, 5, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21017Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21018Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21019Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21020Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21021Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21022Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21023Data.id, 0)
end

function Quest79044:OnSubFinish7904405(arg1)
    print("OnSubFinish7904405")
end

function Quest79044:OnSubStart7904406(arg1)
    print("OnSubStart7904406")
end

function Quest79044:OnSubFinish7904406(arg1)
    print("OnSubFinish7904406")
end

return Quest79044
