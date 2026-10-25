require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711002Trigger = class("Q7711002Trigger", GadgetActorProxy)
Q7711002Trigger.defaultAlias = "Q7711002Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711002Trigger:OnPostDataPrepare()
    print("Q7711002Trigger - OnPostDataPrepare")
    this = self
end

function Q7711002Trigger:OnPostComponentPrepare()
    print("Q7711002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711002Trigger:TriggerIn()
    print("Q7711002Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711002)
    this:DestroySelf()
end

function Q7711002Trigger:PreTriggerIn()
    print("Q7711002Trigger - PreTriggerIn")
end

function Q7711002Trigger:LightUpTriggerIn()
    print("Q7711002Trigger - LightUpTriggerIn")
end

function Q7711002Trigger:TriggerOut()
    print("Q7711002Trigger - TriggerOut")
end

return Q7711002Trigger
