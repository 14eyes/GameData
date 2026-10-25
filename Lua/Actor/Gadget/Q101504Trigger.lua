require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101504Trigger = class("Q101504Trigger", GadgetActorProxy)
Q101504Trigger.defaultAlias = "Q101504Trigger"
local Q1015ClientConfig = require("Quest/Client/Q1015ClientConfig")

util.do_require("Quest/Share/Q1015ShareConfig")
function Q101504Trigger:OnPostDataPrepare() end

function Q101504Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101504Trigger:TriggerIn()
    print("IN Q101504Trigger")
    local actor = actorMgr:GetActor(Q1015ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTask(Q1015ClientConfig.NarratorData3)
    end

    self:DestroySelf()
end

function Q101504Trigger:TriggerOut() end
return Q101504Trigger
