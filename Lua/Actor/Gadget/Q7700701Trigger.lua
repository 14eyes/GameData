require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700701Trigger = class("Q7700701Trigger", GadgetActorProxy)
Q7700701Trigger.defaultAlias = "Q7700701Trigger"
local Q77007ClientConfig = require("Quest/Client/Q77007ClientConfig")

local this
local subIDs = Q77007ClientConfig.SubIDs
local datas = Q77007ClientConfig.Datas
local npcs = Q77007ClientConfig.Npcs
local points = Q77007ClientConfig.Points

function Q7700701Trigger:OnPostDataPrepare()
    print("Q7700701Trigger - OnPostDataPrepare")
    this = self
end

function Q7700701Trigger:OnPostComponentPrepare()
    print("Q7700701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77007)
end

function Q7700701Trigger:TriggerIn()
    print("Q7700701Trigger - TriggerIn")
    actorMgr:GetActor("77007"):TransmitPlayerWithQuestIdByData(7700701, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q7700701Trigger:PreTriggerIn()
    print("Q7700701Trigger - PreTriggerIn")
end

function Q7700701Trigger:LightUpTriggerIn()
    print("Q7700701Trigger - LightUpTriggerIn")
end

function Q7700701Trigger:TriggerOut()
    print("Q7700701Trigger - TriggerOut")
end

return Q7700701Trigger
