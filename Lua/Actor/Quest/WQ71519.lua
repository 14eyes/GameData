require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71519 = class("Quest71519", QuestActorProxy)
Quest71519.defaultAlias = "Quest71519"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71519:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71519:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151901"] = self.OnSubStart7151901}
end

function Quest71519:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151901"] = self.OnSubFinish7151901}
end

function Quest71519:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71519:Start()
    print("Start")
end

function Quest71519:OnDestroy()
    print("OnDestroy")
end

function Quest71519:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71519:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71519:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q7151901Trigger", 3, false)
    actorMgr:GetActor("Npc2434"):ClearGeneralMark()
end

function Quest71519:OnSubStart7151901(arg1)
    print("OnSubStart7151901")
    actorMgr:CreateActorWithPos("Q7151901Trigger", "Actor/Gadget/Q7151901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7151301_N2434").pos, sceneData:GetDummyPoint(3, "Q7151301_N2434").rot, true, false, 3)
end

function Quest71519:OnSubFinish7151901(arg1)
    print("OnSubFinish7151901")
end

return Quest71519
