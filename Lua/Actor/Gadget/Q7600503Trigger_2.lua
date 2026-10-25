require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600503Trigger_2 = class("Q7600503Trigger_2", GadgetActorProxy)
Q7600503Trigger_2.defaultAlias = "Q7600503Trigger_2"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600503Trigger_2:OnPostDataPrepare()
    print("Q7600503Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7600503Trigger_2:OnPostComponentPrepare()
    print("Q7600503Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600503Trigger_2:TriggerIn()
    print("Q7600503Trigger_2 - TriggerIn")
    this:DestroySelf()
end

function Q7600503Trigger_2:PreTriggerIn()
    print("Q7600503Trigger_2 - PreTriggerIn")
end

function Q7600503Trigger_2:LightUpTriggerIn()
    print("Q7600503Trigger_2 - LightUpTriggerIn")
end

function Q7600503Trigger_2:TriggerOut()
    print("Q7600503Trigger_2 - TriggerOut")
end

return Q7600503Trigger_2
