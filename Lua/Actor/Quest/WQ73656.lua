require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73656 = class("Quest73656", QuestActorProxy)
Quest73656.defaultAlias = "Quest73656"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73656:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73656:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365601"] = self.OnSubStart7365601, ["7365602"] = self.OnSubStart7365602}
end

function Quest73656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365601"] = self.OnSubFinish7365601, ["7365602"] = self.OnSubFinish7365602}
end

function Quest73656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73656:Start()
    print("Start")
end

function Quest73656:OnDestroy()
    print("OnDestroy")
end

function Quest73656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73656:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc4007Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4007Data.alias, 0, true)
end

function Quest73656:OnSubStart7365601(arg1)
    print("OnSubStart7365601")
    this:NotifyTo(npcs.Npc4007Data.alias, 2, true)
end

function Quest73656:OnSubFinish7365601(arg1)
    print("OnSubFinish7365601")
end

function Quest73656:OnSubStart7365602(arg1)
    print("OnSubStart7365602")
    this:NotifyTo(npcs.Npc4007Data.alias, 2, true)
end

function Quest73656:OnSubFinish7365602(arg1)
    print("OnSubFinish7365602")
    this:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc4007Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73656
