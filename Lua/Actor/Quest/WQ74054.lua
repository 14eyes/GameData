require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74054 = class("Quest74054", QuestActorProxy)
Quest74054.defaultAlias = "Quest74054"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest74054:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest74054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405401"] = self.OnSubStart7405401,
        ["7405402"] = self.OnSubStart7405402,
        ["7405403"] = self.OnSubStart7405403,
        ["7405404"] = self.OnSubStart7405404,
        ["7405405"] = self.OnSubStart7405405,
        ["7405406"] = self.OnSubStart7405406,
        ["7405407"] = self.OnSubStart7405407
    }
end

function Quest74054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405401"] = self.OnSubFinish7405401,
        ["7405402"] = self.OnSubFinish7405402,
        ["7405403"] = self.OnSubFinish7405403,
        ["7405404"] = self.OnSubFinish7405404,
        ["7405405"] = self.OnSubFinish7405405,
        ["7405406"] = self.OnSubFinish7405406,
        ["7405407"] = self.OnSubFinish7405407
    }
end

function Quest74054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74054:Start()
    print("Start")
end

function Quest74054:OnDestroy()
    print("OnDestroy")
end

function Quest74054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74054:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74054:OnSubStart7405401(arg1)
    print("OnSubStart7405401")
end

function Quest74054:OnSubFinish7405401(arg1)
    print("OnSubFinish7405401")
end

function Quest74054:OnSubStart7405402(arg1)
    print("OnSubStart7405402")
end

function Quest74054:OnSubFinish7405402(arg1)
    print("OnSubFinish7405402")
end

function Quest74054:OnSubStart7405403(arg1)
    print("OnSubStart7405403")
end

function Quest74054:OnSubFinish7405403(arg1)
    print("OnSubFinish7405403")
end

function Quest74054:OnSubStart7405404(arg1)
    print("OnSubStart7405404")
end

function Quest74054:OnSubFinish7405404(arg1)
    print("OnSubFinish7405404")
end

function Quest74054:OnSubStart7405405(arg1)
    print("OnSubStart7405405")
end

function Quest74054:OnSubFinish7405405(arg1)
    print("OnSubFinish7405405")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_740540009, nil, 74054)
end

function Quest74054:OnSubStart7405406(arg1)
    print("OnSubStart7405406")
end

function Quest74054:OnSubFinish7405406(arg1)
    print("OnSubFinish7405406")
end

function Quest74054:OnSubStart7405407(arg1)
    print("OnSubStart7405407")
end

function Quest74054:OnSubFinish7405407(arg1)
    print("OnSubFinish7405407")
end

return Quest74054
