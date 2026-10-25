require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73322Trigger = class("Q73322Trigger", GadgetActorProxy)
Q73322Trigger.defaultAlias = "Q73322Trigger"
local Q73322ClientConfig = require("Quest/Client/Q73322ClientConfig")

local this
local subIDs = Q73322ClientConfig.SubIDs
local points = Q73322ClientConfig.Points
local datas = Q73322ClientConfig.Datas

function Q73322Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73322Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73322Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73322Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73322Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73322Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73322Trigger
