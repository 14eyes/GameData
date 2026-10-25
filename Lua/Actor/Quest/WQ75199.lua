require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75199 = class("Quest75199", QuestActorProxy)
Quest75199.defaultAlias = "Quest75199"
local clientData
local this
local mainID
local actorAlias

function Quest75199:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75199:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7519902"] = self.OnSubStart7519902, ["7519901"] = self.OnSubStart7519901}
end

function Quest75199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7519902"] = self.OnSubFinish7519902, ["7519901"] = self.OnSubFinish7519901}
end

function Quest75199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75199:Start()
    print("Start")
end

function Quest75199:OnDestroy()
    print("OnDestroy")
end

function Quest75199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75199:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75199:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75199:OnSubStart7519902(arg1)
    print("OnSubStart7519902")
    actorUtils.FinishQuestID(false, 7519902)
end

function Quest75199:OnSubFinish7519902(arg1)
    print("OnSubFinish7519902")
end

function Quest75199:OnSubStart7519901(arg1)
    print("OnSubStart7519901")
end

function Quest75199:OnSubFinish7519901(arg1)
    print("OnSubFinish7519901")
end

return Quest75199
