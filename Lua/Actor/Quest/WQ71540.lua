require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71540 = class("Quest71540", QuestActorProxy)
Quest71540.defaultAlias = "Quest71540"
local clientData
local this
local mainID
local actorAlias

function Quest71540:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71540:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154001"] = self.OnSubStart7154001}
end

function Quest71540:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154001"] = self.OnSubFinish7154001}
end

function Quest71540:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71540:Start()
    print("Start")
end

function Quest71540:OnDestroy()
    print("OnDestroy")
end

function Quest71540:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71540:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71540:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71540:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest71540:OnSubStart7154001(arg1)
    print("OnSubStart7154001")
    actorUtils.FinishQuestID(false, 7154001)
end

function Quest71540:OnSubFinish7154001(arg1)
    print("OnSubFinish7154001")
end

return Quest71540
