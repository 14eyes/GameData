require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73513 = class("Quest73513", QuestActorProxy)
Quest73513.defaultAlias = "Quest73513"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73513:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73513:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351302"] = self.OnSubStart7351302, ["7351301"] = self.OnSubStart7351301}
end

function Quest73513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351302"] = self.OnSubFinish7351302, ["7351301"] = self.OnSubFinish7351301}
end

function Quest73513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73513:Start()
    print("Start")
end

function Quest73513:OnDestroy()
    print("OnDestroy")
end

function Quest73513:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73513:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
end

function Quest73513:OnSubStart7351302(arg1)
    print("OnSubStart7351302")
end

function Quest73513:OnSubFinish7351302(arg1)
    print("OnSubFinish7351302")
end

function Quest73513:OnSubStart7351301(arg1)
    print("OnSubStart7351301")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc30342Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30343Data.alias):DisableInteeHeadCtrl(true)
end

function Quest73513:OnSubFinish7351301(arg1)
    print("OnSubFinish7351301")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1348)
    end)
end

return Quest73513
