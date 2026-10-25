require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73679 = class("Quest73679", QuestActorProxy)
Quest73679.defaultAlias = "Quest73679"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73679:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73679:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367901"] = self.OnSubStart7367901, ["7367902"] = self.OnSubStart7367902}
end

function Quest73679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367901"] = self.OnSubFinish7367901, ["7367902"] = self.OnSubFinish7367902}
end

function Quest73679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73679:Start()
    print("Start")
end

function Quest73679:OnDestroy()
    print("OnDestroy")
end

function Quest73679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73679:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30259Data.alias, 3)
end

function Quest73679:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73679:OnSubStart7367901(arg1)
    print("OnSubStart7367901")
    self:CreateQuestNpc(arg1, npcs.Npc30247Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30247Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc30259Data.id, 2)
    local v = self:GetQuestNpcActor(npcs.Npc30259Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest73679:OnSubFinish7367901(arg1)
    print("OnSubFinish7367901")
    self:NpcDestroy(npcs.Npc30247Data.alias, 3)
    self:NpcDestroy(npcs.Npc30259Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc30247Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30259Data.alias):DisableInteeHeadCtrl(false)
end

function Quest73679:OnSubStart7367902(arg1)
    print("OnSubStart7367902")
end

function Quest73679:OnSubFinish7367902(arg1)
    print("OnSubFinish7367902")
end

return Quest73679
