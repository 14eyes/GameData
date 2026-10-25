require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3017 = class("Quest3017", QuestActorProxy)
Quest3017.defaultAlias = "Quest3017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest3017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest3017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301701"] = self.OnSubStart301701,
        ["301702"] = self.OnSubStart301702,
        ["301703"] = self.OnSubStart301703,
        ["301704"] = self.OnSubStart301704,
        ["301705"] = self.OnSubStart301705,
        ["301706"] = self.OnSubStart301706,
        ["301707"] = self.OnSubStart301707
    }
end

function Quest3017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301701"] = self.OnSubFinish301701,
        ["301702"] = self.OnSubFinish301702,
        ["301703"] = self.OnSubFinish301703,
        ["301704"] = self.OnSubFinish301704,
        ["301705"] = self.OnSubFinish301705,
        ["301706"] = self.OnSubFinish301706,
        ["301707"] = self.OnSubFinish301707
    }
end

function Quest3017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3017:Start()
    print("Start")
end

function Quest3017:OnDestroy()
    print("OnDestroy")
end

function Quest3017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3017:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3017:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3017:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3017:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3017:OnSubStart301701(arg1)
    print("OnSubStart301701")
    self:NpcCreateWithTriggerBlack(npcs.Npc12697Data.id, 301701, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4301Data.alias, 1, true)
end

function Quest3017:OnSubFinish301701(arg1)
    print("OnSubFinish301701")
    self:SafeDestroyQuestNpc(npcs.Npc12697Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12698Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12699Data.alias, 3)
end

function Quest3017:OnSubStart301702(arg1)
    print("OnSubStart301702")
    self:DailyNpcSafeHideSelf(npcs.Npc4301Data.alias, 1, true)
end

function Quest3017:OnSubFinish301702(arg1)
    print("OnSubFinish301702")
    self:TransmitPlayerByQuestId(301702, 1)
end

function Quest3017:OnSubStart301703(arg1)
    print("OnSubStart301703")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12694Data.id, 2, npcs.Npc12694Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc4301Data.alias, 1, true)
end

function Quest3017:OnSubFinish301703(arg1)
    print("OnSubFinish301703")
    self:SafeDestroyQuestNpc(npcs.Npc12694Data.alias, 3)
end

function Quest3017:OnSubStart301704(arg1)
    print("OnSubStart301704")
    self:NpcCreateWithTrigger(npcs.Npc1051Data.id, 301704, 1)
    self:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4303Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4301Data.alias, 1, true)
end

function Quest3017:OnSubFinish301704(arg1)
    print("OnSubFinish301704")
end

function Quest3017:OnSubStart301705(arg1)
    print("OnSubStart301705")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTrigger(npcs.Npc12753Data.id, 301705, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4303Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc4301Data.alias, 0, true)
end

function Quest3017:OnSubFinish301705(arg1)
    print("OnSubFinish301705")
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12753Data.alias, 3)
end

function Quest3017:OnSubStart301706(arg1)
    print("OnSubStart301706")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTrigger(npcs.Npc12554Data.id, 301706, 1)
    self:GetQuestNpcActor(npcs.Npc12554Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    self:LightNotifyTo(npcs.Npc4303Data.alias, 0, true)
end

function Quest3017:OnSubFinish301706(arg1)
    print("OnSubFinish301706")
    self:TransmitPlayerByQuestId(301706, 1)
    self:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:ShowBlackScreen(0, 5, 0, nil, nil, nil, "", false, true)
    end)
end

function Quest3017:OnSubStart301707(arg1)
    print("OnSubStart301707")
    self:LightNotifyTo(npcs.Npc4019Data.alias, 0, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc1050Data.id, 301707, 1)
end

function Quest3017:OnSubFinish301707(arg1)
    print("OnSubFinish301707")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

return Quest3017
