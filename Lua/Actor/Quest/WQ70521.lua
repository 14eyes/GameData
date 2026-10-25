require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70521 = class("Quest70521", QuestActorProxy)
Quest70521.defaultAlias = "Quest70521"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70521:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70521:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052101"] = self.OnSubStart7052101, ["7052102"] = self.OnSubStart7052102}
end

function Quest70521:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052101"] = self.OnSubFinish7052101, ["7052102"] = self.OnSubFinish7052102}
end

function Quest70521:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70521:Start()
    print("Start")
end

function Quest70521:OnDestroy()
    print("OnDestroy")
end

function Quest70521:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70521:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70521:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30234Data.alias, 0, true)
end

function Quest70521:OnSubStart7052101(arg1)
    print("OnSubStart7052101")
    self:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7052101)
        arg1:NotifyTo(npcs.Npc30234Data.alias, 1, true)
    end)
end

function Quest70521:OnSubFinish7052101(arg1)
    print("OnSubFinish7052101")
end

function Quest70521:OnSubStart7052102(arg1)
    print("OnSubStart7052102")
    self:CreateQuestNpcWithTriggerBlack("Q7052102NPCTrigger", 7052102, 30234, 1, 15, 1)
    self:NotifyTo(npcs.Npc30234Data.alias, 1, true)
end

function Quest70521:OnSubFinish7052102(arg1)
    print("OnSubFinish7052102")
    self:LightNotifyTo(npcs.Npc30234Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
end

return Quest70521
