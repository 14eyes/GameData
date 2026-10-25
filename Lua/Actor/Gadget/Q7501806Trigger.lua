require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501806Trigger = class("Q7501806Trigger", GadgetActorProxy)
Q7501806Trigger.defaultAlias = "Q7501806Trigger"
local Q75018ClientConfig = require("Quest/Client/Q75018ClientConfig")

local this
local subIDs = Q75018ClientConfig.SubIDs
local npcs = Q75018ClientConfig.Npcs
local points = Q75018ClientConfig.Points

function Q7501806Trigger:OnPostDataPrepare()
    print("Q7501806Trigger - OnPostDataPrepare")
    this = self
end

function Q7501806Trigger:OnPostComponentPrepare()
    print("Q7501806Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75018)
end

function Q7501806Trigger:TriggerIn()
    print("Q7501806Trigger - TriggerIn")
end

function Q7501806Trigger:PreTriggerIn()
    print("Q7501806Trigger - PreTriggerIn")
end

function Q7501806Trigger:LightUpTriggerIn()
    print("Q7501806Trigger - LightUpTriggerIn")
end

function Q7501806Trigger:TriggerOut()
    print("Q7501806Trigger - TriggerOut")
end

return Q7501806Trigger
