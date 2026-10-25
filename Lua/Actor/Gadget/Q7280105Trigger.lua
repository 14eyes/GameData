require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280105Trigger = class("Q7280105Trigger", GadgetActorProxy)
Q7280105Trigger.defaultAlias = "Q7280105Trigger"
local Q72801ClientConfig = require("Quest/Client/Q72801ClientConfig")

local subIDs = Q72801ClientConfig.SubIDs
local npcs = Q72801ClientConfig.Npcs
local datas = Q72801ClientConfig.Datas

function Q7280105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280105Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72801"):RequestInteraction(npcs.Npc3012Data.alias)
    self:DestroySelf()
end

function Q7280105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280105Trigger
