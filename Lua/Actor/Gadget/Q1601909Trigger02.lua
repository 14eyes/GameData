require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601909Trigger02 = class("Q1601909Trigger02", GadgetActorProxy)
Q1601909Trigger02.defaultAlias = "Q1601909Trigger02"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601909Trigger02:OnPostDataPrepare()
    print("Q1601909Trigger02 - OnPostDataPrepare")
    this = self
end

function Q1601909Trigger02:OnPostComponentPrepare()
    print("Q1601909Trigger02 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601909Trigger02:TriggerIn()
    print("Q1601909Trigger02 - TriggerIn")
    this:DestroySelf()
end

function Q1601909Trigger02:PreTriggerIn()
    print("Q1601909Trigger02 - PreTriggerIn")
end

function Q1601909Trigger02:LightUpTriggerIn()
    print("Q1601909Trigger02 - LightUpTriggerIn")
end

function Q1601909Trigger02:TriggerOut()
    print("Q1601909Trigger02 - TriggerOut")
end

return Q1601909Trigger02
