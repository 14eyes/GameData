require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600110Trigger_1 = class("Q600110Trigger_1", GadgetActorProxy)
Q600110Trigger_1.defaultAlias = "Q600110Trigger_1"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600110Trigger_1:OnPostDataPrepare()
    print("Q600110Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q600110Trigger_1:OnPostComponentPrepare()
    print("Q600110Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600110Trigger_1:TriggerIn()
    print("Q600110Trigger_1 - TriggerIn")
end

function Q600110Trigger_1:PreTriggerIn()
    print("Q600110Trigger_1 - PreTriggerIn")
end

function Q600110Trigger_1:LightUpTriggerIn()
    print("Q600110Trigger_1 - LightUpTriggerIn")
end

function Q600110Trigger_1:TriggerOut()
    print("Q600110Trigger_1 - TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
    this:DestroySelf()
end

return Q600110Trigger_1
