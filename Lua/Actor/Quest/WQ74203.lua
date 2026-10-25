require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74203 = class("Quest74203", QuestActorProxy)
Quest74203.defaultAlias = "Quest74203"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74203:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7420301"] = self.OnSubStart7420301,
        ["7420302"] = self.OnSubStart7420302,
        ["7420303"] = self.OnSubStart7420303,
        ["7420304"] = self.OnSubStart7420304,
        ["7420305"] = self.OnSubStart7420305,
        ["7420306"] = self.OnSubStart7420306,
        ["7420307"] = self.OnSubStart7420307,
        ["7420308"] = self.OnSubStart7420308,
        ["7420309"] = self.OnSubStart7420309
    }
end

function Quest74203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7420301"] = self.OnSubFinish7420301,
        ["7420302"] = self.OnSubFinish7420302,
        ["7420303"] = self.OnSubFinish7420303,
        ["7420304"] = self.OnSubFinish7420304,
        ["7420305"] = self.OnSubFinish7420305,
        ["7420306"] = self.OnSubFinish7420306,
        ["7420307"] = self.OnSubFinish7420307,
        ["7420308"] = self.OnSubFinish7420308,
        ["7420309"] = self.OnSubFinish7420309
    }
end

function Quest74203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74203:Start()
    print("Start")
end

function Quest74203:OnDestroy()
    print("OnDestroy")
end

function Quest74203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74203:OnSubStart7420301(arg1)
    print("OnSubStart7420301")
end

function Quest74203:OnSubFinish7420301(arg1)
    print("OnSubFinish7420301")
end

function Quest74203:OnSubStart7420302(arg1)
    print("OnSubStart7420302")
end

function Quest74203:OnSubFinish7420302(arg1)
    print("OnSubFinish7420302")
end

function Quest74203:OnSubStart7420303(arg1)
    print("OnSubStart7420303")
end

function Quest74203:OnSubFinish7420303(arg1)
    print("OnSubFinish7420303")
end

function Quest74203:OnSubStart7420304(arg1)
    print("OnSubStart7420304")
end

function Quest74203:OnSubFinish7420304(arg1)
    print("OnSubFinish7420304")
end

function Quest74203:OnSubStart7420305(arg1)
    print("OnSubStart7420305")
end

function Quest74203:OnSubFinish7420305(arg1)
    print("OnSubFinish7420305")
end

function Quest74203:OnSubStart7420306(arg1)
    print("OnSubStart7420306")
end

function Quest74203:OnSubFinish7420306(arg1)
    print("OnSubFinish7420306")
end

function Quest74203:OnSubStart7420307(arg1)
    print("OnSubStart7420307")
end

function Quest74203:OnSubFinish7420307(arg1)
    print("OnSubFinish7420307")
end

function Quest74203:OnSubStart7420308(arg1)
    print("OnSubStart7420308")
end

function Quest74203:OnSubFinish7420308(arg1)
    print("OnSubFinish7420308")
end

function Quest74203:OnSubStart7420309(arg1)
    print("OnSubStart7420309")
end

function Quest74203:OnSubFinish7420309(arg1)
    print("OnSubFinish7420309")
end

return Quest74203
