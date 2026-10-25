require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72146 = class("Quest72146", QuestActorProxy)
Quest72146.defaultAlias = "Quest72146"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72146:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214601"] = self.OnSubStart7214601,
        ["7214602"] = self.OnSubStart7214602,
        ["7214603"] = self.OnSubStart7214603,
        ["7214604"] = self.OnSubStart7214604
    }
end

function Quest72146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214601"] = self.OnSubFinish7214601,
        ["7214602"] = self.OnSubFinish7214602,
        ["7214603"] = self.OnSubFinish7214603,
        ["7214604"] = self.OnSubFinish7214604
    }
end

function Quest72146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214601"] = self.OnSubFailed7214601,
        ["7214602"] = self.OnSubFailed7214602,
        ["7214603"] = self.OnSubFailed7214603,
        ["7214604"] = self.OnSubFailed7214604
    }
end

function Quest72146:Start()
    print("Start")
end

function Quest72146:OnDestroy()
    print("OnDestroy")
end

function Quest72146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72146:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72146:OnSubStart7214601(arg1)
    print("OnSubStart7214601")
end

function Quest72146:OnSubFinish7214601(arg1)
    print("OnSubFinish7214601")
end

function Quest72146:OnSubFailed7214601(arg1)
    print("OnSubFailed7214601")
end

function Quest72146:OnSubStart7214602(arg1)
    print("OnSubStart7214602")
end

function Quest72146:OnSubFinish7214602(arg1)
    print("OnSubFinish7214602")
end

function Quest72146:OnSubFailed7214602(arg1)
    print("OnSubFailed7214602")
end

function Quest72146:OnSubStart7214603(arg1)
    print("OnSubStart7214603")
end

function Quest72146:OnSubFinish7214603(arg1)
    print("OnSubFinish7214603")
end

function Quest72146:OnSubFailed7214603(arg1)
    print("OnSubFailed7214603")
end

function Quest72146:OnSubStart7214604(arg1)
    print("OnSubStart7214604")
end

function Quest72146:OnSubFinish7214604(arg1)
    print("OnSubFinish7214604")
end

function Quest72146:OnSubFailed7214604(arg1)
    print("OnSubFailed7214604")
end

return Quest72146
