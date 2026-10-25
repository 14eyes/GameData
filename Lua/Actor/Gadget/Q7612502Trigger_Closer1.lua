require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612502Trigger_Closer1 = class("Q7612502Trigger_Closer1", GadgetActorProxy)
Q7612502Trigger_Closer1.defaultAlias = "Q7612502Trigger_Closer1"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612502Trigger_Closer1:OnPostDataPrepare()
    print("Q7612502Trigger_Closer1 - OnPostDataPrepare")
    this = self
end

function Q7612502Trigger_Closer1:OnPostComponentPrepare()
    print("Q7612502Trigger_Closer1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612502Trigger_Closer1:TriggerIn()
    print("Q7612502Trigger_Closer1 - TriggerIn")
    this:DestroySelf()
end

function Q7612502Trigger_Closer1:PreTriggerIn()
    print("Q7612502Trigger_Closer1 - PreTriggerIn")
end

function Q7612502Trigger_Closer1:LightUpTriggerIn()
    print("Q7612502Trigger_Closer1 - LightUpTriggerIn")
end

function Q7612502Trigger_Closer1:TriggerOut()
    print("Q7612502Trigger_Closer1 - TriggerOut")
end

return Q7612502Trigger_Closer1
