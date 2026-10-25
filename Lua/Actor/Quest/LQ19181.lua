require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19181 = class("Quest19181", QuestActorProxy)
Quest19181.defaultAlias = "Quest19181"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points

function Quest19181:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
end

function Quest19181:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1918101"] = self.OnSubStart1918101}
end

function Quest19181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1918101"] = self.OnSubFinish1918101}
end

function Quest19181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19181:Start()
    print("Start")
end

function Quest19181:OnDestroy()
    print("OnDestroy")
end

function Quest19181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19181:OnSubStart1918101(arg1)
    print("OnSubStart1918101")
end

function Quest19181:OnSubFinish1918101(arg1)
    print("OnSubFinish1918101")
end

return Quest19181
