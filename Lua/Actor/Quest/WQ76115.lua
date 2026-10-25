require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76115 = class("Quest76115", QuestActorProxy)
Quest76115.defaultAlias = "Quest76115"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76115:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611501"] = self.OnSubStart7611501,
        ["7611502"] = self.OnSubStart7611502,
        ["7611503"] = self.OnSubStart7611503,
        ["7611504"] = self.OnSubStart7611504
    }
end

function Quest76115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611501"] = self.OnSubFinish7611501,
        ["7611502"] = self.OnSubFinish7611502,
        ["7611503"] = self.OnSubFinish7611503,
        ["7611504"] = self.OnSubFinish7611504
    }
end

function Quest76115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76115:Start()
    print("Start")
end

function Quest76115:OnDestroy()
    print("OnDestroy")
end

function Quest76115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76115:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76115:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76115:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76115:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76115:OnSubStart7611501(arg1)
    print("OnSubStart7611501")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1316.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 76115):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 76115):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc7061.alias, true, 1)
end

function Quest76115:OnSubFinish7611501(arg1)
    print("OnSubFinish7611501")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1204)
end

function Quest76115:OnSubStart7611502(arg1)
    print("OnSubStart7611502")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7125.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7125.alias, 76115):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest76115:OnSubFinish7611502(arg1)
    print("OnSubFinish7611502")
    this:AfterInterCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc7125.alias, 3)
        this:TransmitPlayerByQuestId(7611502, 2, nil, nil, nil)
    end)
end

function Quest76115:OnSubStart7611503(arg1)
    print("OnSubStart7611503")
end

function Quest76115:OnSubFinish7611503(arg1)
    print("OnSubFinish7611503")
end

function Quest76115:OnSubStart7611504(arg1)
    print("OnSubStart7611504")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 30, 7611504)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc1317.id, arg1)
    end)
end

function Quest76115:OnSubFinish7611504(arg1)
    print("OnSubFinish7611504")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
end

return Quest76115
