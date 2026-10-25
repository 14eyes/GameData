require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71959 = class("Quest71959", QuestActorProxy)
Quest71959.defaultAlias = "Quest71959"
local clientData
local this
local mainID
local actorAlias

function Quest71959:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71959:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7195901"] = self.OnSubStart7195901}
end

function Quest71959:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7195901"] = self.OnSubFinish7195901}
end

function Quest71959:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71959:Start()
    print("Start")
end

function Quest71959:OnDestroy()
    print("OnDestroy")
end

function Quest71959:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71959:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71959:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71959:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest71959:OnSubStart7195901(arg1)
    print("OnSubStart7195901")
    actorUtils.FinishQuestID(false, 7195901)
end

function Quest71959:OnSubFinish7195901(arg1)
    print("OnSubFinish7195901")
end

return Quest71959
