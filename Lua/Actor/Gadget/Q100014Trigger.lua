require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100014Trigger = class("Q100014Trigger", GadgetActorProxy)
Q100014Trigger.defaultAlias = "Q100014Trigger"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q100014Trigger:OnPostDataPrepare() end

function Q100014Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100014Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:CreateQuestNpcById(100014, 10200)
    end

    self:DestroySelf()
end

function Q100014Trigger:TriggerOut() end
return Q100014Trigger
