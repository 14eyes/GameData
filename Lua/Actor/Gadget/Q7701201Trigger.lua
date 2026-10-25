require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701201Trigger = class("Q7701201Trigger", GadgetActorProxy)
Q7701201Trigger.defaultAlias = "Q7701201Trigger"
local Q77012ClientConfig = require("Quest/Client/Q77012ClientConfig")

local this
local subIDs = Q77012ClientConfig.SubIDs
local datas = Q77012ClientConfig.Datas
local npcs = Q77012ClientConfig.Npcs
local points = Q77012ClientConfig.Points

function Q7701201Trigger:OnPostDataPrepare()
    print("Q7701201Trigger - OnPostDataPrepare")
    this = self
end

function Q7701201Trigger:OnPostComponentPrepare()
    print("Q7701201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77012)
end

function Q7701201Trigger:TriggerIn()
    print("Q7701201Trigger - TriggerIn")
    actorMgr:GetActor("77012"):TransmitPlayerWithQuestIdByData(7701201, 1, datas.TransmitData_7, nil, nil, nil)
    this:DestroySelf()
end

function Q7701201Trigger:PreTriggerIn()
    print("Q7701201Trigger - PreTriggerIn")
end

function Q7701201Trigger:LightUpTriggerIn()
    print("Q7701201Trigger - LightUpTriggerIn")
end

function Q7701201Trigger:TriggerOut()
    print("Q7701201Trigger - TriggerOut")
end

return Q7701201Trigger
