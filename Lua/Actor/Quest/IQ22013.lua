require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22013 = class("Quest22013", QuestActorProxy)
Quest22013.defaultAlias = "Quest22013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201301"] = self.OnSubStart2201301,
        ["2201302"] = self.OnSubStart2201302,
        ["2201303"] = self.OnSubStart2201303,
        ["2201304"] = self.OnSubStart2201304,
        ["2201305"] = self.OnSubStart2201305
    }
end

function Quest22013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201301"] = self.OnSubFinish2201301,
        ["2201302"] = self.OnSubFinish2201302,
        ["2201303"] = self.OnSubFinish2201303,
        ["2201304"] = self.OnSubFinish2201304,
        ["2201305"] = self.OnSubFinish2201305
    }
end

function Quest22013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201301"] = self.OnSubFailed2201301,
        ["2201302"] = self.OnSubFailed2201302,
        ["2201303"] = self.OnSubFailed2201303,
        ["2201304"] = self.OnSubFailed2201304,
        ["2201305"] = self.OnSubFailed2201305
    }
end

function Quest22013:Start()
    print("Start")
end

function Quest22013:OnDestroy()
    print("OnDestroy")
end

function Quest22013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3024Data.alias, 3)
end

function Quest22013:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22013:OnSubStart2201301(arg1)
    print("OnSubStart2201301")
    self:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3033Data.id, 2)
end

function Quest22013:OnSubFinish2201301(arg1)
    print("OnSubFinish2201301")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:CreateQuestNpcById(2201302, npcs.Npc3032Data.id, 1)
        end, nil, nil, "")
    end)
end

function Quest22013:OnSubFailed2201301(arg1)
    print("OnSubFailed2201301")
end

function Quest22013:OnSubStart2201302(arg1)
    print("OnSubStart2201302")
    self:CreateQuestNpc(arg1, npcs.Npc3023Data.id, 2)
end

function Quest22013:OnSubFinish2201302(arg1)
    print("OnSubFinish2201302")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:CreateQuestNpcById(2201303, npcs.Npc3032Data.id, 1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3023Data.alias, 3)
    end, nil, nil, "")
end

function Quest22013:OnSubFailed2201302(arg1)
    print("OnSubFailed2201302")
end

function Quest22013:OnSubStart2201303(arg1)
    print("OnSubStart2201303")
    self:CreateQuestNpc(arg1, npcs.Npc3021Data.id, 2)
end

function Quest22013:OnSubFinish2201303(arg1)
    print("OnSubFinish2201303")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:CreateQuestNpcById(2201304, npcs.Npc3032Data.id, 1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3021Data.alias, 3)
    end, nil, nil, "")
end

function Quest22013:OnSubFailed2201303(arg1)
    print("OnSubFailed2201303")
end

function Quest22013:OnSubStart2201304(arg1)
    print("OnSubStart2201304")
    self:CreateQuestNpc(arg1, npcs.Npc3024Data.id, 2)
end

function Quest22013:OnSubFinish2201304(arg1)
    print("OnSubFinish2201304")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:CreateQuestNpcById(2201305, npcs.Npc3032Data.id, 1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3024Data.alias, 3)
    end, nil, nil, "")
end

function Quest22013:OnSubFailed2201304(arg1)
    print("OnSubFailed2201304")
end

function Quest22013:OnSubStart2201305(arg1)
    print("OnSubStart2201305")
end

function Quest22013:OnSubFinish2201305(arg1)
    print("OnSubFinish2201305")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3032Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3033Data.alias)
end

function Quest22013:OnSubFailed2201305(arg1)
    print("OnSubFailed2201305")
end

return Quest22013
