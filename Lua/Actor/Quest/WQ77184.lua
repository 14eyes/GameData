require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77184 = class("Quest77184", QuestActorProxy)
Quest77184.defaultAlias = "Quest77184"
local clientData
local this
local mainID
local actorAlias

function Quest77184:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77184:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7718401"] = self.OnSubStart7718401,
        ["7718402"] = self.OnSubStart7718402,
        ["7718403"] = self.OnSubStart7718403
    }
end

function Quest77184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7718401"] = self.OnSubFinish7718401,
        ["7718402"] = self.OnSubFinish7718402,
        ["7718403"] = self.OnSubFinish7718403
    }
end

function Quest77184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7718402"] = self.OnSubFailed7718402}
end

function Quest77184:Start()
    print("Start")
end

function Quest77184:OnDestroy()
    print("OnDestroy")
end

function Quest77184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77184:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77184:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77184:OnSubStart7718401(arg1)
    print("OnSubStart7718401")
end

function Quest77184:OnSubFinish7718401(arg1)
    print("OnSubFinish7718401")
    this:ActionSafeCall(function(arg1)
        this:EnterSceneLookCamera({x = 9655, y = 396, z = 6569}, 0, 1.5, true, false)
    end)
end

function Quest77184:OnSubStart7718402(arg1)
    print("OnSubStart7718402")
end

function Quest77184:OnSubFinish7718402(arg1)
    print("OnSubFinish7718402")
end

function Quest77184:OnSubFailed7718402(arg1)
    print("OnSubFailed7718402")
    this:RecycleAllRes()
end

function Quest77184:OnSubStart7718403(arg1)
    print("OnSubStart7718403")
end

function Quest77184:OnSubFinish7718403(arg1)
    print("OnSubFinish7718403")
end

return Quest77184
