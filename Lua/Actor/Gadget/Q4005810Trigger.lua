require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005810Trigger = class("Q4005810Trigger", GadgetActorProxy)
Q4005810Trigger.defaultAlias = "Q4005810Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005810Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005810Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005810Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40058"):RequestInteraction(npcs.Npc30141Data.alias)
    self:DestroySelf()
end

function Q4005810Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005810Trigger
