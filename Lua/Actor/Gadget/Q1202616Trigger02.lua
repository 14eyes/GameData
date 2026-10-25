require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202616Trigger02 = class("Q1202616Trigger02", GadgetActorProxy)
Q1202616Trigger02.defaultAlias = "Q1202616Trigger02"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202616Trigger02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202616Trigger02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202616Trigger02:TriggerIn()
    print("TriggerIn")
end

function Q1202616Trigger02:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12026"):NarratorOnlyTaskByData(datas.kaiche1202602, nil, 12026)
    self:DestroySelf()
end

return Q1202616Trigger02
