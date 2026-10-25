require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23015 = class("Quest23015", QuestActorProxy)
Quest23015.defaultAlias = "Quest23015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301501"] = self.OnSubStart2301501,
        ["2301502"] = self.OnSubStart2301502,
        ["2301503"] = self.OnSubStart2301503
    }
end

function Quest23015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301501"] = self.OnSubFinish2301501,
        ["2301502"] = self.OnSubFinish2301502,
        ["2301503"] = self.OnSubFinish2301503
    }
end

function Quest23015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23015:Start()
    print("Start")
end

function Quest23015:OnDestroy()
    print("OnDestroy")
end

function Quest23015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest23015:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23015:OnSubStart2301501(arg1)
    print("OnSubStart2301501")
    self:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1171, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 3)
end

function Quest23015:OnSubFinish2301501(arg1)
    print("OnSubFinish2301501")
end

function Quest23015:OnSubStart2301502(arg1)
    print("OnSubStart2301502")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc4042Data.alias)
    questNpcActor:EnableHeadCtrl(false)
    local v = self:GetQuestNpcActor(npcs.Npc20657Data.alias)
    v:EnableHeadCtrl(false)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, true)
    v:DoFreeStyle(1170, true, nil, true, true, true)
end

function Quest23015:OnSubFinish2301502(arg1)
    print("OnSubFinish2301502")
    self:GetQuestNpcActor(npcs.Npc4042Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):EnableHeadCtrl(true)
end

function Quest23015:OnSubStart2301503(arg1)
    print("OnSubStart2301503")
    self:GetQuestNpcActor(npcs.Npc4042Data.alias):DoFreeStyle(1120, true, nil, true, true, true)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1170, true, nil, true, true, true)
end

function Quest23015:OnSubFinish2301503(arg1)
    print("OnSubFinish2301503")
    self:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20657Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

return Quest23015
