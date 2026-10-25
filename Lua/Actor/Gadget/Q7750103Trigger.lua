require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7750103Trigger = class("Q7750103Trigger", GadgetActorProxy)
Q7750103Trigger.defaultAlias = "Q7750103Trigger"
local Q77501ClientConfig = require("Quest/Client/Q77501ClientConfig")

local this
local subIDs = Q77501ClientConfig.SubIDs
local datas = Q77501ClientConfig.Datas
local npcs = Q77501ClientConfig.Npcs

function Q7750103Trigger:OnPostDataPrepare()
    print("Q7750103Trigger - OnPostDataPrepare")
    this = self
end

function Q7750103Trigger:OnPostComponentPrepare()
    print("Q7750103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77501)
end

function Q7750103Trigger:TriggerIn()
    print("Q7750103Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7750103Trigger:PreTriggerIn()
    print("Q7750103Trigger - PreTriggerIn")
end

function Q7750103Trigger:LightUpTriggerIn()
    print("Q7750103Trigger - LightUpTriggerIn")
end

function Q7750103Trigger:TriggerOut()
    print("Q7750103Trigger - TriggerOut")
end

return Q7750103Trigger
