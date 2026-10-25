require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73216 = class("Quest73216", QuestActorProxy)
Quest73216.defaultAlias = "Quest73216"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73216:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73216:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7321601"] = self.OnSubStart7321601}
end

function Quest73216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7321601"] = self.OnSubFinish7321601}
end

function Quest73216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73216:Start()
    print("Start")
end

function Quest73216:OnDestroy()
    print("OnDestroy")
end

function Quest73216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73216:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73216:OnSubStart7321601(arg1)
    print("OnSubStart7321601")
    actorMgr:CreateActorWithPos("Q73216Trigger", "Actor/Gadget/Q73216Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7319001_guide").pos, sceneData:GetDummyPoint(3, "Q7319001_guide").rot, true, false, 3)
end

function Quest73216:OnSubFinish7321601(arg1)
    print("OnSubFinish7321601")
    self:ActorDestroy("Q73216Trigger")
end

return Quest73216
