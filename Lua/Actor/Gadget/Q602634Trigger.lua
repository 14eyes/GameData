require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602634Trigger = class("Q602634Trigger", GadgetActorProxy)
Q602634Trigger.defaultAlias = "Q602634Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602634Trigger:OnPostDataPrepare()
    print("Q602634Trigger - OnPostDataPrepare")
    this = self
end

function Q602634Trigger:OnPostComponentPrepare()
    print("Q602634Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602634Trigger:TriggerIn()
    print("Q602634Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602638)
    this:DestroySelf()
end

function Q602634Trigger:PreTriggerIn()
    print("Q602634Trigger - PreTriggerIn")
end

function Q602634Trigger:LightUpTriggerIn()
    print("Q602634Trigger - LightUpTriggerIn")
end

function Q602634Trigger:TriggerOut()
    print("Q602634Trigger - TriggerOut")
end

return Q602634Trigger
