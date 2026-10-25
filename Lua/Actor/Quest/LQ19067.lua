require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19067 = class("Quest19067", QuestActorProxy)
Quest19067.defaultAlias = "Quest19067"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19067:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19067:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1906701"] = self.OnSubStart1906701, ["1906702"] = self.OnSubStart1906702}
end

function Quest19067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1906701"] = self.OnSubFinish1906701, ["1906702"] = self.OnSubFinish1906702}
end

function Quest19067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1906701"] = self.OnSubFailed1906701, ["1906702"] = self.OnSubFailed1906702}
end

function Quest19067:Start()
    print("Start")
end

function Quest19067:OnDestroy()
    print("OnDestroy")
end

function Quest19067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19067:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.ClearALL)
end

function Quest19067:ClearNoel()
    print("ClearNoel")
    self:DestroyQuestNpcActor(npcs.Npc1027Data.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
end

function Quest19067:NarratorStartNoel()
    print("NarratorStartNoel")
    self:NarratorOnlyTaskByData(datas.NarratorStartNoel)
end

function Quest19067:ClearALL()
    print("ClearALL")
    self:DestroyQuestNpcActor(npcs.Npc140101Data.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc1027Data.alias, 3)
end

function Quest19067:OnSubStart1906701(arg1)
    print("OnSubStart1906701")
    self.SetNavigationByMainId(self, 19067, true)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc140101Data.id, 2)
    end)

    self.CallDelay(self, 5, self.NarratorStartNoel)
end

function Quest19067:OnSubFinish1906701(arg1)
    print("OnSubFinish1906701")
end

function Quest19067:OnSubFailed1906701(arg1)
    print("OnSubFailed1906701")
end

function Quest19067:OnSubStart1906702(arg1)
    print("OnSubStart1906702")
    self.RequestCoopInteractionFromSubStartPoint(self, 103401, 1906701)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
        self:RequestInteraction(npcs.Npc140101Data.alias)
    end)

    self.ShowBlackScreen(self, 0.1, 1.2, 0.5, nil, nil, nil, "")
end

function Quest19067:OnSubFinish1906702(arg1)
    print("OnSubFinish1906702")
    self:ActionSafeCall(self.ClearALL)
end

function Quest19067:OnSubFailed1906702(arg1)
    print("OnSubFailed1906702")
end

return Quest19067
