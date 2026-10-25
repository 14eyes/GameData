require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006712_Trigger = class("Q4006712_Trigger", GadgetActorProxy)
Q4006712_Trigger.defaultAlias = "Q4006712_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006712_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006712_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006712_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006712_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006712_Trigger
