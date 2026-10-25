require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19156 = class("Quest19156", QuestActorProxy)
Quest19156.defaultAlias = "Quest19156"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19156:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19156:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915601"] = self.OnSubStart1915601,
        ["1915602"] = self.OnSubStart1915602,
        ["1915605"] = self.OnSubStart1915605,
        ["1915606"] = self.OnSubStart1915606
    }
end

function Quest19156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915601"] = self.OnSubFinish1915601,
        ["1915602"] = self.OnSubFinish1915602,
        ["1915605"] = self.OnSubFinish1915605,
        ["1915606"] = self.OnSubFinish1915606
    }
end

function Quest19156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19156:Start()
    print("Start")
end

function Quest19156:OnDestroy()
    print("OnDestroy")
end

function Quest19156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19156:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    actorMgr:DestroyEntityActor("Q19156Trigger", 3, false)
    actorMgr:DestroyEntityActor("1915606tri", 3, false)
end

function Quest19156:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest19156:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19156:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19156:OnSubStart1915601(arg1)
    print("OnSubStart1915601")
    actorMgr:CreateActorWithPos("Q19156Trigger", "Actor/Gadget/Q19156Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "C1915602_N10000005").pos, sceneData:GetDummyPoint(3, "C1915602_N10000005").rot, true, false, 3)
end

function Quest19156:OnSubFinish1915601(arg1)
    print("OnSubFinish1915601")
    this:ActorDestroy("Q19156Trigger")
end

function Quest19156:OnSubStart1915602(arg1)
    print("OnSubStart1915602")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_LaylaData.id, 1, npcs.Coop_LaylaData.alias)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915602)
end

function Quest19156:OnSubFinish1915602(arg1)
    print("OnSubFinish1915602")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19156:OnSubStart1915605(arg1)
    print("OnSubStart1915605")
end

function Quest19156:OnSubFinish1915605(arg1)
    print("OnSubFinish1915605")
end

function Quest19156:OnSubStart1915606(arg1)
    print("OnSubStart1915606")
    this:CreateQuestNpcWithTriggerBlack("1915606tri", 1915606, 512, 1, 30, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915606)
end

function Quest19156:OnSubFinish1915606(arg1)
    print("OnSubFinish1915606")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

return Quest19156
