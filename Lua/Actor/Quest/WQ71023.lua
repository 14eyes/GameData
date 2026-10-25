require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71023 = class("Quest71023", QuestActorProxy)
Quest71023.defaultAlias = "Quest71023"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71023:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102301"] = self.OnSubStart7102301, ["7102302"] = self.OnSubStart7102302}
end

function Quest71023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102301"] = self.OnSubFinish7102301, ["7102302"] = self.OnSubFinish7102302}
end

function Quest71023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102301"] = self.OnSubFailed7102301, ["7102302"] = self.OnSubFailed7102302}
end

function Quest71023:Start()
    print("Start")
end

function Quest71023:OnDestroy()
    print("OnDestroy")
end

function Quest71023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71023:OnSubStart7102301(arg1)
    print("OnSubStart7102301")
end

function Quest71023:OnSubFinish7102301(arg1)
    print("OnSubFinish7102301")
end

function Quest71023:OnSubFailed7102301(arg1)
    print("OnSubFailed7102301")
end

function Quest71023:OnSubStart7102302(arg1)
    print("OnSubStart7102302")
end

function Quest71023:OnSubFinish7102302(arg1)
    print("OnSubFinish7102302")
end

function Quest71023:OnSubFailed7102302(arg1)
    print("OnSubFailed7102302")
end

return Quest71023
