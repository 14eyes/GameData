require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73508 = class("Quest73508", QuestActorProxy)
Quest73508.defaultAlias = "Quest73508"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73508:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7350802"] = self.OnSubStart7350802, ["7350801"] = self.OnSubStart7350801}
end

function Quest73508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7350802"] = self.OnSubFinish7350802, ["7350801"] = self.OnSubFinish7350801}
end

function Quest73508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73508:Start()
    print("Start")
end

function Quest73508:OnDestroy()
    print("OnDestroy")
end

function Quest73508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30319Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30318Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30319Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30318Data.alias, 0, true)
end

function Quest73508:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73508:OnSubStart7350802(arg1)
    print("OnSubStart7350802")
end

function Quest73508:OnSubFinish7350802(arg1)
    print("OnSubFinish7350802")
end

function Quest73508:OnSubStart7350801(arg1)
    print("OnSubStart7350801")
    this:CreateQuestNpc(arg1, npcs.Npc30319Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc30319Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc30318Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc30318Data.alias, 1, true)
end

function Quest73508:OnSubFinish7350801(arg1)
    print("OnSubFinish7350801")
    this:SafeDestroyQuestNpc(npcs.Npc30319Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30318Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30319Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30318Data.alias, 0, true)
end

return Quest73508
