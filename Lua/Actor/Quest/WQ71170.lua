require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71170 = class("Quest71170", QuestActorProxy)
Quest71170.defaultAlias = "Quest71170"
local clientData
local this
local mainID
local actorAlias

function Quest71170:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7117001"] = self.OnSubStart7117001,
        ["7117003"] = self.OnSubStart7117003,
        ["7117002"] = self.OnSubStart7117002,
        ["7117005"] = self.OnSubStart7117005,
        ["7117004"] = self.OnSubStart7117004,
        ["7117006"] = self.OnSubStart7117006
    }
end

function Quest71170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7117001"] = self.OnSubFinish7117001,
        ["7117003"] = self.OnSubFinish7117003,
        ["7117002"] = self.OnSubFinish7117002,
        ["7117005"] = self.OnSubFinish7117005,
        ["7117004"] = self.OnSubFinish7117004,
        ["7117006"] = self.OnSubFinish7117006
    }
end

function Quest71170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7117004"] = self.OnSubFailed7117004}
end

function Quest71170:Start()
    print("Start")
end

function Quest71170:OnDestroy()
    print("OnDestroy")
end

function Quest71170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71170:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71170:OnSubStart7117001(arg1)
    print("OnSubStart7117001")
end

function Quest71170:OnSubFinish7117001(arg1)
    print("OnSubFinish7117001")
end

function Quest71170:OnSubStart7117003(arg1)
    print("OnSubStart7117003")
end

function Quest71170:OnSubFinish7117003(arg1)
    print("OnSubFinish7117003")
end

function Quest71170:OnSubStart7117002(arg1)
    print("OnSubStart7117002")
end

function Quest71170:OnSubFinish7117002(arg1)
    print("OnSubFinish7117002")
end

function Quest71170:OnSubStart7117005(arg1)
    print("OnSubStart7117005")
end

function Quest71170:OnSubFinish7117005(arg1)
    print("OnSubFinish7117005")
end

function Quest71170:OnSubStart7117004(arg1)
    print("OnSubStart7117004")
    this:DeployStoryByQuest(147117001)
end

function Quest71170:OnSubFinish7117004(arg1)
    print("OnSubFinish7117004")
    this:CancelStoryByQuest(147117001)
end

function Quest71170:OnSubFailed7117004(arg1)
    print("OnSubFailed7117004")
    this:CancelStoryByQuest(147117001)
end

function Quest71170:OnSubStart7117006(arg1)
    print("OnSubStart7117006")
end

function Quest71170:OnSubFinish7117006(arg1)
    print("OnSubFinish7117006")
end

return Quest71170
