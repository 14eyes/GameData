require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350001Trigger = class("Q7350001Trigger", GadgetActorProxy)
Q7350001Trigger.defaultAlias = "Q7350001Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(10, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73500"):RequestInteractionForceAlias(npcs.Npc30212Data.alias)
    self:DestroySelf()
end

function Q7350001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350001Trigger
