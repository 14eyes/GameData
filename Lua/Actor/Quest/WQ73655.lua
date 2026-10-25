require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73655 = class("Quest73655", QuestActorProxy)
Quest73655.defaultAlias = "Quest73655"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73655:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73655:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365501"] = self.OnSubStart7365501, ["7365502"] = self.OnSubStart7365502}
end

function Quest73655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365501"] = self.OnSubFinish7365501, ["7365502"] = self.OnSubFinish7365502}
end

function Quest73655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73655:Start()
    print("Start")
end

function Quest73655:OnDestroy()
    print("OnDestroy")
end

function Quest73655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73655:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4164Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4164Data.alias, 0, true)
end

function Quest73655:OnSubStart7365501(arg1)
    print("OnSubStart7365501")
    self:NotifyTo(npcs.Npc4164Data.alias, 2, true)
end

function Quest73655:OnSubFinish7365501(arg1)
    print("OnSubFinish7365501")
end

function Quest73655:OnSubStart7365502(arg1)
    print("OnSubStart7365502")
end

function Quest73655:OnSubFinish7365502(arg1)
    print("OnSubFinish7365502")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4164Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73655
