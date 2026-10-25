require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40087 = class("Quest40087", QuestActorProxy)
Quest40087.defaultAlias = "Quest40087"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest40087:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008702"] = self.OnSubStart4008702,
        ["4008703"] = self.OnSubStart4008703,
        ["4008701"] = self.OnSubStart4008701
    }
end

function Quest40087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008702"] = self.OnSubFinish4008702,
        ["4008703"] = self.OnSubFinish4008703,
        ["4008701"] = self.OnSubFinish4008701
    }
end

function Quest40087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40087:Start()
    print("Start")
end

function Quest40087:OnDestroy()
    print("OnDestroy")
end

function Quest40087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40087:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    actorMgr:DestroyEntityActor("Q4008702Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q4008703Trigger", 3, false)
end

function Quest40087:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40087:OnSubStart4008702(arg1)
    print("OnSubStart4008702")
    actorMgr:CreateActorWithPos("Q4008702Trigger1", "Actor/Gadget/Q4008702Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008702_guide").pos, sceneData:GetDummyPoint(3, "Q4008702_guide").rot, true, false, 3)
end

function Quest40087:OnSubFinish4008702(arg1)
    print("OnSubFinish4008702")
    self:ActorDestroy("Q4008702Trigger1")
end

function Quest40087:OnSubStart4008703(arg1)
    print("OnSubStart4008703")
    actorMgr:CreateActorWithPos("Q4008703Trigger", "Actor/Gadget/Q4008703Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008702_guide").pos, sceneData:GetDummyPoint(3, "Q4008702_guide").rot, true, false, 3)
end

function Quest40087:OnSubFinish4008703(arg1)
    print("OnSubFinish4008703")
    self:ActorDestroy("Q4008703Trigger")
end

function Quest40087:OnSubStart4008701(arg1)
    print("OnSubStart4008701")
end

function Quest40087:OnSubFinish4008701(arg1)
    print("OnSubFinish4008701")
end

return Quest40087
