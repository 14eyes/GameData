require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202602Trigger = class("Q1202602Trigger", GadgetActorProxy)
Q1202602Trigger.defaultAlias = "Q1202602Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):RequestInteraction(npcs.Npc12203Data.alias)
    self:DestroySelf()
end

function Q1202602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202602Trigger
