require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70529 = class("Quest70529", QuestActorProxy)
Quest70529.defaultAlias = "Quest70529"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70529:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70529:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052901"] = self.OnSubStart7052901, ["7052902"] = self.OnSubStart7052902}
end

function Quest70529:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052901"] = self.OnSubFinish7052901, ["7052902"] = self.OnSubFinish7052902}
end

function Quest70529:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70529:Start()
    print("Start")
end

function Quest70529:OnDestroy()
    print("OnDestroy")
end

function Quest70529:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70529:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70529:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q70529Trigger", 3, false)
end

function Quest70529:OnSubStart7052901(arg1)
    print("OnSubStart7052901")
    actorMgr:CreateActorWithPos("Q70529Trigger", "Actor/Gadget/Q70529Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").pos, sceneData:GetDummyPoint(3, "guide_N30046_Q7052901").rot, true, false, 3)
end

function Quest70529:OnSubFinish7052901(arg1)
    print("OnSubFinish7052901")
end

function Quest70529:OnSubStart7052902(arg1)
    print("OnSubStart7052902")
end

function Quest70529:OnSubFinish7052902(arg1)
    print("OnSubFinish7052902")
end

return Quest70529
