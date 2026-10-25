require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41115 = class("Quest41115", QuestActorProxy)
Quest41115.defaultAlias = "Quest41115"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41115:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41115:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4111501"] = self.OnSubStart4111501}
end

function Quest41115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4111501"] = self.OnSubFinish4111501}
end

function Quest41115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4111501"] = self.OnSubFailed4111501}
end

function Quest41115:Start()
    print("Start")
end

function Quest41115:OnDestroy()
    print("OnDestroy")
end

function Quest41115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41115:OnSubStart4111501(arg1)
    print("OnSubStart4111501")
    self:CreateQuestNpc(arg1, npcs.Npc30002Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30005Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30006Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc30002Data.alias):DoFreeStyle(4000)
    self:GetQuestNpcActor(npcs.Npc30005Data.alias):DoFreeStyle(4130)
    self:GetQuestNpcActor(npcs.Npc30006Data.alias):DoFreeStyle(4130)
end

function Quest41115:OnSubFinish4111501(arg1)
    print("OnSubFinish4111501")
end

function Quest41115:OnSubFailed4111501(arg1)
    print("OnSubFailed4111501")
end

return Quest41115
