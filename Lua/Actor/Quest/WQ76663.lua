require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76663 = class("Quest76663", QuestActorProxy)
Quest76663.defaultAlias = "Quest76663"
local clientData
local this
local mainID
local actorAlias

function Quest76663:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666301"] = self.OnSubStart7666301}
end

function Quest76663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666301"] = self.OnSubFinish7666301}
end

function Quest76663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76663:Start()
    print("Start")
end

function Quest76663:OnDestroy()
    print("OnDestroy")
end

function Quest76663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76663:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76663:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76663:OnSubStart7666301(arg1)
    print("OnSubStart7666301")
end

function Quest76663:OnSubFinish7666301(arg1)
    print("OnSubFinish7666301")
end

return Quest76663
