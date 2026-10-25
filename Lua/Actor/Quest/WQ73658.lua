require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73658 = class("Quest73658", QuestActorProxy)
Quest73658.defaultAlias = "Quest73658"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73658:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365801"] = self.OnSubStart7365801, ["7365802"] = self.OnSubStart7365802}
end

function Quest73658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365801"] = self.OnSubFinish7365801, ["7365802"] = self.OnSubFinish7365802}
end

function Quest73658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73658:Start()
    print("Start")
end

function Quest73658:OnDestroy()
    print("OnDestroy")
end

function Quest73658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73658:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4061Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
end

function Quest73658:OnSubStart7365801(arg1)
    print("OnSubStart7365801")
    self:NotifyTo(npcs.Npc4061Data.alias, 2, true)
end

function Quest73658:OnSubFinish7365801(arg1)
    print("OnSubFinish7365801")
end

function Quest73658:OnSubStart7365802(arg1)
    print("OnSubStart7365802")
end

function Quest73658:OnSubFinish7365802(arg1)
    print("OnSubFinish7365802")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73658
