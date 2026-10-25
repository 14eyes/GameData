require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215509Trigger = class("Q7215509Trigger", GadgetActorProxy)
Q7215509Trigger.defaultAlias = "Q7215509Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215509Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):RequestInteraction(npcs.Npc20303Data.alias)
    self:DestroySelf()
end

function Q7215509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215509Trigger
