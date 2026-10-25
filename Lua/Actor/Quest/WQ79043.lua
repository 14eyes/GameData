require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79043 = class("Quest79043", QuestActorProxy)
Quest79043.defaultAlias = "Quest79043"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79043:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7904301"] = self.OnSubStart7904301, ["7904302"] = self.OnSubStart7904302}
end

function Quest79043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7904301"] = self.OnSubFinish7904301, ["7904302"] = self.OnSubFinish7904302}
end

function Quest79043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79043:Start()
    print("Start")
end

function Quest79043:OnDestroy()
    print("OnDestroy")
end

function Quest79043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79043:OnSubStart7904301(arg1)
    print("OnSubStart7904301")
end

function Quest79043:OnSubFinish7904301(arg1)
    print("OnSubFinish7904301")
end

function Quest79043:OnSubStart7904302(arg1)
    print("OnSubStart7904302")
end

function Quest79043:OnSubFinish7904302(arg1)
    print("OnSubFinish7904302")
end

return Quest79043
