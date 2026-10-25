require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226503Trigger = class("Q7226503Trigger", GadgetActorProxy)
Q7226503Trigger.defaultAlias = "Q7226503Trigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):RequestInteraction(npcs.NPC20519Data.alias)
    self:DestroySelf()
end

function Q7226503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226503Trigger
