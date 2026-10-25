require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40242 = class("Quest40242", QuestActorProxy)
Quest40242.defaultAlias = "Quest40242"
local clientData
local this
local mainID
local actorAlias

function Quest40242:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40242:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4024201"] = self.OnSubStart4024201}
end

function Quest40242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4024201"] = self.OnSubFinish4024201}
end

function Quest40242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40242:Start()
    print("Start")
end

function Quest40242:OnDestroy()
    print("OnDestroy")
end

function Quest40242:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40242:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40242:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40242:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40242:OnSubStart4024201(arg1)
    print("OnSubStart4024201")
end

function Quest40242:OnSubFinish4024201(arg1)
    print("OnSubFinish4024201")
end

return Quest40242
