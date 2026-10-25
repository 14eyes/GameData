require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75012 = class("Quest75012", QuestActorProxy)
Quest75012.defaultAlias = "Quest75012"
local clientData
local this
local mainID
local actorAlias

function Quest75012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501201"] = self.OnSubStart7501201,
        ["7501202"] = self.OnSubStart7501202,
        ["7501203"] = self.OnSubStart7501203,
        ["7501204"] = self.OnSubStart7501204
    }
end

function Quest75012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501201"] = self.OnSubFinish7501201,
        ["7501202"] = self.OnSubFinish7501202,
        ["7501203"] = self.OnSubFinish7501203,
        ["7501204"] = self.OnSubFinish7501204
    }
end

function Quest75012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75012:OnSubStart7501201(arg1)
    print("OnSubStart7501201")
end

function Quest75012:OnSubFinish7501201(arg1)
    print("OnSubFinish7501201")
end

function Quest75012:OnSubStart7501202(arg1)
    print("OnSubStart7501202")
end

function Quest75012:OnSubFinish7501202(arg1)
    print("OnSubFinish7501202")
end

function Quest75012:OnSubStart7501203(arg1)
    print("OnSubStart7501203")
end

function Quest75012:OnSubFinish7501203(arg1)
    print("OnSubFinish7501203")
end

function Quest75012:OnSubStart7501204(arg1)
    print("OnSubStart7501204")
end

function Quest75012:OnSubFinish7501204(arg1)
    print("OnSubFinish7501204")
end

return Quest75012
