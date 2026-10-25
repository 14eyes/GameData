require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300404Trigger = class("Q300404Trigger", GadgetActorProxy)
Q300404Trigger.defaultAlias = "Q300404Trigger"
local Q3004ClientConfig = require("Quest/Client/Q3004ClientConfig")

local subIDs = Q3004ClientConfig.SubIDs
local npcs = Q3004ClientConfig.Npcs
local datas = Q3004ClientConfig.Datas

function Q300404Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300404Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(15, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300404Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3004"):RequestInteraction(npcs.Npc4314Data.alias)
    self:DestroySelf()
end

function Q300404Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300404Trigger
