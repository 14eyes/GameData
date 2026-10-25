require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76035 = class("Quest76035", QuestActorProxy)
Quest76035.defaultAlias = "Quest76035"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76035:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7603501"] = self.OnSubStart7603501, ["7603502"] = self.OnSubStart7603502}
end

function Quest76035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7603501"] = self.OnSubFinish7603501, ["7603502"] = self.OnSubFinish7603502}
end

function Quest76035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76035:Start()
    print("Start")
end

function Quest76035:OnDestroy()
    print("OnDestroy")
end

function Quest76035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc15872.alias, 3)
    this:ActorDestroy("Q7603501Trigger")
    this:ActorDestroy("Q7603502Trigger")
    this:DestroyNpcTrigger("Q7603501N1318_01")
    this:CancelStoryByQuest(147603501)
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
end

function Quest76035:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7603501Trigger")
    this:ActorDestroy("Q7603502Trigger")
end

function Quest76035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76035:OnSubStart7603501(arg1)
    print("OnSubStart7603501")
    this:CreateNpcWithCameraLookTrigger("Q7603501N1318_01", 7603501, npcs.Npc1318.id, 0, 48, 7603501, true)
    this:DeployStoryByQuest(147603501)
end

function Quest76035:OnSubFinish7603501(arg1)
    print("OnSubFinish7603501")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:CancelStoryByQuest(147603501)
end

function Quest76035:OnSubStart7603502(arg1)
    print("OnSubStart7603502")
end

function Quest76035:OnSubFinish7603502(arg1)
    print("OnSubFinish7603502")
end

return Quest76035
