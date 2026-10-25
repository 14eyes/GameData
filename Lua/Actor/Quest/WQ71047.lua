require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71047 = class("Quest71047", QuestActorProxy)
Quest71047.defaultAlias = "Quest71047"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71047:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71047:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7104701"] = self.OnSubStart7104701, ["7104702"] = self.OnSubStart7104702}
end

function Quest71047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7104701"] = self.OnSubFinish7104701, ["7104702"] = self.OnSubFinish7104702}
end

function Quest71047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71047:Start()
    print("Start")
end

function Quest71047:OnDestroy()
    print("OnDestroy")
end

function Quest71047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71047:OnSubStart7104701(arg1)
    print("OnSubStart7104701")
end

function Quest71047:OnSubFinish7104701(arg1)
    print("OnSubFinish7104701")
end

function Quest71047:OnSubStart7104702(arg1)
    print("OnSubStart7104702")
    self:TransmitPlayerById(arg1, 1)
end

function Quest71047:OnSubFinish7104702(arg1)
    print("OnSubFinish7104702")
end

return Quest71047
