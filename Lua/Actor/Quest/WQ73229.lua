require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73229 = class("Quest73229", QuestActorProxy)
Quest73229.defaultAlias = "Quest73229"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73229:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73229:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7322901"] = self.OnSubStart7322901, ["7322902"] = self.OnSubStart7322902}
end

function Quest73229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7322901"] = self.OnSubFinish7322901, ["7322902"] = self.OnSubFinish7322902}
end

function Quest73229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73229:Start()
    print("Start")
end

function Quest73229:OnDestroy()
    print("OnDestroy")
end

function Quest73229:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73229:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73229:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73229:OnSubStart7322901(arg1)
    print("OnSubStart7322901")
    actorMgr:CreateActorWithPos("Q73229Trigger", "Actor/Gadget/Q73229Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "DUMMY_POS 330100207").pos, sceneData:GetDummyPoint(3, "DUMMY_POS 330100207").rot, true, false, 3)
end

function Quest73229:OnSubFinish7322901(arg1)
    print("OnSubFinish7322901")
end

function Quest73229:OnSubStart7322902(arg1)
    print("OnSubStart7322902")
    actorMgr:CreateActorWithPos("Q73229Trigger1", "Actor/Gadget/Q73229Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "DUMMY_POS 330100208").pos, sceneData:GetDummyPoint(3, "DUMMY_POS 330100208").rot, true, false, 3)
end

function Quest73229:OnSubFinish7322902(arg1)
    print("OnSubFinish7322902")
end

return Quest73229
