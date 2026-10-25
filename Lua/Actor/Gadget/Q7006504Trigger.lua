require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006504Trigger = class("Q7006504Trigger", GadgetActorProxy)
Q7006504Trigger.defaultAlias = "Q7006504Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006504Trigger:OnPostDataPrepare()
    print("Q7006504Trigger - OnPostDataPrepare")
    this = self
end

function Q7006504Trigger:OnPostComponentPrepare()
    print("Q7006504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(48.700035, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006504Trigger:TriggerIn()
    print("Q7006504Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006504)
    this:DestroySelf()
end

function Q7006504Trigger:PreTriggerIn()
    print("Q7006504Trigger - PreTriggerIn")
end

function Q7006504Trigger:LightUpTriggerIn()
    print("Q7006504Trigger - LightUpTriggerIn")
end

function Q7006504Trigger:TriggerOut()
    print("Q7006504Trigger - TriggerOut")
end

return Q7006504Trigger
