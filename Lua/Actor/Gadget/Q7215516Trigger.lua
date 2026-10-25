require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215516Trigger = class("Q7215516Trigger", GadgetActorProxy)
Q7215516Trigger.defaultAlias = "Q7215516Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215516Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215516Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215516Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):RequestInteraction(npcs.Npc3181Data.alias)
    self:DestroySelf()
end

function Q7215516Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215516Trigger
