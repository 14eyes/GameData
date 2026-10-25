require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110206Trigger = class("Q1110206Trigger", GadgetActorProxy)
Q1110206Trigger.defaultAlias = "Q1110206Trigger"
local Q11102ClientConfig = require("Quest/Client/Q11102ClientConfig")

util.do_require("Quest/Share/Q11102ShareConfig")
function Q1110206Trigger:OnPostDataPrepare() end

function Q1110206Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110206Trigger:TriggerIn()
    print("IN Q1110206Trigger")
    local actor = actorMgr:GetActor(Q11102ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(Q11102ClientConfig.NarratorData3, nil, "StoryCut")
    end

    self:DestroySelf()
end

function Q1110206Trigger:TriggerOut() end
return Q1110206Trigger
