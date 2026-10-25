require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73013 = class("Quest73013", QuestActorProxy)
Quest73013.defaultAlias = "Quest73013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301301"] = self.OnSubStart7301301,
        ["7301302"] = self.OnSubStart7301302,
        ["7301303"] = self.OnSubStart7301303,
        ["7301304"] = self.OnSubStart7301304,
        ["7301305"] = self.OnSubStart7301305
    }
end

function Quest73013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301301"] = self.OnSubFinish7301301,
        ["7301302"] = self.OnSubFinish7301302,
        ["7301303"] = self.OnSubFinish7301303,
        ["7301304"] = self.OnSubFinish7301304,
        ["7301305"] = self.OnSubFinish7301305
    }
end

function Quest73013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73013:Start()
    print("Start")
end

function Quest73013:OnDestroy()
    print("OnDestroy")
end

function Quest73013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73013:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73013:OnSubStart7301301(arg1)
    print("OnSubStart7301301")
    self:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20649Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73013:OnSubFinish7301301(arg1)
    print("OnSubFinish7301301")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
end

function Quest73013:OnSubStart7301302(arg1)
    print("OnSubStart7301302")
    self:GetQuestNpcActor(npcs.Npc20649Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73013:OnSubFinish7301302(arg1)
    print("OnSubFinish7301302")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_7301302, nil, "")
    end)
end

function Quest73013:OnSubStart7301303(arg1)
    print("OnSubStart7301303")
    self:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20650Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20651Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20652Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20653Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc20649Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20650Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20651Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20652Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73013:OnSubFinish7301303(arg1)
    print("OnSubFinish7301303")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20649Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20650Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20651Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20652Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20653Data.alias)
end

function Quest73013:OnSubStart7301304(arg1)
    print("OnSubStart7301304")
end

function Quest73013:OnSubFinish7301304(arg1)
    print("OnSubFinish7301304")
end

function Quest73013:OnSubStart7301305(arg1)
    print("OnSubStart7301305")
end

function Quest73013:OnSubFinish7301305(arg1)
    print("OnSubFinish7301305")
end

return Quest73013
