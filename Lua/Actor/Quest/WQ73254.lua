require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73254 = class("Quest73254", QuestActorProxy)
Quest73254.defaultAlias = "Quest73254"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73254:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73254:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325401"] = self.OnSubStart7325401,
        ["7325403"] = self.OnSubStart7325403,
        ["7325404"] = self.OnSubStart7325404,
        ["7325402"] = self.OnSubStart7325402
    }
end

function Quest73254:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325401"] = self.OnSubFinish7325401,
        ["7325403"] = self.OnSubFinish7325403,
        ["7325404"] = self.OnSubFinish7325404,
        ["7325402"] = self.OnSubFinish7325402
    }
end

function Quest73254:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73254:Start()
    print("Start")
end

function Quest73254:OnDestroy()
    print("OnDestroy")
end

function Quest73254:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73254:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73254:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73254:OnSubStart7325401(arg1)
    print("OnSubStart7325401")
    actorMgr:CreateActorWithPos("Q7325401Trigger", "Actor/Gadget/Q7325401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7325401").pos, sceneData:GetDummyPoint(3, "guide_Q7325401").rot, true, false, 3)
end

function Quest73254:OnSubFinish7325401(arg1)
    print("OnSubFinish7325401")
end

function Quest73254:OnSubStart7325403(arg1)
    print("OnSubStart7325403")
    actorMgr:CreateActorWithPos("Q7325403Trigger", "Actor/Gadget/Q7325403Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325403_guide").pos, sceneData:GetDummyPoint(3, "Q7325403_guide").rot, true, false, 3)
end

function Quest73254:OnSubFinish7325403(arg1)
    print("OnSubFinish7325403")
end

function Quest73254:OnSubStart7325404(arg1)
    print("OnSubStart7325404")
    actorMgr:CreateActorWithPos("Q7325404Trigger", "Actor/Gadget/Q7325404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325404_guide").pos, sceneData:GetDummyPoint(3, "Q7325404_guide").rot, true, false, 3)
end

function Quest73254:OnSubFinish7325404(arg1)
    print("OnSubFinish7325404")
end

function Quest73254:OnSubStart7325402(arg1)
    print("OnSubStart7325402")
end

function Quest73254:OnSubFinish7325402(arg1)
    print("OnSubFinish7325402")
end

return Quest73254
