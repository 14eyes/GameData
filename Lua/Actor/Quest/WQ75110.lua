require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75110 = class("Quest75110", QuestActorProxy)
Quest75110.defaultAlias = "Quest75110"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75110:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75110:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511001"] = self.OnSubStart7511001}
end

function Quest75110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511001"] = self.OnSubFinish7511001}
end

function Quest75110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75110:Start()
    print("Start")
end

function Quest75110:OnDestroy()
    print("OnDestroy")
end

function Quest75110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75110:OnSubStart7511001(arg1)
    print("OnSubStart7511001")
    actorUtils.FinishQuestID(false, 7511001)
end

function Quest75110:OnSubFinish7511001(arg1)
    print("OnSubFinish7511001")
end

return Quest75110
