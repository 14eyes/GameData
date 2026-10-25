require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72145 = class("Quest72145", QuestActorProxy)
Quest72145.defaultAlias = "Quest72145"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72145:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214501"] = self.OnSubStart7214501,
        ["7214502"] = self.OnSubStart7214502,
        ["7214503"] = self.OnSubStart7214503,
        ["7214504"] = self.OnSubStart7214504,
        ["7214505"] = self.OnSubStart7214505,
        ["7214506"] = self.OnSubStart7214506,
        ["7214508"] = self.OnSubStart7214508,
        ["7214507"] = self.OnSubStart7214507
    }
end

function Quest72145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214501"] = self.OnSubFinish7214501,
        ["7214502"] = self.OnSubFinish7214502,
        ["7214503"] = self.OnSubFinish7214503,
        ["7214504"] = self.OnSubFinish7214504,
        ["7214505"] = self.OnSubFinish7214505,
        ["7214506"] = self.OnSubFinish7214506,
        ["7214508"] = self.OnSubFinish7214508,
        ["7214507"] = self.OnSubFinish7214507
    }
end

function Quest72145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214501"] = self.OnSubFailed7214501,
        ["7214502"] = self.OnSubFailed7214502,
        ["7214503"] = self.OnSubFailed7214503,
        ["7214504"] = self.OnSubFailed7214504,
        ["7214505"] = self.OnSubFailed7214505,
        ["7214506"] = self.OnSubFailed7214506,
        ["7214508"] = self.OnSubFailed7214508,
        ["7214507"] = self.OnSubFailed7214507
    }
end

function Quest72145:Start()
    print("Start")
end

function Quest72145:OnDestroy()
    print("OnDestroy")
end

function Quest72145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72145:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72145:OnSubStart7214501(arg1)
    print("OnSubStart7214501")
end

function Quest72145:OnSubFinish7214501(arg1)
    print("OnSubFinish7214501")
end

function Quest72145:OnSubFailed7214501(arg1)
    print("OnSubFailed7214501")
end

function Quest72145:OnSubStart7214502(arg1)
    print("OnSubStart7214502")
end

function Quest72145:OnSubFinish7214502(arg1)
    print("OnSubFinish7214502")
end

function Quest72145:OnSubFailed7214502(arg1)
    print("OnSubFailed7214502")
end

function Quest72145:OnSubStart7214503(arg1)
    print("OnSubStart7214503")
end

function Quest72145:OnSubFinish7214503(arg1)
    print("OnSubFinish7214503")
end

function Quest72145:OnSubFailed7214503(arg1)
    print("OnSubFailed7214503")
end

function Quest72145:OnSubStart7214504(arg1)
    print("OnSubStart7214504")
end

function Quest72145:OnSubFinish7214504(arg1)
    print("OnSubFinish7214504")
end

function Quest72145:OnSubFailed7214504(arg1)
    print("OnSubFailed7214504")
end

function Quest72145:OnSubStart7214505(arg1)
    print("OnSubStart7214505")
end

function Quest72145:OnSubFinish7214505(arg1)
    print("OnSubFinish7214505")
end

function Quest72145:OnSubFailed7214505(arg1)
    print("OnSubFailed7214505")
end

function Quest72145:OnSubStart7214506(arg1)
    print("OnSubStart7214506")
end

function Quest72145:OnSubFinish7214506(arg1)
    print("OnSubFinish7214506")
end

function Quest72145:OnSubFailed7214506(arg1)
    print("OnSubFailed7214506")
end

function Quest72145:OnSubStart7214508(arg1)
    print("OnSubStart7214508")
end

function Quest72145:OnSubFinish7214508(arg1)
    print("OnSubFinish7214508")
end

function Quest72145:OnSubFailed7214508(arg1)
    print("OnSubFailed7214508")
end

function Quest72145:OnSubStart7214507(arg1)
    print("OnSubStart7214507")
end

function Quest72145:OnSubFinish7214507(arg1)
    print("OnSubFinish7214507")
end

function Quest72145:OnSubFailed7214507(arg1)
    print("OnSubFailed7214507")
end

return Quest72145
