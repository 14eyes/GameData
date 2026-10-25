require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72729 = class("Quest72729", QuestActorProxy)
Quest72729.defaultAlias = "Quest72729"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest72729:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72729:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7272901"] = self.OnSubStart7272901, ["7272902"] = self.OnSubStart7272902}
end

function Quest72729:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7272901"] = self.OnSubFinish7272901, ["7272902"] = self.OnSubFinish7272902}
end

function Quest72729:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72729:Start()
    print("Start")
end

function Quest72729:OnDestroy()
    print("OnDestroy")
end

function Quest72729:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72729:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72729:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:DestroyEntityActor("Q7272901N1005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7272902N1005Trigger", 3, false)
end

function Quest72729:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest72729:OnSubStart7272901(arg1)
    print("OnSubStart7272901")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7272901, 1)
end

function Quest72729:OnSubFinish7272901(arg1)
    print("OnSubFinish7272901")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72729:OnSubStart7272902(arg1)
    print("OnSubStart7272902")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7272902, 1)
end

function Quest72729:OnSubFinish7272902(arg1)
    print("OnSubFinish7272902")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest72729
