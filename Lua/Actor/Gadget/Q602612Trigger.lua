require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602612Trigger = class("Q602612Trigger", GadgetActorProxy)
Q602612Trigger.defaultAlias = "Q602612Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602612Trigger:OnPostDataPrepare()
    print("Q602612Trigger - OnPostDataPrepare")
    this = self
end

function Q602612Trigger:OnPostComponentPrepare()
    print("Q602612Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602612Trigger:TriggerIn()
    print("Q602612Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602612)
    this:DestroySelf()
end

function Q602612Trigger:PreTriggerIn()
    print("Q602612Trigger - PreTriggerIn")
end

function Q602612Trigger:LightUpTriggerIn()
    print("Q602612Trigger - LightUpTriggerIn")
end

function Q602612Trigger:TriggerOut()
    print("Q602612Trigger - TriggerOut")
end

return Q602612Trigger
