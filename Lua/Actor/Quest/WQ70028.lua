require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70028 = class("Quest70028", QuestActorProxy)
Quest70028.defaultAlias = "Quest70028"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002801"] = self.OnSubStart7002801,
        ["7002802"] = self.OnSubStart7002802,
        ["7002803"] = self.OnSubStart7002803
    }
end

function Quest70028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002801"] = self.OnSubFinish7002801,
        ["7002802"] = self.OnSubFinish7002802,
        ["7002803"] = self.OnSubFinish7002803
    }
end

function Quest70028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002801"] = self.OnSubFailed7002801,
        ["7002802"] = self.OnSubFailed7002802,
        ["7002803"] = self.OnSubFailed7002803
    }
end

function Quest70028:Start()
    print("Start")
end

function Quest70028:OnDestroy()
    print("OnDestroy")
end

function Quest70028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70028:OnSubStart7002801(arg1)
    print("OnSubStart7002801")
end

function Quest70028:OnSubFinish7002801(arg1)
    print("OnSubFinish7002801")
end

function Quest70028:OnSubFailed7002801(arg1)
    print("OnSubFailed7002801")
end

function Quest70028:OnSubStart7002802(arg1)
    print("OnSubStart7002802")
end

function Quest70028:OnSubFinish7002802(arg1)
    print("OnSubFinish7002802")
end

function Quest70028:OnSubFailed7002802(arg1)
    print("OnSubFailed7002802")
end

function Quest70028:OnSubStart7002803(arg1)
    print("OnSubStart7002803")
end

function Quest70028:OnSubFinish7002803(arg1)
    print("OnSubFinish7002803")
end

function Quest70028:OnSubFailed7002803(arg1)
    print("OnSubFailed7002803")
end

return Quest70028
