require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008203Trigger = class("Q4008203Trigger", GadgetActorProxy)
Q4008203Trigger.defaultAlias = "Q4008203Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40082"):RequestInteraction(npcs.Npc12856Data.alias)
    self:DestroySelf()
end

function Q4008203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008203Trigger
