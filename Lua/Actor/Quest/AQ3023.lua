require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3023 = class("Quest3023", QuestActorProxy)
Quest3023.defaultAlias = "Quest3023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest3023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest3023:OnSubStartHandlerBuild()
    self.subStartHandlers = {["302301"] = self.OnSubStart302301}
end

function Quest3023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["302301"] = self.OnSubFinish302301}
end

function Quest3023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3023:Start()
    print("Start")
end

function Quest3023:OnDestroy()
    print("OnDestroy")
end

function Quest3023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3023:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest3023:OnSubStart302301(arg1)
    print("OnSubStart302301")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1058Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1059Data.id, 3)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1053Data.id, 4)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1053Data.alias)
        questNpcActor:SitOnChair(8066)
        arg1:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        arg1:GetQuestNpcActor(npcs.Npc1059Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest3023:OnSubFinish302301(arg1)
    print("OnSubFinish302301")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1077)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 1077)
    self:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 1077)
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1077)
    self:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(false)
end

return Quest3023
