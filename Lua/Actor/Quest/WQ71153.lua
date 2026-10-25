require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71153 = class("Quest71153", QuestActorProxy)
Quest71153.defaultAlias = "Quest71153"
local clientData
local this
local mainID
local actorAlias

function Quest71153:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71153:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115301"] = self.OnSubStart7115301, ["7115302"] = self.OnSubStart7115302}
end

function Quest71153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115301"] = self.OnSubFinish7115301, ["7115302"] = self.OnSubFinish7115302}
end

function Quest71153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71153:Start()
    print("Start")
end

function Quest71153:OnDestroy()
    print("OnDestroy")
end

function Quest71153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71153:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71153:OnSubStart7115301(arg1)
    print("OnSubStart7115301")
end

function Quest71153:OnSubFinish7115301(arg1)
    print("OnSubFinish7115301")
end

function Quest71153:OnSubStart7115302(arg1)
    print("OnSubStart7115302")
end

function Quest71153:OnSubFinish7115302(arg1)
    print("OnSubFinish7115302")
end

return Quest71153
