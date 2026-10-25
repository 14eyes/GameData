require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501907Trigger = class("Q7501907Trigger", GadgetActorProxy)
Q7501907Trigger.defaultAlias = "Q7501907Trigger"
local Q75019ClientConfig = require("Quest/Client/Q75019ClientConfig")

local this
local subIDs = Q75019ClientConfig.SubIDs
local npcs = Q75019ClientConfig.Npcs
local datas = Q75019ClientConfig.Datas

function Q7501907Trigger:OnPostDataPrepare()
    print("[MainId: 75019][Trigger: Q7501907Trigger] OnPostDataPrepare")
    this = self
end

function Q7501907Trigger:OnPostComponentPrepare()
    print("[MainId: 75019][Trigger: Q7501907Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45.30107, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75019)
end

function Q7501907Trigger:TriggerIn()
    print("[MainId: 75019][Trigger: Q7501907Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7501907Trigger:PreTriggerIn()
    print("[MainId: 75019][Trigger: Q7501907Trigger] PreTriggerIn")
end

function Q7501907Trigger:LightUpTriggerIn()
    print("[MainId: 75019][Trigger: Q7501907Trigger] LightUpTriggerIn")
end

function Q7501907Trigger:TriggerOut()
    print("[MainId: 75019][Trigger: Q7501907Trigger] TriggerOut")
end

return Q7501907Trigger
