require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71027 = class("Quest71027", QuestActorProxy)
Quest71027.defaultAlias = "Quest71027"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71027:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102701"] = self.OnSubStart7102701, ["7102702"] = self.OnSubStart7102702}
end

function Quest71027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102701"] = self.OnSubFinish7102701, ["7102702"] = self.OnSubFinish7102702}
end

function Quest71027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102701"] = self.OnSubFailed7102701, ["7102702"] = self.OnSubFailed7102702}
end

function Quest71027:Start()
    print("Start")
end

function Quest71027:OnDestroy()
    print("OnDestroy")
end

function Quest71027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71027:OnSubStart7102701(arg1)
    print("OnSubStart7102701")
end

function Quest71027:OnSubFinish7102701(arg1)
    print("OnSubFinish7102701")
end

function Quest71027:OnSubFailed7102701(arg1)
    print("OnSubFailed7102701")
end

function Quest71027:OnSubStart7102702(arg1)
    print("OnSubStart7102702")
end

function Quest71027:OnSubFinish7102702(arg1)
    print("OnSubFinish7102702")
end

function Quest71027:OnSubFailed7102702(arg1)
    print("OnSubFailed7102702")
end

return Quest71027
