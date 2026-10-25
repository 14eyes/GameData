require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19159 = class("Quest19159", QuestActorProxy)
Quest19159.defaultAlias = "Quest19159"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19159:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19159:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1915901"] = self.OnSubStart1915901, ["1915902"] = self.OnSubStart1915902}
end

function Quest19159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1915901"] = self.OnSubFinish1915901, ["1915902"] = self.OnSubFinish1915902}
end

function Quest19159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19159:Start()
    print("Start")
end

function Quest19159:OnDestroy()
    print("OnDestroy")
end

function Quest19159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19159:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12910Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19159Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1915902tri", 1073, false)
end

function Quest19159:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19159:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19159:OnSubStart1915901(arg1)
    print("OnSubStart1915901")
    this:CreateQuestNpc(arg1, npcs.Npc12910Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc12910Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q19159Trigger", "Actor/Gadget/Q19159Trigger", 70900002, 0, sceneData:GetDummyPoint(1073, "C1915902_N10000005").pos, sceneData:GetDummyPoint(1073, "C1915902_N10000005").rot, true, false, 1073)
end

function Quest19159:OnSubFinish1915901(arg1)
    print("OnSubFinish1915901")
    this:ActorDestroy("Q19159Trigger")
end

function Quest19159:OnSubStart1915902(arg1)
    print("OnSubStart1915902")
    this:GetQuestNpcActor(npcs.Npc12910Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915902)
    this:CreateQuestNpcWithTriggerBlack("Q1915902tri", 1915902, 512, 1, 20, 1)
end

function Quest19159:OnSubFinish1915902(arg1)
    print("OnSubFinish1915902")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc12910Data.alias, 3)
end

return Quest19159
