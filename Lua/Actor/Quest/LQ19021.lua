require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19021 = class("Quest19021", QuestActorProxy)
Quest19021.defaultAlias = "Quest19021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19021:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1902101"] = self.OnSubStart1902101}
end

function Quest19021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1902101"] = self.OnSubFinish1902101}
end

function Quest19021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1902101"] = self.OnSubFailed1902101}
end

function Quest19021:Start()
    print("Start")
end

function Quest19021:OnDestroy()
    print("OnDestroy")
end

function Quest19021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19021:OnSubStart1902101(arg1)
    print("OnSubStart1902101")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902101)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
end

function Quest19021:OnSubFinish1902101(arg1)
    print("OnSubFinish1902101")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19021:OnSubFailed1902101(arg1)
    print("OnSubFailed1902101")
end

return Quest19021
