require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19056 = class("Quest19056", QuestActorProxy)
Quest19056.defaultAlias = "Quest19056"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19056:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905601"] = self.OnSubStart1905601,
        ["1905602"] = self.OnSubStart1905602,
        ["1905606"] = self.OnSubStart1905606,
        ["1905603"] = self.OnSubStart1905603,
        ["1905604"] = self.OnSubStart1905604,
        ["1905605"] = self.OnSubStart1905605,
        ["1905607"] = self.OnSubStart1905607,
        ["1905608"] = self.OnSubStart1905608
    }
end

function Quest19056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905601"] = self.OnSubFinish1905601,
        ["1905602"] = self.OnSubFinish1905602,
        ["1905606"] = self.OnSubFinish1905606,
        ["1905603"] = self.OnSubFinish1905603,
        ["1905604"] = self.OnSubFinish1905604,
        ["1905605"] = self.OnSubFinish1905605,
        ["1905607"] = self.OnSubFinish1905607,
        ["1905608"] = self.OnSubFinish1905608
    }
end

function Quest19056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19056:Start()
    print("Start")
end

function Quest19056:OnDestroy()
    print("OnDestroy")
end

function Quest19056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19056:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3020Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3019Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19056Trigger", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19056:OnSubStart1905601(arg1)
    print("OnSubStart1905601")
    self:CreateQuestNpc(arg1, npcs.Npc3020Data.id, 0)
    actorMgr:CreateActorWithPos("Q19056Trigger", "Actor/Gadget/Q19056Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905601_N3020").pos, sceneData:GetDummyPoint(3, "Q1905601_N3020").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3019Data.alias, 1, true)
end

function Quest19056:OnSubFinish1905601(arg1)
    print("OnSubFinish1905601")
end

function Quest19056:OnSubStart1905602(arg1)
    print("OnSubStart1905602")
    actorMgr:GetActor("19056"):RequestCoopInteractionFromSubStartPoint(105901, 1905602)
    self:NotifyTo(npcs.Npc3019Data.alias, 1, true)
end

function Quest19056:OnSubFinish1905602(arg1)
    print("OnSubFinish1905602")
end

function Quest19056:OnSubStart1905606(arg1)
    print("OnSubStart1905606")
end

function Quest19056:OnSubFinish1905606(arg1)
    print("OnSubFinish1905606")
end

function Quest19056:OnSubStart1905603(arg1)
    print("OnSubStart1905603")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3019Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3020Data.id, 0)
    end)
end

function Quest19056:OnSubFinish1905603(arg1)
    print("OnSubFinish1905603")
end

function Quest19056:OnSubStart1905604(arg1)
    print("OnSubStart1905604")
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19056:OnSubFinish1905604(arg1)
    print("OnSubFinish1905604")
end

function Quest19056:OnSubStart1905605(arg1)
    print("OnSubStart1905605")
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19056:OnSubFinish1905605(arg1)
    print("OnSubFinish1905605")
end

function Quest19056:OnSubStart1905607(arg1)
    print("OnSubStart1905607")
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19056:OnSubFinish1905607(arg1)
    print("OnSubFinish1905607")
end

function Quest19056:OnSubStart1905608(arg1)
    print("OnSubStart1905608")
    actorMgr:GetActor("19056"):RequestCoopInteractionFromSubStartPoint(105901, 1905608)
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19056:OnSubFinish1905608(arg1)
    print("OnSubFinish1905608")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3020Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3019Data.alias, 3)
end

return Quest19056
