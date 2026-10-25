require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70528 = class("Quest70528", QuestActorProxy)
Quest70528.defaultAlias = "Quest70528"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70528:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70528:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052801"] = self.OnSubStart7052801, ["7052802"] = self.OnSubStart7052802}
end

function Quest70528:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052801"] = self.OnSubFinish7052801, ["7052802"] = self.OnSubFinish7052802}
end

function Quest70528:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70528:Start()
    print("Start")
end

function Quest70528:OnDestroy()
    print("OnDestroy")
end

function Quest70528:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70528:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70528:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q70528Trigger", 3, false)
end

function Quest70528:OnSubStart7052801(arg1)
    print("OnSubStart7052801")
    actorMgr:CreateActorWithPos("Q70528Trigger", "Actor/Gadget/Q70528Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").pos, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").rot, true, false, 3)
end

function Quest70528:OnSubFinish7052801(arg1)
    print("OnSubFinish7052801")
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").pos, 0.1, 3, true, false)
end

function Quest70528:OnSubStart7052802(arg1)
    print("OnSubStart7052802")
end

function Quest70528:OnSubFinish7052802(arg1)
    print("OnSubFinish7052802")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(955)
    end)
end

return Quest70528
