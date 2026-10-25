require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13004 = class("Quest13004", QuestActorProxy)
Quest13004.defaultAlias = "Quest13004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest13004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13004:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1300401"] = self.OnSubStart1300401}
end

function Quest13004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1300401"] = self.OnSubFinish1300401}
end

function Quest13004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13004:Start()
    print("Start")
end

function Quest13004:OnDestroy()
    print("OnDestroy")
end

function Quest13004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13004:OnSubStart1300401(arg1)
    print("OnSubStart1300401")
    self:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12747Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12748Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12686Data.id, 4)
    self:NotifyTo(npcs.Npc4234Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4295Data.alias, 1, true)
end

function Quest13004:OnSubFinish1300401(arg1)
    print("OnSubFinish1300401")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12747Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12748Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12686Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4234Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4295Data.alias, 0, true)
end

return Quest13004
