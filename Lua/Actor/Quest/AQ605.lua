require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest605 = class("Quest605", QuestActorProxy)
Quest605.defaultAlias = "Quest605"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest605:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest605:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60505"] = self.OnSubStart60505,
        ["60501"] = self.OnSubStart60501,
        ["60502"] = self.OnSubStart60502,
        ["60503"] = self.OnSubStart60503,
        ["60504"] = self.OnSubStart60504
    }
end

function Quest605:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60505"] = self.OnSubFinish60505,
        ["60501"] = self.OnSubFinish60501,
        ["60502"] = self.OnSubFinish60502,
        ["60503"] = self.OnSubFinish60503,
        ["60504"] = self.OnSubFinish60504
    }
end

function Quest605:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["60503"] = self.OnSubFailed60503}
end

function Quest605:Start()
    print("Start")
end

function Quest605:OnDestroy()
    print("OnDestroy")
end

function Quest605:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest605:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest605:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest605:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q60501Trigger")
end

function Quest605:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest605:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest605:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest605:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest605:OnSubStart60505(arg1)
    print("OnSubStart60505")
end

function Quest605:OnSubFinish60505(arg1)
    print("OnSubFinish60505")
    this:NpcDestroyImmediately(20260, npcs.Npc1019.alias)
    this:NpcDestroyImmediately(20260, npcs.Gaia_1.alias)
    this:NpcDestroyImmediately(20260, npcs.Diluc.alias)
    this:UnCallDelayByQuest("Q60503N1009CallDelay")
    this:ActorDestroy("Q60503N1009Trigger")
    this:ActorDestroy("Q60501N1019Trigger")
end

function Quest605:OnSubStart60501(arg1)
    print("OnSubStart60501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1019.id, 0, 7, 60501)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 605):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest605:OnSubFinish60501(arg1)
    print("OnSubFinish60501")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 20260)
end

function Quest605:OnSubStart60502(arg1)
    print("OnSubStart60502")
end

function Quest605:OnSubFinish60502(arg1)
    print("OnSubFinish60502")
end

function Quest605:OnSubStart60503(arg1)
    print("OnSubStart60503")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60503, 0, 50, 1, npcs.Diluc.id)
    this:GetQuestNpcActor(npcs.Diluc.alias, 605):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest605:OnSubFinish60503(arg1)
    print("OnSubFinish60503")
end

function Quest605:OnSubFailed60503(arg1)
    print("OnSubFailed60503")
    this:UnCallDelayByQuest("Q60503N1009CallDelay")
    this:ActorDestroy("Q60503N1009Trigger")
    this:DestroyQuestNpcActor(npcs.Diluc.alias, 20260)
end

function Quest605:OnSubStart60504(arg1)
    print("OnSubStart60504")
    this:GetQuestNpcActor(npcs.Diluc.alias, 605):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Gaia_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 605):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 605):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest605:OnSubFinish60504(arg1)
    print("OnSubFinish60504")
    this:NpcDestroyImmediately(20260, npcs.Diluc.alias)
    this:NpcDestroyImmediately(20260, npcs.Gaia_1.alias)
    this:NpcDestroyImmediately(20260, npcs.Npc1019.alias)
end

return Quest605
