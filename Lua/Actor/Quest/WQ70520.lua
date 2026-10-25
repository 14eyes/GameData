require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70520 = class("Quest70520", QuestActorProxy)
Quest70520.defaultAlias = "Quest70520"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70520:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70520:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052001"] = self.OnSubStart7052001}
end

function Quest70520:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052001"] = self.OnSubFinish7052001}
end

function Quest70520:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70520:Start()
    print("Start")
end

function Quest70520:OnDestroy()
    print("OnDestroy")
end

function Quest70520:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70520:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70520:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30234Data.alias, 0, true)
end

function Quest70520:OnSubStart7052001(arg1)
    print("OnSubStart7052001")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("Q7052001NPCTrigger", 7052001, 30234, 1, 8, 1)
        arg1:NotifyTo(npcs.Npc30234Data.alias, 1, true)
    end)
end

function Quest70520:OnSubFinish7052001(arg1)
    print("OnSubFinish7052001")
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30234Data.alias, 0, true)
end

return Quest70520
