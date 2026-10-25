require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73519 = class("Quest73519", QuestActorProxy)
Quest73519.defaultAlias = "Quest73519"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73519:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73519:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351902"] = self.OnSubStart7351902, ["7351901"] = self.OnSubStart7351901}
end

function Quest73519:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351902"] = self.OnSubFinish7351902, ["7351901"] = self.OnSubFinish7351901}
end

function Quest73519:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73519:Start()
    print("Start")
end

function Quest73519:OnDestroy()
    print("OnDestroy")
end

function Quest73519:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73519:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73519:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30343Data.alias, 0, true)
end

function Quest73519:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73519:OnSubStart7351902(arg1)
    print("OnSubStart7351902")
end

function Quest73519:OnSubFinish7351902(arg1)
    print("OnSubFinish7351902")
end

function Quest73519:OnSubStart7351901(arg1)
    print("OnSubStart7351901")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc30343Data.alias, 1, true)
end

function Quest73519:OnSubFinish7351901(arg1)
    print("OnSubFinish7351901")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30343Data.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1350)
    end)
end

return Quest73519
