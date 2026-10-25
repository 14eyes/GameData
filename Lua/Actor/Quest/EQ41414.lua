require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41414 = class("Quest41414", QuestActorProxy)
Quest41414.defaultAlias = "Quest41414"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41414:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41414:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4141401"] = self.OnSubStart4141401}
end

function Quest41414:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4141401"] = self.OnSubFinish4141401}
end

function Quest41414:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4141401"] = self.OnSubFailed4141401}
end

function Quest41414:Start()
    print("Start")
end

function Quest41414:OnDestroy()
    print("OnDestroy")
end

function Quest41414:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41414:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41414:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41414:OnSubStart4141401(arg1)
    print("OnSubStart4141401")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.DilucData.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.GaiaData.alias)
    self:GetQuestNpcActor(npcs.Npc1020Data.alias):SitOnChair()
    self:NotifyTo("Npc1465", 1, true)
end

function Quest41414:OnSubFinish4141401(arg1)
    print("OnSubFinish4141401")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1009)
    self:NotifyTo("Npc1465", 0, true)
end

function Quest41414:OnSubFailed4141401(arg1)
    print("OnSubFailed4141401")
end

return Quest41414
