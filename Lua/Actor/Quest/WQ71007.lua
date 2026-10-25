require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71007 = class("Quest71007", QuestActorProxy)
Quest71007.defaultAlias = "Quest71007"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71007:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7100701"] = self.OnSubStart7100701}
end

function Quest71007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7100701"] = self.OnSubFinish7100701}
end

function Quest71007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7100701"] = self.OnSubFailed7100701}
end

function Quest71007:Start()
    print("Start")
end

function Quest71007:OnDestroy()
    print("OnDestroy")
end

function Quest71007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71007:OnSubStart7100701(arg1)
    print("OnSubStart7100701")
end

function Quest71007:OnSubFinish7100701(arg1)
    print("OnSubFinish7100701")
end

function Quest71007:OnSubFailed7100701(arg1)
    print("OnSubFailed7100701")
end

return Quest71007
