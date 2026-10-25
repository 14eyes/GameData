require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73677 = class("Quest73677", QuestActorProxy)
Quest73677.defaultAlias = "Quest73677"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73677:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73677:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367701"] = self.OnSubStart7367701, ["7367702"] = self.OnSubStart7367702}
end

function Quest73677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367701"] = self.OnSubFinish7367701, ["7367702"] = self.OnSubFinish7367702}
end

function Quest73677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73677:Start()
    print("Start")
end

function Quest73677:OnDestroy()
    print("OnDestroy")
end

function Quest73677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73677:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30247Data.alias, 3)
end

function Quest73677:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73677:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73677:OnSubStart7367701(arg1)
    print("OnSubStart7367701")
    self:NpcCreate(arg1, npcs.Npc30245Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc30245Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    self:NpcCreate(arg1, npcs.Npc30247Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc30247Data.alias):DoFreeStyle(1250, true, nil, true, true, false, false)
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc30247Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc30245Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest73677:OnSubFinish7367701(arg1)
    print("OnSubFinish7367701")
    self:GetQuestNpcActor(npcs.Npc30245Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30247Data.alias):DisableInteeHeadCtrl(false)
    self:NpcDestroy(npcs.Npc30245Data.alias, 3)
    self:NpcDestroy(npcs.Npc30247Data.alias, 3)
end

function Quest73677:OnSubStart7367702(arg1)
    print("OnSubStart7367702")
end

function Quest73677:OnSubFinish7367702(arg1)
    print("OnSubFinish7367702")
end

return Quest73677
