require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19096Trigger = class("Q19096Trigger", GadgetActorProxy)
Q19096Trigger.defaultAlias = "Q19096Trigger"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q19096Trigger:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q19096Trigger] OnPostDataPrepare")
    this = self
end

function Q19096Trigger:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q19096Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19096Trigger:TriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1909601)
    this:DestroySelf()
end

function Q19096Trigger:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger] PreTriggerIn")
end

function Q19096Trigger:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger] LightUpTriggerIn")
end

function Q19096Trigger:TriggerOut()
    print("[MainId: 19096][Trigger: Q19096Trigger] TriggerOut")
end

return Q19096Trigger
