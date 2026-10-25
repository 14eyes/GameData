require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19112 = class("Quest19112", QuestActorProxy)
Quest19112.defaultAlias = "Quest19112"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19112:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19112:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1911201"] = self.OnSubStart1911201}
end

function Quest19112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1911201"] = self.OnSubFinish1911201}
end

function Quest19112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1911201"] = self.OnSubFailed1911201}
end

function Quest19112:Start()
    print("Start")
end

function Quest19112:OnDestroy()
    print("OnDestroy")
end

function Quest19112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19112:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19112:OnSubStart1911201(arg1)
    print("OnSubStart1911201")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911201)
end

function Quest19112:OnSubFinish1911201(arg1)
    print("OnSubFinish1911201")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19112:OnSubFailed1911201(arg1)
    print("OnSubFailed1911201")
end

return Quest19112
