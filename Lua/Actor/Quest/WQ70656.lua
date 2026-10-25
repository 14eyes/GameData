require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70656 = class("Quest70656", QuestActorProxy)
Quest70656.defaultAlias = "Quest70656"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70656:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70656:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065601"] = self.OnSubStart7065601}
end

function Quest70656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065601"] = self.OnSubFinish7065601}
end

function Quest70656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065601"] = self.OnSubFailed7065601}
end

function Quest70656:Start()
    print("Start")
end

function Quest70656:OnDestroy()
    print("OnDestroy")
end

function Quest70656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70656:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70656:OnSubStart7065601(arg1)
    print("OnSubStart7065601")
end

function Quest70656:OnSubFinish7065601(arg1)
    print("OnSubFinish7065601")
    self:ShowTutorialDialog(810)
end

function Quest70656:OnSubFailed7065601(arg1)
    print("OnSubFailed7065601")
end

return Quest70656
