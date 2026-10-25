require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76508 = class("Quest76508", QuestActorProxy)
Quest76508.defaultAlias = "Quest76508"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76508:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650801"] = self.OnSubStart7650801, ["7650802"] = self.OnSubStart7650802}
end

function Quest76508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650801"] = self.OnSubFinish7650801, ["7650802"] = self.OnSubFinish7650802}
end

function Quest76508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76508:Start()
    print("Start")
end

function Quest76508:OnDestroy()
    print("OnDestroy")
end

function Quest76508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30891.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4170.alias, 3)
    this:DestroyNpcTrigger("Q7650801N30891Trigger")
end

function Quest76508:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76508:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76508:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76508:OnSubStart7650801(arg1)
    print("OnSubStart7650801")
    this:NpcCreateWithNpcTrigger(npcs.Npc30891.id, 0, 5, 7650801)
    this:GetQuestNpcActor(npcs.Npc30891.alias, 76508):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc4170.id, arg1)
    this:GetQuestNpcActor(npcs.Npc4170.alias, 76508):DoFreeStyle(4402, true, nil, true, true, false, false)
end

function Quest76508:OnSubFinish7650801(arg1)
    print("OnSubFinish7650801")
    this:SafeDestroyQuestNpc(npcs.Npc30891.alias, 3)
end

function Quest76508:OnSubStart7650802(arg1)
    print("OnSubStart7650802")
    this:GetQuestNpcActor(npcs.Npc4170.alias, 76508):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76508:OnSubFinish7650802(arg1)
    print("OnSubFinish7650802")
    this:SafeDestroyQuestNpc(npcs.Npc4170.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("MusicPartyTrialLevel", 0)
    end)
end

return Quest76508
