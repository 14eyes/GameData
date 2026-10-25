require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74145 = class("Quest74145", QuestActorProxy)
Quest74145.defaultAlias = "Quest74145"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74145:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74145:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7414501"] = self.OnSubStart7414501, ["7414502"] = self.OnSubStart7414502}
end

function Quest74145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7414501"] = self.OnSubFinish7414501, ["7414502"] = self.OnSubFinish7414502}
end

function Quest74145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74145:Start()
    print("Start")
end

function Quest74145:OnDestroy()
    print("OnDestroy")
end

function Quest74145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74145:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74145:OnSubStart7414501(arg1)
    print("OnSubStart7414501")
end

function Quest74145:OnSubFinish7414501(arg1)
    print("OnSubFinish7414501")
end

function Quest74145:OnSubStart7414502(arg1)
    print("OnSubStart7414502")
end

function Quest74145:OnSubFinish7414502(arg1)
    print("OnSubFinish7414502")
end

return Quest74145
