require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79028 = class("Quest79028", QuestActorProxy)
Quest79028.defaultAlias = "Quest79028"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79028:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7902801"] = self.OnSubStart7902801, ["7902802"] = self.OnSubStart7902802}
end

function Quest79028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7902801"] = self.OnSubFinish7902801, ["7902802"] = self.OnSubFinish7902802}
end

function Quest79028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79028:Start()
    print("Start")
end

function Quest79028:OnDestroy()
    print("OnDestroy")
end

function Quest79028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79028:OnSubStart7902801(arg1)
    print("OnSubStart7902801")
    actorMgr:CreateActorWithPos("Q79028Trigger", "Actor/Gadget/Q79028Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902801_guide").pos, sceneData:GetDummyPoint(9, "Q7902801_guide").rot, true, false, 9)
end

function Quest79028:OnSubFinish7902801(arg1)
    print("OnSubFinish7902801")
end

function Quest79028:OnSubStart7902802(arg1)
    print("OnSubStart7902802")
end

function Quest79028:OnSubFinish7902802(arg1)
    print("OnSubFinish7902802")
end

return Quest79028
