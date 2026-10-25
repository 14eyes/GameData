require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73695 = class("Quest73695", QuestActorProxy)
Quest73695.defaultAlias = "Quest73695"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest73695:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73695:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369501"] = self.OnSubStart7369501, ["7369502"] = self.OnSubStart7369502}
end

function Quest73695:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369501"] = self.OnSubFinish7369501, ["7369502"] = self.OnSubFinish7369502}
end

function Quest73695:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73695:Start()
    print("Start")
end

function Quest73695:OnDestroy()
    print("OnDestroy")
end

function Quest73695:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73695:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73695:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73695:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73695:OnSubStart7369501(arg1)
    print("OnSubStart7369501")
end

function Quest73695:OnSubFinish7369501(arg1)
    print("OnSubFinish7369501")
end

function Quest73695:OnSubStart7369502(arg1)
    print("OnSubStart7369502")
    actorMgr:CreateActorWithPos("Q73695Trigger", "Actor/Gadget/Q73695Trigger", 70900002, 0, points.TPos_Q73695Trigger.pos, points.TPos_Q73695Trigger.rot, true, false, 3)
end

function Quest73695:OnSubFinish7369502(arg1)
    print("OnSubFinish7369502")
    this:ActorDestroy("Q73695Trigger")
end

return Quest73695
