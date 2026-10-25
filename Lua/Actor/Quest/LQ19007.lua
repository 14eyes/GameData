require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19007 = class("Quest19007", QuestActorProxy)
Quest19007.defaultAlias = "Quest19007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19007:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1900701"] = self.OnSubStart1900701, ["1900702"] = self.OnSubStart1900702}
end

function Quest19007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1900701"] = self.OnSubFinish1900701, ["1900702"] = self.OnSubFinish1900702}
end

function Quest19007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1900701"] = self.OnSubFailed1900701, ["1900702"] = self.OnSubFailed1900702}
end

function Quest19007:Start()
    print("Start")
end

function Quest19007:OnDestroy()
    print("OnDestroy")
end

function Quest19007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19007:CallDelay1900702()
    print("CallDelay1900702")
    self:ShowBlackScreen(0.2, 1, 0, self.CallDelay1900702BlackKeep, nil, nil, "")
end

function Quest19007:CallDelay1900702BlackKeep()
    print("CallDelay1900702BlackKeep")
    self:CreateQuestNpcById(1900702, npcs.Coop_BarbaraData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900701)
    self:RequestInteraction(npcs.Coop_BarbaraData.alias)
end

function Quest19007:OnSubStart1900701(arg1)
    print("OnSubStart1900701")
end

function Quest19007:OnSubFinish1900701(arg1)
    print("OnSubFinish1900701")
end

function Quest19007:OnSubFailed1900701(arg1)
    print("OnSubFailed1900701")
end

function Quest19007:OnSubStart1900702(arg1)
    print("OnSubStart1900702")
    self:NarratorOnlyTaskByData(datas.NarratorWithId19006002, self.CallDelay1900702)
end

function Quest19007:OnSubFinish1900702(arg1)
    print("OnSubFinish1900702")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19007:OnSubFailed1900702(arg1)
    print("OnSubFailed1900702")
end

return Quest19007
