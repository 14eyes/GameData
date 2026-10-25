require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226505Trigger = class("Q7226505Trigger", GadgetActorProxy)
Q7226505Trigger.defaultAlias = "Q7226505Trigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):RequestInteraction(npcs.Npc20486Data.alias)
    self:DestroySelf()
end

function Q7226505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226505Trigger
