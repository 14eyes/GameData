require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74196Trigger6 = class("Q74196Trigger6", GadgetActorProxy)
Q74196Trigger6.defaultAlias = "Q74196Trigger6"
local Q74196ClientConfig = require("Quest/Client/Q74196ClientConfig")

local this
local subIDs = Q74196ClientConfig.SubIDs
local npcs = Q74196ClientConfig.Npcs
local datas = Q74196ClientConfig.Datas

function Q74196Trigger6:OnPostDataPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger6] OnPostDataPrepare")
    this = self
end

function Q74196Trigger6:OnPostComponentPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74196)
end

function Q74196Trigger6:TriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger6] TriggerIn")
    actorUtils.FinishQuestID(false, 7419623)
    this:DestroySelf()
end

function Q74196Trigger6:PreTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger6] PreTriggerIn")
end

function Q74196Trigger6:LightUpTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger6] LightUpTriggerIn")
end

function Q74196Trigger6:TriggerOut()
    print("[MainId: 74196][Trigger: Q74196Trigger6] TriggerOut")
end

return Q74196Trigger6
