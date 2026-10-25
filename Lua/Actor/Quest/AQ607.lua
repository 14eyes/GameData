require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest607 = class("Quest607", QuestActorProxy)
Quest607.defaultAlias = "Quest607"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest607:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest607:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60705"] = self.OnSubStart60705,
        ["60701"] = self.OnSubStart60701,
        ["60702"] = self.OnSubStart60702,
        ["60703"] = self.OnSubStart60703,
        ["60704"] = self.OnSubStart60704
    }
end

function Quest607:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60705"] = self.OnSubFinish60705,
        ["60701"] = self.OnSubFinish60701,
        ["60702"] = self.OnSubFinish60702,
        ["60703"] = self.OnSubFinish60703,
        ["60704"] = self.OnSubFinish60704
    }
end

function Quest607:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["60703"] = self.OnSubFailed60703}
end

function Quest607:Start()
    print("Start")
end

function Quest607:OnDestroy()
    print("OnDestroy")
end

function Quest607:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest607:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest607:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest607:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q60701Trigger")
end

function Quest607:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest607:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest607:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest607:OnSubStart60705(arg1)
    print("OnSubStart60705")
end

function Quest607:OnSubFinish60705(arg1)
    print("OnSubFinish60705")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc10012.alias, 20260)
    this:UnCallDelayByQuest("Q60703N10011CallDelay")
    this:ActorDestroy("Q60703N10011Trigger")
    this:DestroyQuestNpcActor(npcs.Npc10011.alias, 20260)
    this:ActorDestroy("Q60701N10011Trigger")
end

function Quest607:OnSubStart60701(arg1)
    print("OnSubStart60701")
    this:NpcCreateWithNpcTrigger(npcs.Npc10011.id, 0, 15, 60701)
end

function Quest607:OnSubFinish60701(arg1)
    print("OnSubFinish60701")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20260)
end

function Quest607:OnSubStart60702(arg1)
    print("OnSubStart60702")
end

function Quest607:OnSubFinish60702(arg1)
    print("OnSubFinish60702")
end

function Quest607:OnSubStart60703(arg1)
    print("OnSubStart60703")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60703, 0, 40, 1, npcs.Npc10011.id)
    this:GetQuestNpcActor(npcs.Npc10011.alias, 607):PerformDither(true, 1, nil)
end

function Quest607:OnSubFinish60703(arg1)
    print("OnSubFinish60703")
end

function Quest607:OnSubFailed60703(arg1)
    print("OnSubFailed60703")
    this:UnCallDelayByQuest("Q60703N10011CallDelay")
    this:ActorDestroy("Q60703N10011Trigger")
    this:DestroyQuestNpcActor(npcs.Npc10011.alias, 20260)
end

function Quest607:OnSubStart60704(arg1)
    print("OnSubStart60704")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc10011.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc10011.alias, 607):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc10012.id, 0, false, 0)
    end)
end

function Quest607:OnSubFinish60704(arg1)
    print("OnSubFinish60704")
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc10012.alias, 20260)
end

return Quest607
