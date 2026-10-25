require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75222 = class("Quest75222", QuestActorProxy)
Quest75222.defaultAlias = "Quest75222"
local clientData
local this
local mainID
local actorAlias

function Quest75222:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75222:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7522201"] = self.OnSubStart7522201,
        ["7522202"] = self.OnSubStart7522202,
        ["7522203"] = self.OnSubStart7522203,
        ["7522204"] = self.OnSubStart7522204,
        ["7522205"] = self.OnSubStart7522205
    }
end

function Quest75222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7522201"] = self.OnSubFinish7522201,
        ["7522202"] = self.OnSubFinish7522202,
        ["7522203"] = self.OnSubFinish7522203,
        ["7522204"] = self.OnSubFinish7522204,
        ["7522205"] = self.OnSubFinish7522205
    }
end

function Quest75222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75222:OnSubStart7522201(arg1)
    print("OnSubStart7522201")
end

function Quest75222:OnSubFinish7522201(arg1)
    print("OnSubFinish7522201")
end

function Quest75222:OnSubStart7522202(arg1)
    print("OnSubStart7522202")
end

function Quest75222:OnSubFinish7522202(arg1)
    print("OnSubFinish7522202")
end

function Quest75222:OnSubStart7522203(arg1)
    print("OnSubStart7522203")
end

function Quest75222:OnSubFinish7522203(arg1)
    print("OnSubFinish7522203")
end

function Quest75222:OnSubStart7522204(arg1)
    print("OnSubStart7522204")
end

function Quest75222:OnSubFinish7522204(arg1)
    print("OnSubFinish7522204")
end

function Quest75222:OnSubStart7522205(arg1)
    print("OnSubStart7522205")
    actorUtils.FinishQuestID(false, 7522205)
end

function Quest75222:OnSubFinish7522205(arg1)
    print("OnSubFinish7522205")
end

return Quest75222
