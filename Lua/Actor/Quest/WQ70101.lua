require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70101 = class("Quest70101", QuestActorProxy)
Quest70101.defaultAlias = "Quest70101"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010101"] = self.OnSubStart7010101,
        ["7010102"] = self.OnSubStart7010102,
        ["7010103"] = self.OnSubStart7010103
    }
end

function Quest70101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010101"] = self.OnSubFinish7010101,
        ["7010102"] = self.OnSubFinish7010102,
        ["7010103"] = self.OnSubFinish7010103
    }
end

function Quest70101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010101"] = self.OnSubFailed7010101,
        ["7010102"] = self.OnSubFailed7010102,
        ["7010103"] = self.OnSubFailed7010103
    }
end

function Quest70101:Start()
    print("Start")
end

function Quest70101:OnDestroy()
    print("OnDestroy")
end

function Quest70101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70101:OnSubStart7010101(arg1)
    print("OnSubStart7010101")
end

function Quest70101:OnSubFinish7010101(arg1)
    print("OnSubFinish7010101")
end

function Quest70101:OnSubFailed7010101(arg1)
    print("OnSubFailed7010101")
end

function Quest70101:OnSubStart7010102(arg1)
    print("OnSubStart7010102")
end

function Quest70101:OnSubFinish7010102(arg1)
    print("OnSubFinish7010102")
end

function Quest70101:OnSubFailed7010102(arg1)
    print("OnSubFailed7010102")
end

function Quest70101:OnSubStart7010103(arg1)
    print("OnSubStart7010103")
end

function Quest70101:OnSubFinish7010103(arg1)
    print("OnSubFinish7010103")
end

function Quest70101:OnSubFailed7010103(arg1)
    print("OnSubFailed7010103")
end

return Quest70101
