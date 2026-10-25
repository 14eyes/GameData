require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20053 = class("Quest20053", QuestActorProxy)
Quest20053.defaultAlias = "Quest20053"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20053:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2005301"] = self.OnSubStart2005301,
        ["2005302"] = self.OnSubStart2005302,
        ["2005303"] = self.OnSubStart2005303
    }
end

function Quest20053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2005301"] = self.OnSubFinish2005301,
        ["2005302"] = self.OnSubFinish2005302,
        ["2005303"] = self.OnSubFinish2005303
    }
end

function Quest20053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2005301"] = self.OnSubFailed2005301,
        ["2005302"] = self.OnSubFailed2005302,
        ["2005303"] = self.OnSubFailed2005303
    }
end

function Quest20053:Start()
    print("Start")
end

function Quest20053:OnDestroy()
    print("OnDestroy")
end

function Quest20053:OnSubStart2005301(arg1)
    print("OnSubStart2005301")
end

function Quest20053:OnSubFinish2005301(arg1)
    print("OnSubFinish2005301")
end

function Quest20053:OnSubFailed2005301(arg1)
    print("OnSubFailed2005301")
end

function Quest20053:OnSubStart2005302(arg1)
    print("OnSubStart2005302")
end

function Quest20053:OnSubFinish2005302(arg1)
    print("OnSubFinish2005302")
end

function Quest20053:OnSubFailed2005302(arg1)
    print("OnSubFailed2005302")
end

function Quest20053:OnSubStart2005303(arg1)
    print("OnSubStart2005303")
end

function Quest20053:OnSubFinish2005303(arg1)
    print("OnSubFinish2005303")
end

function Quest20053:OnSubFailed2005303(arg1)
    print("OnSubFailed2005303")
end

return Quest20053
