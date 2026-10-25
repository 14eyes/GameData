require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19160 = class("Quest19160", QuestActorProxy)
Quest19160.defaultAlias = "Quest19160"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19160:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19160:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1916001"] = self.OnSubStart1916001, ["1916002"] = self.OnSubStart1916002}
end

function Quest19160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1916001"] = self.OnSubFinish1916001, ["1916002"] = self.OnSubFinish1916002}
end

function Quest19160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19160:Start()
    print("Start")
end

function Quest19160:OnDestroy()
    print("OnDestroy")
end

function Quest19160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19160:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12910Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19160Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1916002tri", 1073, false)
end

function Quest19160:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19160:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19160:OnSubStart1916001(arg1)
    print("OnSubStart1916001")
    this:CreateQuestNpc(arg1, npcs.Npc12910Data.id, 2)
    actorMgr:CreateActorWithPos("Q19160Trigger", "Actor/Gadget/Q19160Trigger", 70900002, 0, sceneData:GetDummyPoint(1073, "C1915902_N10000005").pos, sceneData:GetDummyPoint(1073, "C1915902_N10000005").rot, true, false, 1073)
end

function Quest19160:OnSubFinish1916001(arg1)
    print("OnSubFinish1916001")
    this:ActorDestroy("Q19160Trigger")
end

function Quest19160:OnSubStart1916002(arg1)
    print("OnSubStart1916002")
    this:CreateQuestNpcWithTriggerBlack("Q1916002tri", 1916002, 512, 1, 20, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916002)
end

function Quest19160:OnSubFinish1916002(arg1)
    print("OnSubFinish1916002")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc12910Data.alias, 3)
end

return Quest19160
