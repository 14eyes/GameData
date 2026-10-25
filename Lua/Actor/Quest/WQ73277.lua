require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73277 = class("Quest73277", QuestActorProxy)
Quest73277.defaultAlias = "Quest73277"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest73277:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73277:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327701"] = self.OnSubStart7327701}
end

function Quest73277:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327701"] = self.OnSubFinish7327701}
end

function Quest73277:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73277:Start()
    print("Start")
end

function Quest73277:OnDestroy()
    print("OnDestroy")
end

function Quest73277:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73277:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73277:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73277:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73277:OnSubStart7327701(arg1)
    print("OnSubStart7327701")
    self:ActorDestroy("Q73277Trigger1")
    self:ActorDestroy("Q73277Trigger2")
    self:ActorDestroy("Q73277Trigger3")
    self:ActorDestroy("Q73277Trigger4")
    self:ActorDestroy("Q73277Trigger5")
    self:ActorDestroy("Q73277Trigger6")
    actorMgr:CreateActorWithPos("Q73277Trigger1", "Actor/Gadget/Q73277Trigger1", 70900002, 0, {x = -841.668, y = -150.0, z = 3885.429}, {x = 0.0, y = 326.03, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73277Trigger2", "Actor/Gadget/Q73277Trigger2", 70900002, 0, {x = -828.176, y = -150.0, z = 4012.748}, {x = 0.0, y = 28.624, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73277Trigger3", "Actor/Gadget/Q73277Trigger3", 70900002, 0, {x = -695.412, y = -150.0, z = 4103.39}, {x = 0.0, y = 274.047, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73277Trigger4", "Actor/Gadget/Q73277Trigger4", 70900002, 0, {x = -569.767, y = -150.0, z = 4058.352}, {x = 0.0, y = 350.609, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73277Trigger5", "Actor/Gadget/Q73277Trigger5", 70900002, 0, {x = -605.379, y = -150.0, z = 3923.201}, {x = 0.0, y = 43.244, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73277Trigger6", "Actor/Gadget/Q73277Trigger6", 70900002, 0, {x = -730.481, y = -90.0, z = 3988.506}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73277:OnSubFinish7327701(arg1)
    print("OnSubFinish7327701")
end

return Quest73277
