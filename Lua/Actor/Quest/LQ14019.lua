require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14019 = class("Quest14019", QuestActorProxy)
Quest14019.defaultAlias = "Quest14019"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest14019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest14019:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1401901"] = self.OnSubStart1401901}
end

function Quest14019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1401901"] = self.OnSubFinish1401901}
end

function Quest14019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14019:Start()
    print("Start")
end

function Quest14019:OnDestroy()
    print("OnDestroy")
end

function Quest14019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14019:OnSubStart1401901(arg1)
    print("OnSubStart1401901")
    actorUtils.FinishQuestID(false, 1401901)
end

function Quest14019:OnSubFinish1401901(arg1)
    print("OnSubFinish1401901")
end

return Quest14019
