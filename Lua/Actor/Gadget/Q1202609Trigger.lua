require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202609Trigger = class("Q1202609Trigger", GadgetActorProxy)
Q1202609Trigger.defaultAlias = "Q1202609Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202609Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):NarratorOnlyTaskByData(datas.kaiche1202603, nil, 12026)
    self:DestroySelf()
end

function Q1202609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202609Trigger
