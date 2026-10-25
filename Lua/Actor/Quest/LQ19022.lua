require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19022 = class("Quest19022", QuestActorProxy)
Quest19022.defaultAlias = "Quest19022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19022:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1902201"] = self.OnSubStart1902201, ["1902202"] = self.OnSubStart1902202}
end

function Quest19022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1902201"] = self.OnSubFinish1902201, ["1902202"] = self.OnSubFinish1902202}
end

function Quest19022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1902201"] = self.OnSubFailed1902201, ["1902202"] = self.OnSubFailed1902202}
end

function Quest19022:Start()
    print("Start")
end

function Quest19022:OnDestroy()
    print("OnDestroy")
end

function Quest19022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10901Data.alias, 3)
end

function Quest19022:OnSubStart1902201(arg1)
    print("OnSubStart1902201")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902201)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10901Data.id, 2)
end

function Quest19022:OnSubFinish1902201(arg1)
    print("OnSubFinish1902201")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10901Data.alias, 3)
end

function Quest19022:OnSubFailed1902201(arg1)
    print("OnSubFailed1902201")
end

function Quest19022:OnSubStart1902202(arg1)
    print("OnSubStart1902202")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902202)
end

function Quest19022:OnSubFinish1902202(arg1)
    print("OnSubFinish1902202")
end

function Quest19022:OnSubFailed1902202(arg1)
    print("OnSubFailed1902202")
end

return Quest19022
