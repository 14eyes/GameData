require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73293 = class("Quest73293", QuestActorProxy)
Quest73293.defaultAlias = "Quest73293"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73293:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73293:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329301"] = self.OnSubStart7329301,
        ["7329302"] = self.OnSubStart7329302,
        ["7329303"] = self.OnSubStart7329303,
        ["7329304"] = self.OnSubStart7329304,
        ["7329305"] = self.OnSubStart7329305,
        ["7329306"] = self.OnSubStart7329306
    }
end

function Quest73293:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329301"] = self.OnSubFinish7329301,
        ["7329302"] = self.OnSubFinish7329302,
        ["7329303"] = self.OnSubFinish7329303,
        ["7329304"] = self.OnSubFinish7329304,
        ["7329305"] = self.OnSubFinish7329305,
        ["7329306"] = self.OnSubFinish7329306
    }
end

function Quest73293:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73293:Start()
    print("Start")
end

function Quest73293:OnDestroy()
    print("OnDestroy")
end

function Quest73293:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73293:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73293:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73293:OnSubStart7329301(arg1)
    print("OnSubStart7329301")
end

function Quest73293:OnSubFinish7329301(arg1)
    print("OnSubFinish7329301")
end

function Quest73293:OnSubStart7329302(arg1)
    print("OnSubStart7329302")
end

function Quest73293:OnSubFinish7329302(arg1)
    print("OnSubFinish7329302")
end

function Quest73293:OnSubStart7329303(arg1)
    print("OnSubStart7329303")
end

function Quest73293:OnSubFinish7329303(arg1)
    print("OnSubFinish7329303")
end

function Quest73293:OnSubStart7329304(arg1)
    print("OnSubStart7329304")
end

function Quest73293:OnSubFinish7329304(arg1)
    print("OnSubFinish7329304")
end

function Quest73293:OnSubStart7329305(arg1)
    print("OnSubStart7329305")
end

function Quest73293:OnSubFinish7329305(arg1)
    print("OnSubFinish7329305")
end

function Quest73293:OnSubStart7329306(arg1)
    print("OnSubStart7329306")
    actorUtils.FinishQuestID(false, 7329306)
end

function Quest73293:OnSubFinish7329306(arg1)
    print("OnSubFinish7329306")
end

return Quest73293
