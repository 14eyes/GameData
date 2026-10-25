require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711010Trigger = class("Q7711010Trigger", GadgetActorProxy)
Q7711010Trigger.defaultAlias = "Q7711010Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711010Trigger:OnPostDataPrepare()
    print("Q7711010Trigger - OnPostDataPrepare")
    this = self
end

function Q7711010Trigger:OnPostComponentPrepare()
    print("Q7711010Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711010Trigger:TriggerIn()
    print("Q7711010Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711010)
    this:DestroySelf()
end

function Q7711010Trigger:PreTriggerIn()
    print("Q7711010Trigger - PreTriggerIn")
end

function Q7711010Trigger:LightUpTriggerIn()
    print("Q7711010Trigger - LightUpTriggerIn")
end

function Q7711010Trigger:TriggerOut()
    print("Q7711010Trigger - TriggerOut")
end

return Q7711010Trigger
