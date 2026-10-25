require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603201Trigger = class("Q7603201Trigger", GadgetActorProxy)
Q7603201Trigger.defaultAlias = "Q7603201Trigger"
local Q76032ClientConfig = require("Quest/Client/Q76032ClientConfig")

local this
local subIDs = Q76032ClientConfig.SubIDs
local npcs = Q76032ClientConfig.Npcs
local points = Q76032ClientConfig.Points

function Q7603201Trigger:OnPostDataPrepare()
    print("Q7603201Trigger - OnPostDataPrepare")
    this = self
end

function Q7603201Trigger:OnPostComponentPrepare()
    print("Q7603201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76032)
end

function Q7603201Trigger:TriggerIn()
    print("Q7603201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7603201)
    this:DestroySelf()
end

function Q7603201Trigger:PreTriggerIn()
    print("Q7603201Trigger - PreTriggerIn")
end

function Q7603201Trigger:LightUpTriggerIn()
    print("Q7603201Trigger - LightUpTriggerIn")
end

function Q7603201Trigger:TriggerOut()
    print("Q7603201Trigger - TriggerOut")
end

return Q7603201Trigger
