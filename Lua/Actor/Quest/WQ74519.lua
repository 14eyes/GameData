require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74519 = class("Quest74519", QuestActorProxy)
Quest74519.defaultAlias = "Quest74519"
local clientData
local this
local mainID
local actorAlias

function Quest74519:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74519:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451901"] = self.OnSubStart7451901, ["7451902"] = self.OnSubStart7451902}
end

function Quest74519:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451901"] = self.OnSubFinish7451901, ["7451902"] = self.OnSubFinish7451902}
end

function Quest74519:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74519:Start()
    print("Start")
end

function Quest74519:OnDestroy()
    print("OnDestroy")
end

function Quest74519:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74519:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74519:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74519:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74519:OnSubStart7451901(arg1)
    print("OnSubStart7451901")
end

function Quest74519:OnSubFinish7451901(arg1)
    print("OnSubFinish7451901")
end

function Quest74519:OnSubStart7451902(arg1)
    print("OnSubStart7451902")
end

function Quest74519:OnSubFinish7451902(arg1)
    print("OnSubFinish7451902")
end

return Quest74519
