require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72650 = class("Quest72650", QuestActorProxy)
Quest72650.defaultAlias = "Quest72650"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72650:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265001"] = self.OnSubStart7265001}
end

function Quest72650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265001"] = self.OnSubFinish7265001}
end

function Quest72650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265001"] = self.OnSubFailed7265001}
end

function Quest72650:Start()
    print("Start")
end

function Quest72650:OnDestroy()
    print("OnDestroy")
end

function Quest72650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72650:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30054Data.alias, 3)
end

function Quest72650:OnSubStart7265001(arg1)
    print("OnSubStart7265001")
    self:CreateQuestNpc(arg1, npcs.Npc30054Data.id, 1)
end

function Quest72650:OnSubFinish7265001(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc30054Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:ActionSafeCall(function()
        actorUtils.ShowActivityPage(5034)
    end)
end

function Quest72650:OnSubFailed7265001(arg1)
    print("OnSubFailed7265001")
end

return Quest72650
