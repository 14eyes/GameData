require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76103 = class("Quest76103", QuestActorProxy)
Quest76103.defaultAlias = "Quest76103"
local clientData
local this
local mainID
local actorAlias

function Quest76103:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7610306"] = self.OnSubStart7610306,
        ["7610301"] = self.OnSubStart7610301,
        ["7610307"] = self.OnSubStart7610307,
        ["7610302"] = self.OnSubStart7610302,
        ["7610308"] = self.OnSubStart7610308,
        ["7610303"] = self.OnSubStart7610303,
        ["7610309"] = self.OnSubStart7610309,
        ["7610304"] = self.OnSubStart7610304,
        ["7610310"] = self.OnSubStart7610310,
        ["7610305"] = self.OnSubStart7610305,
        ["7610311"] = self.OnSubStart7610311
    }
end

function Quest76103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7610306"] = self.OnSubFinish7610306,
        ["7610301"] = self.OnSubFinish7610301,
        ["7610307"] = self.OnSubFinish7610307,
        ["7610302"] = self.OnSubFinish7610302,
        ["7610308"] = self.OnSubFinish7610308,
        ["7610303"] = self.OnSubFinish7610303,
        ["7610309"] = self.OnSubFinish7610309,
        ["7610304"] = self.OnSubFinish7610304,
        ["7610310"] = self.OnSubFinish7610310,
        ["7610305"] = self.OnSubFinish7610305,
        ["7610311"] = self.OnSubFinish7610311
    }
end

function Quest76103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76103:Start()
    print("Start")
end

function Quest76103:OnDestroy()
    print("OnDestroy")
end

function Quest76103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76103:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76103:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76103:OnSubStart7610306(arg1)
    print("OnSubStart7610306")
end

function Quest76103:OnSubFinish7610306(arg1)
    print("OnSubFinish7610306")
end

function Quest76103:OnSubStart7610301(arg1)
    print("OnSubStart7610301")
end

function Quest76103:OnSubFinish7610301(arg1)
    print("OnSubFinish7610301")
end

function Quest76103:OnSubStart7610307(arg1)
    print("OnSubStart7610307")
end

function Quest76103:OnSubFinish7610307(arg1)
    print("OnSubFinish7610307")
end

function Quest76103:OnSubStart7610302(arg1)
    print("OnSubStart7610302")
end

function Quest76103:OnSubFinish7610302(arg1)
    print("OnSubFinish7610302")
end

function Quest76103:OnSubStart7610308(arg1)
    print("OnSubStart7610308")
end

function Quest76103:OnSubFinish7610308(arg1)
    print("OnSubFinish7610308")
end

function Quest76103:OnSubStart7610303(arg1)
    print("OnSubStart7610303")
end

function Quest76103:OnSubFinish7610303(arg1)
    print("OnSubFinish7610303")
end

function Quest76103:OnSubStart7610309(arg1)
    print("OnSubStart7610309")
end

function Quest76103:OnSubFinish7610309(arg1)
    print("OnSubFinish7610309")
end

function Quest76103:OnSubStart7610304(arg1)
    print("OnSubStart7610304")
end

function Quest76103:OnSubFinish7610304(arg1)
    print("OnSubFinish7610304")
end

function Quest76103:OnSubStart7610310(arg1)
    print("OnSubStart7610310")
end

function Quest76103:OnSubFinish7610310(arg1)
    print("OnSubFinish7610310")
end

function Quest76103:OnSubStart7610305(arg1)
    print("OnSubStart7610305")
end

function Quest76103:OnSubFinish7610305(arg1)
    print("OnSubFinish7610305")
end

function Quest76103:OnSubStart7610311(arg1)
    print("OnSubStart7610311")
end

function Quest76103:OnSubFinish7610311(arg1)
    print("OnSubFinish7610311")
end

return Quest76103
