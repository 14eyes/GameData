require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70106 = class("Quest70106", QuestActorProxy)
Quest70106.defaultAlias = "Quest70106"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70106:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010601"] = self.OnSubStart7010601,
        ["7010602"] = self.OnSubStart7010602,
        ["7010603"] = self.OnSubStart7010603,
        ["7010604"] = self.OnSubStart7010604,
        ["7010605"] = self.OnSubStart7010605,
        ["7010606"] = self.OnSubStart7010606,
        ["7010608"] = self.OnSubStart7010608,
        ["7010609"] = self.OnSubStart7010609,
        ["7010610"] = self.OnSubStart7010610,
        ["7010611"] = self.OnSubStart7010611
    }
end

function Quest70106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010601"] = self.OnSubFinish7010601,
        ["7010602"] = self.OnSubFinish7010602,
        ["7010603"] = self.OnSubFinish7010603,
        ["7010604"] = self.OnSubFinish7010604,
        ["7010605"] = self.OnSubFinish7010605,
        ["7010606"] = self.OnSubFinish7010606,
        ["7010608"] = self.OnSubFinish7010608,
        ["7010609"] = self.OnSubFinish7010609,
        ["7010610"] = self.OnSubFinish7010610,
        ["7010611"] = self.OnSubFinish7010611
    }
end

function Quest70106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010601"] = self.OnSubFailed7010601,
        ["7010602"] = self.OnSubFailed7010602,
        ["7010603"] = self.OnSubFailed7010603,
        ["7010604"] = self.OnSubFailed7010604,
        ["7010605"] = self.OnSubFailed7010605,
        ["7010606"] = self.OnSubFailed7010606,
        ["7010608"] = self.OnSubFailed7010608,
        ["7010609"] = self.OnSubFailed7010609,
        ["7010610"] = self.OnSubFailed7010610,
        ["7010611"] = self.OnSubFailed7010611
    }
end

function Quest70106:Start()
    print("Start")
end

function Quest70106:OnDestroy()
    print("OnDestroy")
end

function Quest70106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70106:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70106:OnSubStart7010601(arg1)
    print("OnSubStart7010601")
end

function Quest70106:OnSubFinish7010601(arg1)
    print("OnSubFinish7010601")
end

function Quest70106:OnSubFailed7010601(arg1)
    print("OnSubFailed7010601")
end

function Quest70106:OnSubStart7010602(arg1)
    print("OnSubStart7010602")
end

function Quest70106:OnSubFinish7010602(arg1)
    print("OnSubFinish7010602")
end

function Quest70106:OnSubFailed7010602(arg1)
    print("OnSubFailed7010602")
end

function Quest70106:OnSubStart7010603(arg1)
    print("OnSubStart7010603")
end

function Quest70106:OnSubFinish7010603(arg1)
    print("OnSubFinish7010603")
end

function Quest70106:OnSubFailed7010603(arg1)
    print("OnSubFailed7010603")
end

function Quest70106:OnSubStart7010604(arg1)
    print("OnSubStart7010604")
end

function Quest70106:OnSubFinish7010604(arg1)
    print("OnSubFinish7010604")
end

function Quest70106:OnSubFailed7010604(arg1)
    print("OnSubFailed7010604")
end

function Quest70106:OnSubStart7010605(arg1)
    print("OnSubStart7010605")
end

function Quest70106:OnSubFinish7010605(arg1)
    print("OnSubFinish7010605")
end

function Quest70106:OnSubFailed7010605(arg1)
    print("OnSubFailed7010605")
end

function Quest70106:OnSubStart7010606(arg1)
    print("OnSubStart7010606")
end

function Quest70106:OnSubFinish7010606(arg1)
    print("OnSubFinish7010606")
end

function Quest70106:OnSubFailed7010606(arg1)
    print("OnSubFailed7010606")
end

function Quest70106:OnSubStart7010608(arg1)
    print("OnSubStart7010608")
end

function Quest70106:OnSubFinish7010608(arg1)
    print("OnSubFinish7010608")
end

function Quest70106:OnSubFailed7010608(arg1)
    print("OnSubFailed7010608")
end

function Quest70106:OnSubStart7010609(arg1)
    print("OnSubStart7010609")
end

function Quest70106:OnSubFinish7010609(arg1)
    print("OnSubFinish7010609")
end

function Quest70106:OnSubFailed7010609(arg1)
    print("OnSubFailed7010609")
end

function Quest70106:OnSubStart7010610(arg1)
    print("OnSubStart7010610")
end

function Quest70106:OnSubFinish7010610(arg1)
    print("OnSubFinish7010610")
end

function Quest70106:OnSubFailed7010610(arg1)
    print("OnSubFailed7010610")
end

function Quest70106:OnSubStart7010611(arg1)
    print("OnSubStart7010611")
end

function Quest70106:OnSubFinish7010611(arg1)
    print("OnSubFinish7010611")
end

function Quest70106:OnSubFailed7010611(arg1)
    print("OnSubFailed7010611")
end

return Quest70106
