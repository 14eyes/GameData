require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008110Trigger = class("Q4008110Trigger", GadgetActorProxy)
Q4008110Trigger.defaultAlias = "Q4008110Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008110Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008110Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008110Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40081"):RequestInteraction(npcs.Npc1063Data.alias)
    self:DestroySelf()
end

function Q4008110Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008110Trigger
