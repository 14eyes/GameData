require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005803Trigger = class("Q4005803Trigger", GadgetActorProxy)
Q4005803Trigger.defaultAlias = "Q4005803Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005803Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005803Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005803Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40058"):RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4005803Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005803Trigger
