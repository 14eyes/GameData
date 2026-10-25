require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71152 = class("Quest71152", QuestActorProxy)
Quest71152.defaultAlias = "Quest71152"
local clientData
local this
local mainID
local actorAlias

function Quest71152:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71152:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115201"] = self.OnSubStart7115201, ["7115202"] = self.OnSubStart7115202}
end

function Quest71152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115201"] = self.OnSubFinish7115201, ["7115202"] = self.OnSubFinish7115202}
end

function Quest71152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71152:Start()
    print("Start")
end

function Quest71152:OnDestroy()
    print("OnDestroy")
end

function Quest71152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71152:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71152:OnSubStart7115201(arg1)
    print("OnSubStart7115201")
end

function Quest71152:OnSubFinish7115201(arg1)
    print("OnSubFinish7115201")
end

function Quest71152:OnSubStart7115202(arg1)
    print("OnSubStart7115202")
end

function Quest71152:OnSubFinish7115202(arg1)
    print("OnSubFinish7115202")
end

return Quest71152
