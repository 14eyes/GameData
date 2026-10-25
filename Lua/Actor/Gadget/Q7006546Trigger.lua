require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006546Trigger = class("Q7006546Trigger", GadgetActorProxy)
Q7006546Trigger.defaultAlias = "Q7006546Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006546Trigger:OnPostDataPrepare()
    print("Q7006546Trigger - OnPostDataPrepare")
    this = self
end

function Q7006546Trigger:OnPostComponentPrepare()
    print("Q7006546Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15.130621, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006546Trigger:TriggerIn()
    print("Q7006546Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006546)
    this:DestroySelf()
end

function Q7006546Trigger:PreTriggerIn()
    print("Q7006546Trigger - PreTriggerIn")
end

function Q7006546Trigger:LightUpTriggerIn()
    print("Q7006546Trigger - LightUpTriggerIn")
end

function Q7006546Trigger:TriggerOut()
    print("Q7006546Trigger - TriggerOut")
end

return Q7006546Trigger
