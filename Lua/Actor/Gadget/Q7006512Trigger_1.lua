require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006512Trigger_1 = class("Q7006512Trigger_1", GadgetActorProxy)
Q7006512Trigger_1.defaultAlias = "Q7006512Trigger_1"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006512Trigger_1:OnPostDataPrepare()
    print("Q7006512Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7006512Trigger_1:OnPostComponentPrepare()
    print("Q7006512Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006512Trigger_1:TriggerIn()
    print("Q7006512Trigger_1 - TriggerIn")
    this:DestroySelf()
end

function Q7006512Trigger_1:PreTriggerIn()
    print("Q7006512Trigger_1 - PreTriggerIn")
end

function Q7006512Trigger_1:LightUpTriggerIn()
    print("Q7006512Trigger_1 - LightUpTriggerIn")
end

function Q7006512Trigger_1:TriggerOut()
    print("Q7006512Trigger_1 - TriggerOut")
end

return Q7006512Trigger_1
