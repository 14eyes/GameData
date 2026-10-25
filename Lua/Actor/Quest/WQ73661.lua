require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73661 = class("Quest73661", QuestActorProxy)
Quest73661.defaultAlias = "Quest73661"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73661:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73661:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366101"] = self.OnSubStart7366101, ["7366102"] = self.OnSubStart7366102}
end

function Quest73661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366101"] = self.OnSubFinish7366101, ["7366102"] = self.OnSubFinish7366102}
end

function Quest73661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73661:Start()
    print("Start")
end

function Quest73661:OnDestroy()
    print("OnDestroy")
end

function Quest73661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73661:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4105Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4105Data.alias, 0, true)
end

function Quest73661:OnSubStart7366101(arg1)
    print("OnSubStart7366101")
    self:NotifyTo(npcs.Npc4105Data.alias, 2, true)
end

function Quest73661:OnSubFinish7366101(arg1)
    print("OnSubFinish7366101")
end

function Quest73661:OnSubStart7366102(arg1)
    print("OnSubStart7366102")
end

function Quest73661:OnSubFinish7366102(arg1)
    print("OnSubFinish7366102")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4105Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73661
