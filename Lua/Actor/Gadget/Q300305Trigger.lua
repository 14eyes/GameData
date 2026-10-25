require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300305Trigger = class("Q300305Trigger", GadgetActorProxy)
Q300305Trigger.defaultAlias = "Q300305Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):RequestInteraction(npcs.Npc12560Data.alias)
    self:DestroySelf()
end

function Q300305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300305Trigger
