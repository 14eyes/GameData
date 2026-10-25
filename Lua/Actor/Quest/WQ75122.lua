require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75122 = class("Quest75122", QuestActorProxy)
Quest75122.defaultAlias = "Quest75122"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75122:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7512201"] = self.OnSubStart7512201,
        ["7512202"] = self.OnSubStart7512202,
        ["7512203"] = self.OnSubStart7512203,
        ["7512204"] = self.OnSubStart7512204,
        ["7512205"] = self.OnSubStart7512205,
        ["7512206"] = self.OnSubStart7512206
    }
end

function Quest75122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7512201"] = self.OnSubFinish7512201,
        ["7512202"] = self.OnSubFinish7512202,
        ["7512203"] = self.OnSubFinish7512203,
        ["7512204"] = self.OnSubFinish7512204,
        ["7512205"] = self.OnSubFinish7512205,
        ["7512206"] = self.OnSubFinish7512206
    }
end

function Quest75122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75122:Start()
    print("Start")
end

function Quest75122:OnDestroy()
    print("OnDestroy")
end

function Quest75122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75122:OnSubStart7512201(arg1)
    print("OnSubStart7512201")
end

function Quest75122:OnSubFinish7512201(arg1)
    print("OnSubFinish7512201")
end

function Quest75122:OnSubStart7512202(arg1)
    print("OnSubStart7512202")
end

function Quest75122:OnSubFinish7512202(arg1)
    print("OnSubFinish7512202")
end

function Quest75122:OnSubStart7512203(arg1)
    print("OnSubStart7512203")
end

function Quest75122:OnSubFinish7512203(arg1)
    print("OnSubFinish7512203")
end

function Quest75122:OnSubStart7512204(arg1)
    print("OnSubStart7512204")
end

function Quest75122:OnSubFinish7512204(arg1)
    print("OnSubFinish7512204")
end

function Quest75122:OnSubStart7512205(arg1)
    print("OnSubStart7512205")
end

function Quest75122:OnSubFinish7512205(arg1)
    print("OnSubFinish7512205")
end

function Quest75122:OnSubStart7512206(arg1)
    print("OnSubStart7512206")
end

function Quest75122:OnSubFinish7512206(arg1)
    print("OnSubFinish7512206")
end

return Quest75122
