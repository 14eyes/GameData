require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609512Trigger = class("Q7609512Trigger", GadgetActorProxy)
Q7609512Trigger.defaultAlias = "Q7609512Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609512Trigger:OnPostDataPrepare()
    print("Q7609512Trigger - OnPostDataPrepare")
    this = self
end

function Q7609512Trigger:OnPostComponentPrepare()
    print("Q7609512Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609512Trigger:TriggerIn()
    print("Q7609512Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609512)
    this:DestroySelf()
end

function Q7609512Trigger:PreTriggerIn()
    print("Q7609512Trigger - PreTriggerIn")
end

function Q7609512Trigger:LightUpTriggerIn()
    print("Q7609512Trigger - LightUpTriggerIn")
end

function Q7609512Trigger:TriggerOut()
    print("Q7609512Trigger - TriggerOut")
end

return Q7609512Trigger
