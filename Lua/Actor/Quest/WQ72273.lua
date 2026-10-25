require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72273 = class("Quest72273", QuestActorProxy)
Quest72273.defaultAlias = "Quest72273"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72273:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72273:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227301"] = self.OnSubStart7227301,
        ["7227302"] = self.OnSubStart7227302,
        ["7227303"] = self.OnSubStart7227303
    }
end

function Quest72273:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227301"] = self.OnSubFinish7227301,
        ["7227302"] = self.OnSubFinish7227302,
        ["7227303"] = self.OnSubFinish7227303
    }
end

function Quest72273:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72273:Start()
    print("Start")
end

function Quest72273:OnDestroy()
    print("OnDestroy")
end

function Quest72273:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72273:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72273:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72273:OnSubStart7227301(arg1)
    print("OnSubStart7227301")
end

function Quest72273:OnSubFinish7227301(arg1)
    print("OnSubFinish7227301")
end

function Quest72273:OnSubStart7227302(arg1)
    print("OnSubStart7227302")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest72273:OnSubFinish7227302(arg1)
    print("OnSubFinish7227302")
end

function Quest72273:OnSubStart7227303(arg1)
    print("OnSubStart7227303")
end

function Quest72273:OnSubFinish7227303(arg1)
    print("OnSubFinish7227303")
end

return Quest72273
