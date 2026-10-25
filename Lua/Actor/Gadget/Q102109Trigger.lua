require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102109Trigger = class("Q102109Trigger", GadgetActorProxy)
Q102109Trigger.defaultAlias = "Q102109Trigger"
local Q1021ClientConfig = require("Quest/Client/Q1021ClientConfig")

function Q102109Trigger:OnPostDataPrepare() end

function Q102109Trigger:OnPostComponentPrepare()
    print("***************create trigger 1111")
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102109Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1021ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************create trigger 222")
        actor:NarratorOnlyTaskByData(Q1021ClientConfig.NarratorData1, nil, 1021)
        print("***************create trigger 333")
    end

    self:DestroySelf()
end

function Q102109Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102109Trigger
