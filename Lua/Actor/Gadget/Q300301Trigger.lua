require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300301Trigger = class("Q300301Trigger", GadgetActorProxy)
Q300301Trigger.defaultAlias = "Q300301Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300301Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):RequestInteraction(npcs.Npc12554Data.alias)
    self:DestroySelf()
end

function Q300301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300301Trigger
