require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40041 = class("Quest40041", QuestActorProxy)
Quest40041.defaultAlias = "Quest40041"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4004101"] = self.OnSubStart4004101,
        ["4004102"] = self.OnSubStart4004102,
        ["4004103"] = self.OnSubStart4004103,
        ["4004104"] = self.OnSubStart4004104,
        ["4004107"] = self.OnSubStart4004107,
        ["4004105"] = self.OnSubStart4004105,
        ["4004106"] = self.OnSubStart4004106
    }
end

function Quest40041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4004101"] = self.OnSubFinish4004101,
        ["4004102"] = self.OnSubFinish4004102,
        ["4004103"] = self.OnSubFinish4004103,
        ["4004104"] = self.OnSubFinish4004104,
        ["4004107"] = self.OnSubFinish4004107,
        ["4004105"] = self.OnSubFinish4004105,
        ["4004106"] = self.OnSubFinish4004106
    }
end

function Quest40041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40041:Start()
    print("Start")
end

function Quest40041:OnDestroy()
    print("OnDestroy")
end

function Quest40041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40041:OnSubStart4004101(arg1)
    print("OnSubStart4004101")
end

function Quest40041:OnSubFinish4004101(arg1)
    print("OnSubFinish4004101")
end

function Quest40041:OnSubStart4004102(arg1)
    print("OnSubStart4004102")
end

function Quest40041:OnSubFinish4004102(arg1)
    print("OnSubFinish4004102")
end

function Quest40041:OnSubStart4004103(arg1)
    print("OnSubStart4004103")
end

function Quest40041:OnSubFinish4004103(arg1)
    print("OnSubFinish4004103")
end

function Quest40041:OnSubStart4004104(arg1)
    print("OnSubStart4004104")
end

function Quest40041:OnSubFinish4004104(arg1)
    print("OnSubFinish4004104")
end

function Quest40041:OnSubStart4004107(arg1)
    print("OnSubStart4004107")
end

function Quest40041:OnSubFinish4004107(arg1)
    print("OnSubFinish4004107")
end

function Quest40041:OnSubStart4004105(arg1)
    print("OnSubStart4004105")
end

function Quest40041:OnSubFinish4004105(arg1)
    print("OnSubFinish4004105")
end

function Quest40041:OnSubStart4004106(arg1)
    print("OnSubStart4004106")
end

function Quest40041:OnSubFinish4004106(arg1)
    print("OnSubFinish4004106")
end

return Quest40041
