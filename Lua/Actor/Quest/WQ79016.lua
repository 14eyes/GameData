require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79016 = class("Quest79016", QuestActorProxy)
Quest79016.defaultAlias = "Quest79016"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7901601"] = self.OnSubStart7901601, ["7901602"] = self.OnSubStart7901602}
end

function Quest79016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7901601"] = self.OnSubFinish7901601, ["7901602"] = self.OnSubFinish7901602}
end

function Quest79016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7901601"] = self.OnSubFailed7901601, ["7901602"] = self.OnSubFailed7901602}
end

function Quest79016:Start()
    print("Start")
end

function Quest79016:OnDestroy()
    print("OnDestroy")
end

function Quest79016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79016:OnSubStart7901601(arg1)
    print("OnSubStart7901601")
end

function Quest79016:OnSubFinish7901601(arg1)
    print("OnSubFinish7901601")
end

function Quest79016:OnSubFailed7901601(arg1)
    print("OnSubFailed7901601")
end

function Quest79016:OnSubStart7901602(arg1)
    print("OnSubStart7901602")
end

function Quest79016:OnSubFinish7901602(arg1)
    print("OnSubFinish7901602")
end

function Quest79016:OnSubFailed7901602(arg1)
    print("OnSubFailed7901602")
end

return Quest79016
