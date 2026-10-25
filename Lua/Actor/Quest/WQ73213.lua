require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73213 = class("Quest73213", QuestActorProxy)
Quest73213.defaultAlias = "Quest73213"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73213:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321308"] = self.OnSubStart7321308,
        ["7321301"] = self.OnSubStart7321301,
        ["7321302"] = self.OnSubStart7321302,
        ["7321303"] = self.OnSubStart7321303,
        ["7321304"] = self.OnSubStart7321304,
        ["7321306"] = self.OnSubStart7321306,
        ["7321307"] = self.OnSubStart7321307,
        ["7321305"] = self.OnSubStart7321305
    }
end

function Quest73213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321308"] = self.OnSubFinish7321308,
        ["7321301"] = self.OnSubFinish7321301,
        ["7321302"] = self.OnSubFinish7321302,
        ["7321303"] = self.OnSubFinish7321303,
        ["7321304"] = self.OnSubFinish7321304,
        ["7321306"] = self.OnSubFinish7321306,
        ["7321307"] = self.OnSubFinish7321307,
        ["7321305"] = self.OnSubFinish7321305
    }
end

function Quest73213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73213:Start()
    print("Start")
end

function Quest73213:OnDestroy()
    print("OnDestroy")
end

function Quest73213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73213:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73213:OnSubStart7321308(arg1)
    print("OnSubStart7321308")
end

function Quest73213:OnSubFinish7321308(arg1)
    print("OnSubFinish7321308")
end

function Quest73213:OnSubStart7321301(arg1)
    print("OnSubStart7321301")
end

function Quest73213:OnSubFinish7321301(arg1)
    print("OnSubFinish7321301")
end

function Quest73213:OnSubStart7321302(arg1)
    print("OnSubStart7321302")
end

function Quest73213:OnSubFinish7321302(arg1)
    print("OnSubFinish7321302")
end

function Quest73213:OnSubStart7321303(arg1)
    print("OnSubStart7321303")
end

function Quest73213:OnSubFinish7321303(arg1)
    print("OnSubFinish7321303")
end

function Quest73213:OnSubStart7321304(arg1)
    print("OnSubStart7321304")
end

function Quest73213:OnSubFinish7321304(arg1)
    print("OnSubFinish7321304")
end

function Quest73213:OnSubStart7321306(arg1)
    print("OnSubStart7321306")
end

function Quest73213:OnSubFinish7321306(arg1)
    print("OnSubFinish7321306")
end

function Quest73213:OnSubStart7321307(arg1)
    print("OnSubStart7321307")
end

function Quest73213:OnSubFinish7321307(arg1)
    print("OnSubFinish7321307")
end

function Quest73213:OnSubStart7321305(arg1)
    print("OnSubStart7321305")
end

function Quest73213:OnSubFinish7321305(arg1)
    print("OnSubFinish7321305")
end

return Quest73213
