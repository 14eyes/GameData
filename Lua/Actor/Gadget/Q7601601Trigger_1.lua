require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601601Trigger_1 = class("Q7601601Trigger_1", GadgetActorProxy)
Q7601601Trigger_1.defaultAlias = "Q7601601Trigger_1"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601601Trigger_1:OnPostDataPrepare()
    print("Q7601601Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7601601Trigger_1:OnPostComponentPrepare()
    print("Q7601601Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601601Trigger_1:TriggerIn()
    print("Q7601601Trigger_1 - TriggerIn")
    this:DestroySelf()
end

function Q7601601Trigger_1:PreTriggerIn()
    print("Q7601601Trigger_1 - PreTriggerIn")
end

function Q7601601Trigger_1:LightUpTriggerIn()
    print("Q7601601Trigger_1 - LightUpTriggerIn")
end

function Q7601601Trigger_1:TriggerOut()
    print("Q7601601Trigger_1 - TriggerOut")
end

return Q7601601Trigger_1
