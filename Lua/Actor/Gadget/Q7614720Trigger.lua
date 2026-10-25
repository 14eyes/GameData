require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614720Trigger = class("Q7614720Trigger", GadgetActorProxy)
Q7614720Trigger.defaultAlias = "Q7614720Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614720Trigger:OnPostDataPrepare()
    print("Q7614720Trigger - OnPostDataPrepare")
    this = self
end

function Q7614720Trigger:OnPostComponentPrepare()
    print("Q7614720Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614720Trigger:TriggerIn()
    print("Q7614720Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614720)
    this:DestroySelf()
end

function Q7614720Trigger:PreTriggerIn()
    print("Q7614720Trigger - PreTriggerIn")
end

function Q7614720Trigger:LightUpTriggerIn()
    print("Q7614720Trigger - LightUpTriggerIn")
end

function Q7614720Trigger:TriggerOut()
    print("Q7614720Trigger - TriggerOut")
end

return Q7614720Trigger
