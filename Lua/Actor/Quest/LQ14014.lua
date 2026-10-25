require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14014 = class("Quest14014", QuestActorProxy)
Quest14014.defaultAlias = "Quest14014"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest14014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest14014:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1401401"] = self.OnSubStart1401401}
end

function Quest14014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1401401"] = self.OnSubFinish1401401}
end

function Quest14014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1401401"] = self.OnSubFailed1401401}
end

function Quest14014:Start()
    print("Start")
end

function Quest14014:OnDestroy()
    print("OnDestroy")
end

function Quest14014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14014:OnSubStart1401401(arg1)
    print("OnSubStart1401401")
end

function Quest14014:OnSubFinish1401401(arg1)
    print("OnSubFinish1401401")
end

function Quest14014:OnSubFailed1401401(arg1)
    print("OnSubFailed1401401")
    this:PlayerEnterDungeonPointWithDialogs(2, 1188, 1401401, 1, nil, 0, nil, nil)
end

return Quest14014
