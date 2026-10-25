require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75935 = class("Quest75935", QuestActorProxy)
Quest75935.defaultAlias = "Quest75935"
local clientData
local this
local mainID
local actorAlias

function Quest75935:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75935:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7593501"] = self.OnSubStart7593501, ["7593502"] = self.OnSubStart7593502}
end

function Quest75935:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7593501"] = self.OnSubFinish7593501, ["7593502"] = self.OnSubFinish7593502}
end

function Quest75935:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75935:OnSubStart7593501(arg1)
    print("OnSubStart7593501")
end

function Quest75935:OnSubFinish7593501(arg1)
    print("OnSubFinish7593501")
end

function Quest75935:OnSubStart7593502(arg1)
    print("OnSubStart7593502")
end

function Quest75935:OnSubFinish7593502(arg1)
    print("OnSubFinish7593502")
end

return Quest75935
