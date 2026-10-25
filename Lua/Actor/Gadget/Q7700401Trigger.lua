require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700401Trigger = class("Q7700401Trigger", GadgetActorProxy)
Q7700401Trigger.defaultAlias = "Q7700401Trigger"
local Q77004ClientConfig = require("Quest/Client/Q77004ClientConfig")

local this
local subIDs = Q77004ClientConfig.SubIDs
local datas = Q77004ClientConfig.Datas
local npcs = Q77004ClientConfig.Npcs
local points = Q77004ClientConfig.Points

function Q7700401Trigger:OnPostDataPrepare()
    print("Q7700401Trigger - OnPostDataPrepare")
    this = self
end

function Q7700401Trigger:OnPostComponentPrepare()
    print("Q7700401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77004)
end

function Q7700401Trigger:TriggerIn()
    print("Q7700401Trigger - TriggerIn")
    actorMgr:GetActor("77004"):TransmitPlayerWithQuestIdByData(7700401, 1, datas.TransmitData_3, nil, nil, nil)
    this:DestroySelf()
end

function Q7700401Trigger:PreTriggerIn()
    print("Q7700401Trigger - PreTriggerIn")
end

function Q7700401Trigger:LightUpTriggerIn()
    print("Q7700401Trigger - LightUpTriggerIn")
end

function Q7700401Trigger:TriggerOut()
    print("Q7700401Trigger - TriggerOut")
end

return Q7700401Trigger
