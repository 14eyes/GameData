require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73501Trigger = class("Q73501Trigger", GadgetActorProxy)
Q73501Trigger.defaultAlias = "Q73501Trigger"
local Q73501ClientConfig = require("Quest/Client/Q73501ClientConfig")

local subIDs = Q73501ClientConfig.SubIDs
local npcs = Q73501ClientConfig.Npcs
local gadgets = Q73501ClientConfig.Gadgets
local datas = Q73501ClientConfig.Datas

function Q73501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(20, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73501"):RequestInteractionForceAlias(npcs.Npc30212Data.alias)
    self:DestroySelf()
end

function Q73501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73501Trigger
