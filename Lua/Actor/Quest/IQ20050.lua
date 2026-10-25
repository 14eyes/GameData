require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20050 = class("Quest20050", QuestActorProxy)
Quest20050.defaultAlias = "Quest20050"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2005001"] = self.OnSubStart2005001,
        ["2005002"] = self.OnSubStart2005002,
        ["2005003"] = self.OnSubStart2005003
    }
end

function Quest20050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2005001"] = self.OnSubFinish2005001,
        ["2005002"] = self.OnSubFinish2005002,
        ["2005003"] = self.OnSubFinish2005003
    }
end

function Quest20050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2005001"] = self.OnSubFailed2005001,
        ["2005002"] = self.OnSubFailed2005002,
        ["2005003"] = self.OnSubFailed2005003
    }
end

function Quest20050:Start()
    print("Start")
end

function Quest20050:OnDestroy()
    print("OnDestroy")
end

function Quest20050:OnSubStart2005001(arg1)
    print("OnSubStart2005001")
end

function Quest20050:OnSubFinish2005001(arg1)
    print("OnSubFinish2005001")
end

function Quest20050:OnSubFailed2005001(arg1)
    print("OnSubFailed2005001")
end

function Quest20050:OnSubStart2005002(arg1)
    print("OnSubStart2005002")
end

function Quest20050:OnSubFinish2005002(arg1)
    print("OnSubFinish2005002")
end

function Quest20050:OnSubFailed2005002(arg1)
    print("OnSubFailed2005002")
end

function Quest20050:OnSubStart2005003(arg1)
    print("OnSubStart2005003")
end

function Quest20050:OnSubFinish2005003(arg1)
    print("OnSubFinish2005003")
end

function Quest20050:OnSubFailed2005003(arg1)
    print("OnSubFailed2005003")
end

return Quest20050
