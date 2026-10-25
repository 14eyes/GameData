require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76036 = class("Quest76036", QuestActorProxy)
Quest76036.defaultAlias = "Quest76036"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603601"] = self.OnSubStart7603601,
        ["7603602"] = self.OnSubStart7603602,
        ["7603603"] = self.OnSubStart7603603
    }
end

function Quest76036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603601"] = self.OnSubFinish7603601,
        ["7603602"] = self.OnSubFinish7603602,
        ["7603603"] = self.OnSubFinish7603603
    }
end

function Quest76036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76036:Start()
    print("Start")
end

function Quest76036:OnDestroy()
    print("OnDestroy")
end

function Quest76036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15603.alias, 3)
    this:ActorDestroy("Q7603601Trigger")
    this:ActorDestroy("Q7603601Trigger_1")
    this:DestroyNpcTrigger("Q7603601N1318_01")
    this:CancelStoryByQuest(147603600)
end

function Quest76036:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7603601Trigger")
    this:ActorDestroy("Q7603601Trigger_1")
end

function Quest76036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76036:OnSubStart7603601(arg1)
    print("OnSubStart7603601")
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15603.id, 0, false, 0)
    this:DeployStoryByQuest(147603600)
    this:CreateNpcWithCameraLookTrigger("Q7603601N1318_01", 7603601, npcs.Npc1318.id, 0, 18, 7603601, true)
end

function Quest76036:OnSubFinish7603601(arg1)
    print("OnSubFinish7603601")
    this:CancelStoryByQuest(147603600)
    this:ClearNarratorTask()
    this:SetNavigationByMainId(76036, true)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76036):ResetForceAvatarWalk()
end

function Quest76036:OnSubStart7603602(arg1)
    print("OnSubStart7603602")
end

function Quest76036:OnSubFinish7603602(arg1)
    print("OnSubFinish7603602")
end

function Quest76036:OnSubStart7603603(arg1)
    print("OnSubStart7603603")
end

function Quest76036:OnSubFinish7603603(arg1)
    print("OnSubFinish7603603")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15603.alias, 3)
end

return Quest76036
