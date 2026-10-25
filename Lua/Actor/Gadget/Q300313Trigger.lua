require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300313Trigger = class("Q300313Trigger", GadgetActorProxy)
Q300313Trigger.defaultAlias = "Q300313Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300313Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300313Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(25, 4, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300313Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):RequestInteraction(npcs.Npc12560Data.alias)
    self:DestroySelf()
end

function Q300313Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300313Trigger
