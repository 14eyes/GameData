require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19081 = class("Quest19081", QuestActorProxy)
Quest19081.defaultAlias = "Quest19081"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19081:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19081:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1908101"] = self.OnSubStart1908101}
end

function Quest19081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1908101"] = self.OnSubFinish1908101}
end

function Quest19081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1908101"] = self.OnSubFailed1908101}
end

function Quest19081:Start()
    print("Start")
end

function Quest19081:OnDestroy()
    print("OnDestroy")
end

function Quest19081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19081:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1004)
end

function Quest19081:destroynpc()
    print("destroynpc")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1004)
end

function Quest19081:OnSubStart1908101(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908101)
    self:GetQuestNpcActor(npcs.Npc1027Data.alias):DoFreeStyle(1190, true, nil, true, true)
    actorMgr:DestroyNpcActorByAlias("Npc102719068")
end

function Quest19081:OnSubFinish1908101(arg1)
    print("OnSubFinish1908101")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest19081:OnSubFailed1908101(arg1)
    print("OnSubFailed1908101")
end

return Quest19081
