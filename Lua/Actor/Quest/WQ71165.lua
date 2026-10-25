require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71165 = class("Quest71165", QuestActorProxy)
Quest71165.defaultAlias = "Quest71165"
local clientData
local this
local mainID
local actorAlias

function Quest71165:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7116501"] = self.OnSubStart7116501,
        ["7116503"] = self.OnSubStart7116503,
        ["7116502"] = self.OnSubStart7116502,
        ["7116505"] = self.OnSubStart7116505,
        ["7116504"] = self.OnSubStart7116504,
        ["7116506"] = self.OnSubStart7116506
    }
end

function Quest71165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7116501"] = self.OnSubFinish7116501,
        ["7116503"] = self.OnSubFinish7116503,
        ["7116502"] = self.OnSubFinish7116502,
        ["7116505"] = self.OnSubFinish7116505,
        ["7116504"] = self.OnSubFinish7116504,
        ["7116506"] = self.OnSubFinish7116506
    }
end

function Quest71165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7116504"] = self.OnSubFailed7116504}
end

function Quest71165:Start()
    print("Start")
end

function Quest71165:OnDestroy()
    print("OnDestroy")
end

function Quest71165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71165:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71165:OnSubStart7116501(arg1)
    print("OnSubStart7116501")
end

function Quest71165:OnSubFinish7116501(arg1)
    print("OnSubFinish7116501")
end

function Quest71165:OnSubStart7116503(arg1)
    print("OnSubStart7116503")
end

function Quest71165:OnSubFinish7116503(arg1)
    print("OnSubFinish7116503")
end

function Quest71165:OnSubStart7116502(arg1)
    print("OnSubStart7116502")
end

function Quest71165:OnSubFinish7116502(arg1)
    print("OnSubFinish7116502")
end

function Quest71165:OnSubStart7116505(arg1)
    print("OnSubStart7116505")
end

function Quest71165:OnSubFinish7116505(arg1)
    print("OnSubFinish7116505")
end

function Quest71165:OnSubStart7116504(arg1)
    print("OnSubStart7116504")
    this:DeployStoryByQuest(147116501)
end

function Quest71165:OnSubFinish7116504(arg1)
    print("OnSubFinish7116504")
    this:CancelStoryByQuest(147116501)
end

function Quest71165:OnSubFailed7116504(arg1)
    print("OnSubFailed7116504")
    this:CancelStoryByQuest(147116501)
end

function Quest71165:OnSubStart7116506(arg1)
    print("OnSubStart7116506")
end

function Quest71165:OnSubFinish7116506(arg1)
    print("OnSubFinish7116506")
end

return Quest71165
