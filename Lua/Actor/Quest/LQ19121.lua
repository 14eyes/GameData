require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19121 = class("Quest19121", QuestActorProxy)
Quest19121.defaultAlias = "Quest19121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest19121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest19121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1912101"] = self.OnSubStart1912101,
        ["1912112"] = self.OnSubStart1912112,
        ["1912102"] = self.OnSubStart1912102,
        ["1912103"] = self.OnSubStart1912103,
        ["1912104"] = self.OnSubStart1912104,
        ["1912108"] = self.OnSubStart1912108,
        ["1912109"] = self.OnSubStart1912109,
        ["1912110"] = self.OnSubStart1912110,
        ["1912105"] = self.OnSubStart1912105,
        ["1912114"] = self.OnSubStart1912114,
        ["1912106"] = self.OnSubStart1912106,
        ["1912111"] = self.OnSubStart1912111,
        ["1912113"] = self.OnSubStart1912113
    }
end

function Quest19121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1912101"] = self.OnSubFinish1912101,
        ["1912112"] = self.OnSubFinish1912112,
        ["1912102"] = self.OnSubFinish1912102,
        ["1912103"] = self.OnSubFinish1912103,
        ["1912104"] = self.OnSubFinish1912104,
        ["1912108"] = self.OnSubFinish1912108,
        ["1912109"] = self.OnSubFinish1912109,
        ["1912110"] = self.OnSubFinish1912110,
        ["1912105"] = self.OnSubFinish1912105,
        ["1912114"] = self.OnSubFinish1912114,
        ["1912106"] = self.OnSubFinish1912106,
        ["1912111"] = self.OnSubFinish1912111,
        ["1912113"] = self.OnSubFinish1912113
    }
end

function Quest19121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1912101"] = self.OnSubFailed1912101,
        ["1912112"] = self.OnSubFailed1912112,
        ["1912102"] = self.OnSubFailed1912102,
        ["1912103"] = self.OnSubFailed1912103,
        ["1912104"] = self.OnSubFailed1912104,
        ["1912108"] = self.OnSubFailed1912108,
        ["1912109"] = self.OnSubFailed1912109,
        ["1912110"] = self.OnSubFailed1912110,
        ["1912105"] = self.OnSubFailed1912105,
        ["1912114"] = self.OnSubFailed1912114,
        ["1912106"] = self.OnSubFailed1912106,
        ["1912111"] = self.OnSubFailed1912111,
        ["1912113"] = self.OnSubFailed1912113
    }
end

function Quest19121:Start()
    print("Start")
end

function Quest19121:OnDestroy()
    print("OnDestroy")
end

function Quest19121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19121:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12157Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12161Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12162Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12160Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12149Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12236Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12237Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:LightNotifyTo(npcs.Npc3170Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3102Data.alias, 0, true)
    self:UnSpawn("Gadget71700321")
end

function Quest19121:OnSubStart1912101(arg1)
    print("OnSubStart1912101")
    self:CreateQuestNpc(arg1, npcs.Npc12157Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12236Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12237Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 4)
    self:NotifyTo(npcs.Npc3102Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912101)
end

function Quest19121:OnSubFinish1912101(arg1)
    print("OnSubFinish1912101")
    self:SafeDestroyQuestNpc(npcs.Npc12236Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12237Data.alias, 3)
end

function Quest19121:OnSubFailed1912101(arg1)
    print("OnSubFailed1912101")
end

function Quest19121:OnSubStart1912112(arg1)
    print("OnSubStart1912112")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:NotifyTo(npcs.Npc3102Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912109)
end

function Quest19121:OnSubFinish1912112(arg1)
    print("OnSubFinish1912112")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12157Data.alias, 3)
end

function Quest19121:OnSubFailed1912112(arg1)
    print("OnSubFailed1912112")
end

function Quest19121:OnSubStart1912102(arg1)
    print("OnSubStart1912102")
    self:CreateQuestNpc(arg1, npcs.Npc12160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12148Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12149Data.id, 3)
    self:LightNotifyTo(npcs.Npc3102Data.alias, 0, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912102)
end

function Quest19121:OnSubFinish1912102(arg1)
    print("OnSubFinish1912102")
    self:SafeDestroyQuestNpc(npcs.Npc12160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12149Data.alias, 3)
end

function Quest19121:OnSubFailed1912102(arg1)
    print("OnSubFailed1912102")
end

function Quest19121:OnSubStart1912103(arg1)
    print("OnSubStart1912103")
    self:CreateQuestNpc(arg1, npcs.Npc12161Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912103)
end

