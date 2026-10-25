require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74079 = class("Quest74079", QuestActorProxy)
Quest74079.defaultAlias = "Quest74079"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74079:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74079:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7407901"] = self.OnSubStart7407901}
end

function Quest74079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7407901"] = self.OnSubFinish7407901}
end

function Quest74079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74079:Start()
    print("Start")
end

function Quest74079:OnDestroy()
    print("OnDestroy")
end

function Quest74079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74079:OnSubStart7407901(arg1)
    print("OnSubStart7407901")
    actorMgr:CreateActorWithPos("Q74079Trigger", "Actor/Gadget/Q74079Trigger", 70900002, 0, {x = 200.262, y = -21.491, z = 200.267}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1080)
end

function Quest74079:OnSubFinish7407901(arg1)
    print("OnSubFinish7407901")
end

return Quest74079
