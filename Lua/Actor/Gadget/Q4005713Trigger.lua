require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005713Trigger = class("Q4005713Trigger", GadgetActorProxy)
Q4005713Trigger.defaultAlias = "Q4005713Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005713Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005713Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005713Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40057"):RequestInteraction(npcs.Npc1013Data.alias)
    self:DestroySelf()
end

function Q4005713Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005713Trigger