function Quest19121:OnSubFinish1912103(arg1)
    print("OnSubFinish1912103")
end

function Quest19121:OnSubFailed1912103(arg1)
    print("OnSubFailed1912103")
end

function Quest19121:OnSubStart1912104(arg1)
    print("OnSubStart1912104")
    self:CreateQuestNpc(arg1, npcs.Npc12160Data1.id, 1)
    self:GetQuestNpcActor(npcs.Npc12160Data1.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
end

function Quest19121:OnSubFinish1912104(arg1)
    print("OnSubFinish1912104")
    self:SafeDestroyQuestNpc(npcs.Npc12161Data.alias, 3)
end

function Quest19121:OnSubFailed1912104(arg1)
    print("OnSubFailed1912104")
end

function Quest19121:OnSubStart1912108(arg1)
    print("OnSubStart1912108")
    self:CreateQuestNpc(arg1, npcs.Npc12160Data1.id, 1)
    self:GetQuestNpcActor(npcs.Npc12160Data1.alias):DoFreeStyle(9030, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912106)
end

function Quest19121:OnSubFinish1912108(arg1)
    print("OnSubFinish1912108")
    self:SafeDestroyQuestNpc(npcs.Npc12160Data1.alias, 3)
    self:UnSpawn("Gadget71700321")
end

function Quest19121:OnSubFailed1912108(arg1)
    print("OnSubFailed1912108")
end

function Quest19121:OnSubStart1912109(arg1)
    print("OnSubStart1912109")
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
end

function Quest19121:OnSubFinish1912109(arg1)
    print("OnSubFinish1912109")
end

function Quest19121:OnSubFailed1912109(arg1)
    print("OnSubFailed1912109")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "COOP_Black_Q1911101")
end

function Quest19121:OnSubStart1912110(arg1)
    print("OnSubStart1912110")
    self:CreateQuestNpc(arg1, npcs.Npc12160Data1.id, 1)
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912107)
    self:RequestInteraction(npcs.Npc12160Data1.alias)
end

function Quest19121:OnSubFinish1912110(arg1)
    print("OnSubFinish1912110")
    self:SafeDestroyQuestNpc(npcs.Npc12160Data1.alias, 3)
end

function Quest19121:OnSubFailed1912110(arg1)
    print("OnSubFailed1912110")
end

function Quest19121:OnSubStart1912105(arg1)
    print("OnSubStart1912105")
    self:CreateQuestNpc(arg1, npcs.Npc12161Data.id, 1)
    self:LightNotifyTo(npcs.Npc3170Data.alias, 0, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912104)
end

function Quest19121:OnSubFinish1912105(arg1)
    print("OnSubFinish1912105")
    self:SafeDestroyQuestNpc(npcs.Npc12161Data.alias, 3)
end

function Quest19121:OnSubFailed1912105(arg1)
    print("OnSubFailed1912105")
end

function Quest19121:OnSubStart1912114(arg1)
    print("OnSubStart1912114")
    self:CreateQuestNpc(arg1, npcs.Npc12162Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912111)
end

function Quest19121:OnSubFinish1912114(arg1)
    print("OnSubFinish1912114")
end

function Quest19121:OnSubFailed1912114(arg1)
    print("OnSubFailed1912114")
end

function Quest19121:OnSubStart1912106(arg1)
    print("OnSubStart1912106")
end

function Quest19121:OnSubFinish1912106(arg1)
    print("OnSubFinish1912106")
end

function Quest19121:OnSubFailed1912106(arg1)
    print("OnSubFailed1912106")
end

function Quest19121:OnSubStart1912111(arg1)
    print("OnSubStart1912111")
    self:CreateQuestNpc(arg1, npcs.Npc12162Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912108)
end

function Quest19121:OnSubFinish1912111(arg1)
    print("OnSubFinish1912111")
    self:SafeDestroyQuestNpc(npcs.Npc12162Data.alias, 3)
end

function Quest19121:OnSubFailed1912111(arg1)
    print("OnSubFailed1912111")
end

function Quest19121:OnSubStart1912113(arg1)
    print("OnSubStart1912113")
    self:CreateQuestNpcWithTrigger("1912113trigger", subIDs.q1912113, npcs.Npc12148Data.id, 1, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12149Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912105)
end

function Quest19121:OnSubFinish1912113(arg1)
    print("OnSubFinish1912113")
    self:SafeDestroyQuestNpc(npcs.Npc12148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12149Data.alias, 3)
end

function Quest19121:OnSubFailed1912113(arg1)
    print("OnSubFailed1912113")
end

return Quest19121
