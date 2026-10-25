require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700901Trigger = class("Q7700901Trigger", GadgetActorProxy)
Q7700901Trigger.defaultAlias = "Q7700901Trigger"
local Q77009ClientConfig = require("Quest/Client/Q77009ClientConfig")

local this
local subIDs = Q77009ClientConfig.SubIDs
local datas = Q77009ClientConfig.Datas
local npcs = Q77009ClientConfig.Npcs

function Q7700901Trigger:OnPostDataPrepare()
    print("Q7700901Trigger - OnPostDataPrepare")
    this = self
end

function Q7700901Trigger:OnPostComponentPrepare()
    print("Q7700901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77009)
end

function Q7700901Trigger:TriggerIn()
    print("Q7700901Trigger - TriggerIn")
    actorMgr:GetActor("77009"):TransmitPlayerWithQuestIdByData(7700901, 1, datas.TransmitData_2, nil, nil, nil)
    this:DestroySelf()
end

function Q7700901Trigger:PreTriggerIn()
    print("Q7700901Trigger - PreTriggerIn")
end

function Q7700901Trigger:LightUpTriggerIn()
    print("Q7700901Trigger - LightUpTriggerIn")
end

function Q7700901Trigger:TriggerOut()
    print("Q7700901Trigger - TriggerOut")
end

return Q7700901Trigger
