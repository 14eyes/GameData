require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19010 = class("Quest19010", QuestActorProxy)
Quest19010.defaultAlias = "Quest19010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19010:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1901001"] = self.OnSubStart1901001}
end

function Quest19010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1901001"] = self.OnSubFinish1901001}
end

function Quest19010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1901001"] = self.OnSubFailed1901001}
end

function Quest19010:Start()
    print("Start")
end

function Quest19010:OnDestroy()
    print("OnDestroy")
end

function Quest19010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
end

function Quest19010:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19010:OnSubStart1901001(arg1)
    print("OnSubStart1901001")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901001)
end

function Quest19010:OnSubFinish1901001(arg1)
    print("OnSubFinish1901001")
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
end

function Quest19010:OnSubFailed1901001(arg1)
    print("OnSubFailed1901001")
end

return Quest19010
