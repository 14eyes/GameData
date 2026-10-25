require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711008Trigger = class("Q7711008Trigger", GadgetActorProxy)
Q7711008Trigger.defaultAlias = "Q7711008Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711008Trigger:OnPostDataPrepare()
    print("Q7711008Trigger - OnPostDataPrepare")
    this = self
end

function Q7711008Trigger:OnPostComponentPrepare()
    print("Q7711008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711008Trigger:TriggerIn()
    print("Q7711008Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711008)
    this:DestroySelf()
end

function Q7711008Trigger:PreTriggerIn()
    print("Q7711008Trigger - PreTriggerIn")
end

function Q7711008Trigger:LightUpTriggerIn()
    print("Q7711008Trigger - LightUpTriggerIn")
end

function Q7711008Trigger:TriggerOut()
    print("Q7711008Trigger - TriggerOut")
end

return Q7711008Trigger
