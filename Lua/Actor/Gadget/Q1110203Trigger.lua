require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110202Trigger = class("Q1110202Trigger", GadgetActorProxy)
Q1110202Trigger.defaultAlias = "Q1110202Trigger"
local Q11102ClientConfig = require("Quest/Client/Q11102ClientConfig")

util.do_require("Quest/Share/Q11102ShareConfig")
function Q1110202Trigger:OnPostDataPrepare() end

function Q1110202Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110202Trigger:TriggerIn()
    print("IN Q1110202Trigger")
end

function Q1110202Trigger:TriggerOut()
    print("out Q11102023rigger")
    local actor = actorMgr:GetActor(Q11102ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(Q11102ClientConfig.NarratorData4, nil, "StoryCut")
    end

    self:DestroySelf()
end

return Q1110202Trigger
