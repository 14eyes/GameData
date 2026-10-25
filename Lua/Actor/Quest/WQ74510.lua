require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74510 = class("Quest74510", QuestActorProxy)
Quest74510.defaultAlias = "Quest74510"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74510:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451001"] = self.OnSubStart7451001, ["7451002"] = self.OnSubStart7451002}
end

function Quest74510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451001"] = self.OnSubFinish7451001, ["7451002"] = self.OnSubFinish7451002}
end

function Quest74510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74510:Start()
    print("Start")
end

function Quest74510:OnDestroy()
    print("OnDestroy")
end

function Quest74510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q74510Trigger", 3, false)
end

function Quest74510:OnSubStart7451001(arg1)
    print("OnSubStart7451001")
    actorMgr:CreateActorWithPos("Q74510Trigger", "Actor/Gadget/Q74510Trigger", 70900002, 0, {x = 3586.095, y = 446.167, z = 4443.676}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74510:OnSubFinish7451001(arg1)
    print("OnSubFinish7451001")
end

function Quest74510:OnSubStart7451002(arg1)
    print("OnSubStart7451002")
end

function Quest74510:OnSubFinish7451002(arg1)
    print("OnSubFinish7451002")
end

return Quest74510
