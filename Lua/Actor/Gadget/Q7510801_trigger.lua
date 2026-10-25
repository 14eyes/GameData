require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510801_trigger = class("Q7510801_trigger", GadgetActorProxy)
Q7510801_trigger.defaultAlias = "Q7510801_trigger"
local Q75108ClientConfig = require("Quest/Client/Q75108ClientConfig")

local this
local subIDs = Q75108ClientConfig.SubIDs
local npcs = Q75108ClientConfig.Npcs
local points = Q75108ClientConfig.Points

function Q7510801_trigger:OnPostDataPrepare()
    print("Q7510801_trigger - OnPostDataPrepare")
    this = self
end

function Q7510801_trigger:OnPostComponentPrepare()
    print("Q7510801_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75108)
end

function Q7510801_trigger:TriggerIn()
    print("Q7510801_trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7510801)
    this:DestroySelf()
end

function Q7510801_trigger:PreTriggerIn()
    print("Q7510801_trigger - PreTriggerIn")
end

function Q7510801_trigger:LightUpTriggerIn()
    print("Q7510801_trigger - LightUpTriggerIn")
end

function Q7510801_trigger:TriggerOut()
    print("Q7510801_trigger - TriggerOut")
end

return Q7510801_trigger
