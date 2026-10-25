require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q427Trigger = class("Q427Trigger", GadgetActorProxy)
Q427Trigger.defaultAlias = "Q427Trigger"
local Q427ClientConfig = require("Quest/Client/Q427ClientConfig")

function Q427Trigger:OnPostDataPrepare() end

function Q427Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q427Trigger:TriggerIn()
    print("Out Q427Trigger")
    local actor = actorMgr:GetActor(Q427ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q427Trigger:TriggerOut() end
return Q427Trigger
