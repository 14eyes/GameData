require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603601Trigger_1 = class("Q7603601Trigger_1", GadgetActorProxy)
Q7603601Trigger_1.defaultAlias = "Q7603601Trigger_1"
local Q76036ClientConfig = require("Quest/Client/Q76036ClientConfig")

local this
local subIDs = Q76036ClientConfig.SubIDs
local datas = Q76036ClientConfig.Datas
local npcs = Q76036ClientConfig.Npcs

function Q7603601Trigger_1:OnPostDataPrepare()
    print("Q7603601Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7603601Trigger_1:OnPostComponentPrepare()
    print("Q7603601Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76036)
end

function Q7603601Trigger_1:TriggerIn()
    print("Q7603601Trigger_1 - TriggerIn")
    this:DestroySelf()
end

function Q7603601Trigger_1:PreTriggerIn()
    print("Q7603601Trigger_1 - PreTriggerIn")
end

function Q7603601Trigger_1:LightUpTriggerIn()
    print("Q7603601Trigger_1 - LightUpTriggerIn")
end

function Q7603601Trigger_1:TriggerOut()
    print("Q7603601Trigger_1 - TriggerOut")
end

return Q7603601Trigger_1
