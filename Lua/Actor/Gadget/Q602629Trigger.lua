require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602629Trigger = class("Q602629Trigger", GadgetActorProxy)
Q602629Trigger.defaultAlias = "Q602629Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602629Trigger:OnPostDataPrepare()
    print("Q602629Trigger - OnPostDataPrepare")
    this = self
end

function Q602629Trigger:OnPostComponentPrepare()
    print("Q602629Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602629Trigger:TriggerIn()
    print("Q602629Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602629)
    this:DestroySelf()
end

function Q602629Trigger:PreTriggerIn()
    print("Q602629Trigger - PreTriggerIn")
end

function Q602629Trigger:LightUpTriggerIn()
    print("Q602629Trigger - LightUpTriggerIn")
end

function Q602629Trigger:TriggerOut()
    print("Q602629Trigger - TriggerOut")
end

return Q602629Trigger
