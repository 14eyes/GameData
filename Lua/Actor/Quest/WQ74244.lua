require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74244 = class("Quest74244", QuestActorProxy)
Quest74244.defaultAlias = "Quest74244"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74244:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74244:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7424401"] = self.OnSubStart7424401}
end

function Quest74244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7424401"] = self.OnSubFinish7424401}
end

function Quest74244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74244:Start()
    print("Start")
end

function Quest74244:OnDestroy()
    print("OnDestroy")
end

function Quest74244:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74244:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74244:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74244:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74244:OnSubStart7424401(arg1)
    print("OnSubStart7424401")
    actorMgr:CreateActorWithPos("Q74244Trigger", "Actor/Gadget/Q74244Trigger", 70900002, 0, {x = 1201.482, y = 256.067, z = 4214.405}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74244:OnSubFinish7424401(arg1)
    print("OnSubFinish7424401")
    this:ActorDestroy("Q74244Trigger")
end

return Quest74244
