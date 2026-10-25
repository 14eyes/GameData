require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19113 = class("Quest19113", QuestActorProxy)
Quest19113.defaultAlias = "Quest19113"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19113:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19113:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1911301"] = self.OnSubStart1911301, ["1911302"] = self.OnSubStart1911302}
end

function Quest19113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1911301"] = self.OnSubFinish1911301, ["1911302"] = self.OnSubFinish1911302}
end

function Quest19113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1911301"] = self.OnSubFailed1911301, ["1911302"] = self.OnSubFailed1911302}
end

function Quest19113:Start()
    print("Start")
end

function Quest19113:OnDestroy()
    print("OnDestroy")
end

function Quest19113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19113:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19113:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 1911302)
    end
end

function Quest19113:OnSubStart1911301(arg1)
    print("OnSubStart1911301")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911301)
end

function Quest19113:OnSubFinish1911301(arg1)
    print("OnSubFinish1911301")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19113:OnSubFailed1911301(arg1)
    print("OnSubFailed1911301")
end

function Quest19113:OnSubStart1911302(arg1)
    print("OnSubStart1911302")
end

function Quest19113:OnSubFinish1911302(arg1)
    print("OnSubFinish1911302")
end

function Quest19113:OnSubFailed1911302(arg1)
    print("OnSubFailed1911302")
end

return Quest19113
