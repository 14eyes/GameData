require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73657 = class("Quest73657", QuestActorProxy)
Quest73657.defaultAlias = "Quest73657"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73657:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365701"] = self.OnSubStart7365701, ["7365702"] = self.OnSubStart7365702}
end

function Quest73657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365701"] = self.OnSubFinish7365701, ["7365702"] = self.OnSubFinish7365702}
end

function Quest73657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73657:Start()
    print("Start")
end

function Quest73657:OnDestroy()
    print("OnDestroy")
end

function Quest73657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73657:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4040Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4040Data.alias, 0, true)
end

function Quest73657:OnSubStart7365701(arg1)
    print("OnSubStart7365701")
    self:NotifyTo(npcs.Npc4040Data.alias, 2, true)
end

function Quest73657:OnSubFinish7365701(arg1)
    print("OnSubFinish7365701")
end

function Quest73657:OnSubStart7365702(arg1)
    print("OnSubStart7365702")
end

function Quest73657:OnSubFinish7365702(arg1)
    print("OnSubFinish7365702")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4040Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73657
