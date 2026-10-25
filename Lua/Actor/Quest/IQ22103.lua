require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22103 = class("Quest22103", QuestActorProxy)
Quest22103.defaultAlias = "Quest22103"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22103:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210301"] = self.OnSubStart2210301,
        ["2210302"] = self.OnSubStart2210302,
        ["2210303"] = self.OnSubStart2210303,
        ["2210304"] = self.OnSubStart2210304
    }
end

function Quest22103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210301"] = self.OnSubFinish2210301,
        ["2210302"] = self.OnSubFinish2210302,
        ["2210303"] = self.OnSubFinish2210303,
        ["2210304"] = self.OnSubFinish2210304
    }
end

function Quest22103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210301"] = self.OnSubFailed2210301,
        ["2210302"] = self.OnSubFailed2210302,
        ["2210303"] = self.OnSubFailed2210303,
        ["2210304"] = self.OnSubFailed2210304
    }
end

function Quest22103:Start()
    print("Start")
end

function Quest22103:OnDestroy()
    print("OnDestroy")
end

function Quest22103:OnSubStart2210301(arg1)
    print("OnSubStart2210301")
end

function Quest22103:OnSubFinish2210301(arg1)
    print("OnSubFinish2210301")
end

function Quest22103:OnSubFailed2210301(arg1)
    print("OnSubFailed2210301")
end

function Quest22103:OnSubStart2210302(arg1)
    print("OnSubStart2210302")
end

function Quest22103:OnSubFinish2210302(arg1)
    print("OnSubFinish2210302")
end

function Quest22103:OnSubFailed2210302(arg1)
    print("OnSubFailed2210302")
end

function Quest22103:OnSubStart2210303(arg1)
    print("OnSubStart2210303")
end

function Quest22103:OnSubFinish2210303(arg1)
    print("OnSubFinish2210303")
end

function Quest22103:OnSubFailed2210303(arg1)
    print("OnSubFailed2210303")
end

function Quest22103:OnSubStart2210304(arg1)
    print("OnSubStart2210304")
end

function Quest22103:OnSubFinish2210304(arg1)
    print("OnSubFinish2210304")
end

function Quest22103:OnSubFailed2210304(arg1)
    print("OnSubFailed2210304")
end

return Quest22103
