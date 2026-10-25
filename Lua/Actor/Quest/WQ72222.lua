require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72222 = class("Quest72222", QuestActorProxy)
Quest72222.defaultAlias = "Quest72222"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72222:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72222:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7222201"] = self.OnSubStart7222201}
end

function Quest72222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7222201"] = self.OnSubFinish7222201}
end

function Quest72222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7222201"] = self.OnSubFailed7222201}
end

function Quest72222:Start()
    print("Start")
end

function Quest72222:OnDestroy()
    print("OnDestroy")
end

function Quest72222:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72222:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72222:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72222:OnSubStart7222201(arg1)
    print("OnSubStart7222201")
end

function Quest72222:OnSubFinish7222201(arg1)
    print("OnSubFinish7222201")
end

function Quest72222:OnSubFailed7222201(arg1)
    print("OnSubFailed7222201")
end

return Quest72222
