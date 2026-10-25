require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local T7509402 = class("T7509402", GadgetActorProxy)
T7509402.defaultAlias = "T7509402"
local Q75094ClientConfig = require("Quest/Client/Q75094ClientConfig")

local this
local subIDs = Q75094ClientConfig.SubIDs
local npcs = Q75094ClientConfig.Npcs
local points = Q75094ClientConfig.Points

function T7509402:OnPostDataPrepare()
    print("T7509402 - OnPostDataPrepare")
    this = self
end

function T7509402:OnPostComponentPrepare()
    print("T7509402 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75094)
end

function T7509402:TriggerIn()
    print("T7509402 - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7509402)
end

function T7509402:PreTriggerIn()
    print("T7509402 - PreTriggerIn")
end

function T7509402:LightUpTriggerIn()
    print("T7509402 - LightUpTriggerIn")
end

function T7509402:TriggerOut()
    print("T7509402 - TriggerOut")
end

return T7509402
