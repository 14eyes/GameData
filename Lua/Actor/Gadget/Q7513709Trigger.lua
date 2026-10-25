require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513709Trigger = class("Q7513709Trigger", GadgetActorProxy)
Q7513709Trigger.defaultAlias = "Q7513709Trigger"
local Q75137ClientConfig = require("Quest/Client/Q75137ClientConfig")

local this
local subIDs = Q75137ClientConfig.SubIDs
local npcs = Q75137ClientConfig.Npcs
local points = Q75137ClientConfig.Points

function Q7513709Trigger:OnPostDataPrepare()
    print("Q7513709Trigger - OnPostDataPrepare")
    this = self
end

function Q7513709Trigger:OnPostComponentPrepare()
    print("Q7513709Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10.625724, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75137)
end

function Q7513709Trigger:TriggerIn()
    print("Q7513709Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513709)
    this:DestroySelf()
end

function Q7513709Trigger:PreTriggerIn()
    print("Q7513709Trigger - PreTriggerIn")
end

function Q7513709Trigger:LightUpTriggerIn()
    print("Q7513709Trigger - LightUpTriggerIn")
end

function Q7513709Trigger:TriggerOut()
    print("Q7513709Trigger - TriggerOut")
end

return Q7513709Trigger
