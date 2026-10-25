require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503201Trigger02 = class("Q7503201Trigger02", GadgetActorProxy)
Q7503201Trigger02.defaultAlias = "Q7503201Trigger02"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q7503201Trigger02:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] OnPostDataPrepare")
    this = self
end

function Q7503201Trigger02:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q7503201Trigger02:TriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] TriggerIn")
    this:DestroySelf()
end

function Q7503201Trigger02:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] PreTriggerIn")
end

function Q7503201Trigger02:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] LightUpTriggerIn")
end

function Q7503201Trigger02:TriggerOut()
    print("[MainId: 75032][Trigger: Q7503201Trigger02] TriggerOut")
end

return Q7503201Trigger02
