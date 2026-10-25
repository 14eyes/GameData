require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600226Trigger = class("Q600226Trigger", GadgetActorProxy)
Q600226Trigger.defaultAlias = "Q600226Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600226Trigger:OnPostDataPrepare()
    print("Q600226Trigger - OnPostDataPrepare")
    this = self
end

function Q600226Trigger:OnPostComponentPrepare()
    print("Q600226Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600226Trigger:TriggerIn()
    print("Q600226Trigger - TriggerIn")
end

function Q600226Trigger:PreTriggerIn()
    print("Q600226Trigger - PreTriggerIn")
end

function Q600226Trigger:LightUpTriggerIn()
    print("Q600226Trigger - LightUpTriggerIn")
end

function Q600226Trigger:TriggerOut()
    print("Q600226Trigger - TriggerOut")
end

return Q600226Trigger
