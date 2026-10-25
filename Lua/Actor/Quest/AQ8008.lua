require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8008 = class("Quest8008", QuestActorProxy)
Quest8008.defaultAlias = "Quest8008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest8008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest8008:OnSubStartHandlerBuild()
    self.subStartHandlers = {["800802"] = self.OnSubStart800802, ["800801"] = self.OnSubStart800801}
end

function Quest8008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["800802"] = self.OnSubFinish800802, ["800801"] = self.OnSubFinish800801}
end

function Quest8008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest8008:Start()
    print("Start")
end

function Quest8008:OnDestroy()
    print("OnDestroy")
end

function Quest8008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8008:OnSubStart800801(arg1)
    print("OnSubStart800801")
    self:CreateQuestNpc(arg1, npcs.Npc12423Data.id, 1)
end

function Quest8008:OnSubFinish800801(arg1)
    print("OnSubFinish800801")
    self:SafeDestroyQuestNpc(npcs.Npc12423Data.alias, 3)
end

return Quest8008
