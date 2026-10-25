require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72235 = class("Quest72235", QuestActorProxy)
Quest72235.defaultAlias = "Quest72235"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72235:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72235:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223501"] = self.OnSubStart7223501,
        ["7223502"] = self.OnSubStart7223502,
        ["7223503"] = self.OnSubStart7223503,
        ["7223504"] = self.OnSubStart7223504,
        ["7223505"] = self.OnSubStart7223505,
        ["7223506"] = self.OnSubStart7223506,
        ["7223507"] = self.OnSubStart7223507,
        ["7223508"] = self.OnSubStart7223508,
        ["7223509"] = self.OnSubStart7223509
    }
end

function Quest72235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223501"] = self.OnSubFinish7223501,
        ["7223502"] = self.OnSubFinish7223502,
        ["7223503"] = self.OnSubFinish7223503,
        ["7223504"] = self.OnSubFinish7223504,
        ["7223505"] = self.OnSubFinish7223505,
        ["7223506"] = self.OnSubFinish7223506,
        ["7223507"] = self.OnSubFinish7223507,
        ["7223508"] = self.OnSubFinish7223508,
        ["7223509"] = self.OnSubFinish7223509
    }
end

function Quest72235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72235:Start()
    print("Start")
end

function Quest72235:OnDestroy()
    print("OnDestroy")
end

function Quest72235:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72235:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72235:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72235:OnSubStart7223501(arg1)
    print("OnSubStart7223501")
end

function Quest72235:OnSubFinish7223501(arg1)
    print("OnSubFinish7223501")
end

function Quest72235:OnSubStart7223502(arg1)
    print("OnSubStart7223502")
end

function Quest72235:OnSubFinish7223502(arg1)
    print("OnSubFinish7223502")
end

function Quest72235:OnSubStart7223503(arg1)
    print("OnSubStart7223503")
end

function Quest72235:OnSubFinish7223503(arg1)
    print("OnSubFinish7223503")
end

function Quest72235:OnSubStart7223504(arg1)
    print("OnSubStart7223504")
end

function Quest72235:OnSubFinish7223504(arg1)
    print("OnSubFinish7223504")
end

function Quest72235:OnSubStart7223505(arg1)
    print("OnSubStart7223505")
end

function Quest72235:OnSubFinish7223505(arg1)
    print("OnSubFinish7223505")
end

function Quest72235:OnSubStart7223506(arg1)
    print("OnSubStart7223506")
end

function Quest72235:OnSubFinish7223506(arg1)
    print("OnSubFinish7223506")
end

function Quest72235:OnSubStart7223507(arg1)
    print("OnSubStart7223507")
end

function Quest72235:OnSubFinish7223507(arg1)
    print("OnSubFinish7223507")
end

function Quest72235:OnSubStart7223508(arg1)
    print("OnSubStart7223508")
end

function Quest72235:OnSubFinish7223508(arg1)
    print("OnSubFinish7223508")
    self:PlayCutsceneIndex("7223508", nil, nil, nil, false)
end

function Quest72235:OnSubStart7223509(arg1)
    print("OnSubStart7223509")
    actorMgr:CreateActorWithPos("Q7223509Trigger", "Actor/Gadget/Q7223509Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223509Tigger").pos, sceneData:GetDummyPoint(5, "Q7223509Tigger").rot, true, false, 5)
end

function Quest72235:OnSubFinish7223509(arg1)
    print("OnSubFinish7223509")
end

return Quest72235
