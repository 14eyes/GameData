require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4028 = class("Quest4028", QuestActorProxy)
Quest4028.defaultAlias = "Quest4028"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4028:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402801"] = self.OnSubStart402801,
        ["402802"] = self.OnSubStart402802,
        ["402803"] = self.OnSubStart402803
    }
end

function Quest4028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402801"] = self.OnSubFinish402801,
        ["402802"] = self.OnSubFinish402802,
        ["402803"] = self.OnSubFinish402803
    }
end

function Quest4028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4028:Start()
    print("Start")
end

function Quest4028:OnDestroy()
    print("OnDestroy")
end

function Quest4028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4028:OnSubStart402801(arg1)
    print("OnSubStart402801")
end

function Quest4028:OnSubFinish402801(arg1)
    print("OnSubFinish402801")
end

function Quest4028:OnSubStart402802(arg1)
    print("OnSubStart402802")
    actorUtils.FinishQuestID(false, 402802)
end

function Quest4028:OnSubFinish402802(arg1)
    print("OnSubFinish402802")
end

function Quest4028:OnSubStart402803(arg1)
    print("OnSubStart402803")
end

function Quest4028:OnSubFinish402803(arg1)
    print("OnSubFinish402803")
end

return Quest4028
