require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73654 = class("Quest73654", QuestActorProxy)
Quest73654.defaultAlias = "Quest73654"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73654:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73654:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365401"] = self.OnSubStart7365401, ["7365402"] = self.OnSubStart7365402}
end

function Quest73654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365401"] = self.OnSubFinish7365401, ["7365402"] = self.OnSubFinish7365402}
end

function Quest73654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73654:Start()
    print("Start")
end

function Quest73654:OnDestroy()
    print("OnDestroy")
end

function Quest73654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73654:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4161Data.alias, 0, true)
end

function Quest73654:OnSubStart7365401(arg1)
    print("OnSubStart7365401")
    self:NotifyTo(npcs.Npc4161Data.alias, 2, true)
end

function Quest73654:OnSubFinish7365401(arg1)
    print("OnSubFinish7365401")
end

function Quest73654:OnSubStart7365402(arg1)
    print("OnSubStart7365402")
end

function Quest73654:OnSubFinish7365402(arg1)
    print("OnSubFinish7365402")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4161Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73654
