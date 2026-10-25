require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73263 = class("Quest73263", QuestActorProxy)
Quest73263.defaultAlias = "Quest73263"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73263:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73263:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326301"] = self.OnSubStart7326301,
        ["7326302"] = self.OnSubStart7326302,
        ["7326303"] = self.OnSubStart7326303,
        ["7326304"] = self.OnSubStart7326304,
        ["7326305"] = self.OnSubStart7326305
    }
end

function Quest73263:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326301"] = self.OnSubFinish7326301,
        ["7326302"] = self.OnSubFinish7326302,
        ["7326303"] = self.OnSubFinish7326303,
        ["7326304"] = self.OnSubFinish7326304,
        ["7326305"] = self.OnSubFinish7326305
    }
end

function Quest73263:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73263:Start()
    print("Start")
end

function Quest73263:OnDestroy()
    print("OnDestroy")
end

function Quest73263:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73263:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73263:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73263:OnSubStart7326301(arg1)
    print("OnSubStart7326301")
    self:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20656Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73263:OnSubFinish7326301(arg1)
    print("OnSubFinish7326301")
    self:SafeDestroyQuestNpc(npcs.Npc20656Data.alias, 3)
end

function Quest73263:OnSubStart7326302(arg1)
    print("OnSubStart7326302")
end

function Quest73263:OnSubFinish7326302(arg1)
    print("OnSubFinish7326302")
end

function Quest73263:OnSubStart7326303(arg1)
    print("OnSubStart7326303")
end

function Quest73263:OnSubFinish7326303(arg1)
    print("OnSubFinish7326303")
end

function Quest73263:OnSubStart7326304(arg1)
    print("OnSubStart7326304")
end

function Quest73263:OnSubFinish7326304(arg1)
    print("OnSubFinish7326304")
end

function Quest73263:OnSubStart7326305(arg1)
    print("OnSubStart7326305")
end

function Quest73263:OnSubFinish7326305(arg1)
    print("OnSubFinish7326305")
end

return Quest73263
