require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70039 = class("Quest70039", QuestActorProxy)
Quest70039.defaultAlias = "Quest70039"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70039:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7003901"] = self.OnSubStart7003901}
end

function Quest70039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7003901"] = self.OnSubFinish7003901}
end

function Quest70039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70039:Start()
    print("Start")
end

function Quest70039:OnDestroy()
    print("OnDestroy")
end

function Quest70039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70039:OnSubStart7003901(arg1)
    print("OnSubStart7003901")
end

function Quest70039:OnSubFinish7003901(arg1)
    print("OnSubFinish7003901")
end

return Quest70039
