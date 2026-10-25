require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025130Trigger = class("Q4025130Trigger", GadgetActorProxy)
Q4025130Trigger.defaultAlias = "Q4025130Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025130Trigger:OnPostDataPrepare()
    print("Q4025130Trigger - OnPostDataPrepare")
    this = self
end

function Q4025130Trigger:OnPostComponentPrepare()
    print("Q4025130Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025130Trigger:TriggerIn()
    print("Q4025130Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4025130Trigger:PreTriggerIn()
    print("Q4025130Trigger - PreTriggerIn")
end

function Q4025130Trigger:LightUpTriggerIn()
    print("Q4025130Trigger - LightUpTriggerIn")
end

function Q4025130Trigger:TriggerOut()
    print("Q4025130Trigger - TriggerOut")
end

return Q4025130Trigger
