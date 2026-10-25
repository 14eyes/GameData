require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72717 = class("Quest72717", QuestActorProxy)
Quest72717.defaultAlias = "Quest72717"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72717:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72717:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271701"] = self.OnSubStart7271701, ["7271702"] = self.OnSubStart7271702}
end

function Quest72717:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271701"] = self.OnSubFinish7271701, ["7271702"] = self.OnSubFinish7271702}
end

function Quest72717:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271701"] = self.OnSubFailed7271701, ["7271702"] = self.OnSubFailed7271702}
end

function Quest72717:Start()
    print("Start")
end

function Quest72717:OnDestroy()
    print("OnDestroy")
end

function Quest72717:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72717:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72717:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3010Data.alias, 0, true)
end

function Quest72717:OnSubStart7271701(arg1)
    print("OnSubStart7271701")
    self:NotifyTo(npcs.Npc3010Data.alias, 2, true)
end

function Quest72717:OnSubFinish7271701(arg1)
    print("OnSubFinish7271701")
end

function Quest72717:OnSubFailed7271701(arg1)
    print("OnSubFailed7271701")
end

function Quest72717:OnSubStart7271702(arg1)
    print("OnSubStart7271702")
end

function Quest72717:OnSubFinish7271702(arg1)
    print("OnSubFinish7271702")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3010Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72717:OnSubFailed7271702(arg1)
    print("OnSubFailed7271702")
end

return Quest72717
