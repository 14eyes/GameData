require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72500 = class("Quest72500", QuestActorProxy)
Quest72500.defaultAlias = "Quest72500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72500:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7250001"] = self.OnSubStart7250001}
end

function Quest72500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7250001"] = self.OnSubFinish7250001}
end

function Quest72500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72500:Start()
    print("Start")
end

function Quest72500:OnDestroy()
    print("OnDestroy")
end

function Quest72500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30189Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30188Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30188Data.alias, 0, true)
end

function Quest72500:OnSubStart7250001(arg1)
    print("OnSubStart7250001")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("Q7250001Trigger", 7250001, 30189, 1, 20, 1)
    end)
end

function Quest72500:OnSubFinish7250001(arg1)
    print("OnSubFinish7250001")
    self:SafeDestroyQuestNpc(npcs.Npc30189Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30190Data.alias, 0, true)
end

return Quest72500
