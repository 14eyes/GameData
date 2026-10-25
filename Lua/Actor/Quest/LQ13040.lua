require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13040 = class("Quest13040", QuestActorProxy)
Quest13040.defaultAlias = "Quest13040"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest13040:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13040:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1304001"] = self.OnSubStart1304001}
end

function Quest13040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1304001"] = self.OnSubFinish1304001}
end

function Quest13040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13040:Start()
    print("Start")
end

function Quest13040:OnDestroy()
    print("OnDestroy")
end

function Quest13040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13040:OnSubStart1304001(arg1)
    print("OnSubStart1304001")
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13040:OnSubFinish1304001(arg1)
    print("OnSubFinish1304001")
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13992Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
end

return Quest13040
