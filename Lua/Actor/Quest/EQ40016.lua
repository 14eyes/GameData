require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40016 = class("Quest40016", QuestActorProxy)
Quest40016.defaultAlias = "Quest40016"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001601"] = self.OnSubStart4001601,
        ["4001602"] = self.OnSubStart4001602,
        ["4001603"] = self.OnSubStart4001603,
        ["4001604"] = self.OnSubStart4001604,
        ["4001605"] = self.OnSubStart4001605,
        ["4001606"] = self.OnSubStart4001606,
        ["4001607"] = self.OnSubStart4001607,
        ["4001608"] = self.OnSubStart4001608
    }
end

function Quest40016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001601"] = self.OnSubFinish4001601,
        ["4001602"] = self.OnSubFinish4001602,
        ["4001603"] = self.OnSubFinish4001603,
        ["4001604"] = self.OnSubFinish4001604,
        ["4001605"] = self.OnSubFinish4001605,
        ["4001606"] = self.OnSubFinish4001606,
        ["4001607"] = self.OnSubFinish4001607,
        ["4001608"] = self.OnSubFinish4001608
    }
end

function Quest40016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001601"] = self.OnSubFailed4001601,
        ["4001602"] = self.OnSubFailed4001602,
        ["4001603"] = self.OnSubFailed4001603,
        ["4001604"] = self.OnSubFailed4001604,
        ["4001605"] = self.OnSubFailed4001605,
        ["4001606"] = self.OnSubFailed4001606,
        ["4001607"] = self.OnSubFailed4001607,
        ["4001608"] = self.OnSubFailed4001608
    }
end

function Quest40016:Start()
    print("Start")
end

function Quest40016:OnDestroy()
    print("OnDestroy")
end

function Quest40016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40016:OnSubStart4001601(arg1)
    print("OnSubStart4001601")
end

function Quest40016:OnSubFinish4001601(arg1)
    print("OnSubFinish4001601")
end

function Quest40016:OnSubFailed4001601(arg1)
    print("OnSubFailed4001601")
end

function Quest40016:OnSubStart4001602(arg1)
    print("OnSubStart4001602")
end

function Quest40016:OnSubFinish4001602(arg1)
    print("OnSubFinish4001602")
end

function Quest40016:OnSubFailed4001602(arg1)
    print("OnSubFailed4001602")
end

function Quest40016:OnSubStart4001603(arg1)
    print("OnSubStart4001603")
end

function Quest40016:OnSubFinish4001603(arg1)
    print("OnSubFinish4001603")
end

function Quest40016:OnSubFailed4001603(arg1)
    print("OnSubFailed4001603")
end

function Quest40016:OnSubStart4001604(arg1)
    print("OnSubStart4001604")
end

function Quest40016:OnSubFinish4001604(arg1)
    print("OnSubFinish4001604")
end

function Quest40016:OnSubFailed4001604(arg1)
    print("OnSubFailed4001604")
end

function Quest40016:OnSubStart4001605(arg1)
    print("OnSubStart4001605")
end

function Quest40016:OnSubFinish4001605(arg1)
    print("OnSubFinish4001605")
end

function Quest40016:OnSubFailed4001605(arg1)
    print("OnSubFailed4001605")
end

function Quest40016:OnSubStart4001606(arg1)
    print("OnSubStart4001606")
end

function Quest40016:OnSubFinish4001606(arg1)
    print("OnSubFinish4001606")
end

function Quest40016:OnSubFailed4001606(arg1)
    print("OnSubFailed4001606")
end

function Quest40016:OnSubStart4001607(arg1)
    print("OnSubStart4001607")
end

function Quest40016:OnSubFinish4001607(arg1)
    print("OnSubFinish4001607")
end

function Quest40016:OnSubFailed4001607(arg1)
    print("OnSubFailed4001607")
end

function Quest40016:OnSubStart4001608(arg1)
    print("OnSubStart4001608")
end

function Quest40016:OnSubFinish4001608(arg1)
    print("OnSubFinish4001608")
end

function Quest40016:OnSubFailed4001608(arg1)
    print("OnSubFailed4001608")
end

return Quest40016
