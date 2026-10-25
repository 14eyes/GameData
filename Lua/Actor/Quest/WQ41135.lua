require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41135 = class("Quest41135", QuestActorProxy)
Quest41135.defaultAlias = "Quest41135"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41135:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4113501"] = self.OnSubStart4113501,
        ["4113502"] = self.OnSubStart4113502,
        ["4113503"] = self.OnSubStart4113503,
        ["4113504"] = self.OnSubStart4113504,
        ["4113505"] = self.OnSubStart4113505,
        ["4113506"] = self.OnSubStart4113506,
        ["4113507"] = self.OnSubStart4113507
    }
end

function Quest41135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4113501"] = self.OnSubFinish4113501,
        ["4113502"] = self.OnSubFinish4113502,
        ["4113503"] = self.OnSubFinish4113503,
        ["4113504"] = self.OnSubFinish4113504,
        ["4113505"] = self.OnSubFinish4113505,
        ["4113506"] = self.OnSubFinish4113506,
        ["4113507"] = self.OnSubFinish4113507
    }
end

function Quest41135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4113501"] = self.OnSubFailed4113501,
        ["4113502"] = self.OnSubFailed4113502,
        ["4113503"] = self.OnSubFailed4113503,
        ["4113504"] = self.OnSubFailed4113504,
        ["4113505"] = self.OnSubFailed4113505,
        ["4113506"] = self.OnSubFailed4113506,
        ["4113507"] = self.OnSubFailed4113507
    }
end

function Quest41135:Start()
    print("Start")
end

function Quest41135:OnDestroy()
    print("OnDestroy")
end

function Quest41135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41135:OnSubStart4113501(arg1)
    print("OnSubStart4113501")
end

function Quest41135:OnSubFinish4113501(arg1)
    print("OnSubFinish4113501")
end

function Quest41135:OnSubFailed4113501(arg1)
    print("OnSubFailed4113501")
end

function Quest41135:OnSubStart4113502(arg1)
    print("OnSubStart4113502")
end

function Quest41135:OnSubFinish4113502(arg1)
    print("OnSubFinish4113502")
end

function Quest41135:OnSubFailed4113502(arg1)
    print("OnSubFailed4113502")
end

function Quest41135:OnSubStart4113503(arg1)
    print("OnSubStart4113503")
end

function Quest41135:OnSubFinish4113503(arg1)
    print("OnSubFinish4113503")
end

function Quest41135:OnSubFailed4113503(arg1)
    print("OnSubFailed4113503")
end

function Quest41135:OnSubStart4113504(arg1)
    print("OnSubStart4113504")
end

function Quest41135:OnSubFinish4113504(arg1)
    print("OnSubFinish4113504")
end

function Quest41135:OnSubFailed4113504(arg1)
    print("OnSubFailed4113504")
end

function Quest41135:OnSubStart4113505(arg1)
    print("OnSubStart4113505")
end

function Quest41135:OnSubFinish4113505(arg1)
    print("OnSubFinish4113505")
end

function Quest41135:OnSubFailed4113505(arg1)
    print("OnSubFailed4113505")
end

function Quest41135:OnSubStart4113506(arg1)
    print("OnSubStart4113506")
end

function Quest41135:OnSubFinish4113506(arg1)
    print("OnSubFinish4113506")
end

function Quest41135:OnSubFailed4113506(arg1)
    print("OnSubFailed4113506")
end

function Quest41135:OnSubStart4113507(arg1)
    print("OnSubStart4113507")
end

function Quest41135:OnSubFinish4113507(arg1)
    print("OnSubFinish4113507")
end

function Quest41135:OnSubFailed4113507(arg1)
    print("OnSubFailed4113507")
end

return Quest41135
