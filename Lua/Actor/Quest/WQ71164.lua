require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71164 = class("Quest71164", QuestActorProxy)
Quest71164.defaultAlias = "Quest71164"
local clientData
local this
local mainID
local actorAlias

function Quest71164:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7116401"] = self.OnSubStart7116401,
        ["7116403"] = self.OnSubStart7116403,
        ["7116402"] = self.OnSubStart7116402,
        ["7116405"] = self.OnSubStart7116405,
        ["7116404"] = self.OnSubStart7116404,
        ["7116406"] = self.OnSubStart7116406
    }
end

function Quest71164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7116401"] = self.OnSubFinish7116401,
        ["7116403"] = self.OnSubFinish7116403,
        ["7116402"] = self.OnSubFinish7116402,
        ["7116405"] = self.OnSubFinish7116405,
        ["7116404"] = self.OnSubFinish7116404,
        ["7116406"] = self.OnSubFinish7116406
    }
end

function Quest71164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7116404"] = self.OnSubFailed7116404}
end

function Quest71164:Start()
    print("Start")
end

function Quest71164:OnDestroy()
    print("OnDestroy")
end

function Quest71164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71164:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71164:OnSubStart7116401(arg1)
    print("OnSubStart7116401")
end

function Quest71164:OnSubFinish7116401(arg1)
    print("OnSubFinish7116401")
end

function Quest71164:OnSubStart7116403(arg1)
    print("OnSubStart7116403")
end

function Quest71164:OnSubFinish7116403(arg1)
    print("OnSubFinish7116403")
end

function Quest71164:OnSubStart7116402(arg1)
    print("OnSubStart7116402")
end

function Quest71164:OnSubFinish7116402(arg1)
    print("OnSubFinish7116402")
end

function Quest71164:OnSubStart7116405(arg1)
    print("OnSubStart7116405")
end

function Quest71164:OnSubFinish7116405(arg1)
    print("OnSubFinish7116405")
end

function Quest71164:OnSubStart7116404(arg1)
    print("OnSubStart7116404")
    this:DeployStoryByQuest(147116401)
end

function Quest71164:OnSubFinish7116404(arg1)
    print("OnSubFinish7116404")
    this:CancelStoryByQuest(147116401)
end

function Quest71164:OnSubFailed7116404(arg1)
    print("OnSubFailed7116404")
    this:CancelStoryByQuest(147116401)
end

function Quest71164:OnSubStart7116406(arg1)
    print("OnSubStart7116406")
end

function Quest71164:OnSubFinish7116406(arg1)
    print("OnSubFinish7116406")
end

return Quest71164
