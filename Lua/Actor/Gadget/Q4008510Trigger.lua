require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008510Trigger = class("Q4008510Trigger", GadgetActorProxy)
Q4008510Trigger.defaultAlias = "Q4008510Trigger"
local Q40085ClientConfig = require("Quest/Client/Q40085ClientConfig")

local subIDs = Q40085ClientConfig.SubIDs
local npcs = Q40085ClientConfig.Npcs
local datas = Q40085ClientConfig.Datas

function Q4008510Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008510Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008510Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40085"):RequestInteraction(npcs.Npc12856Data.alias)
    self:DestroySelf()
end

function Q4008510Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008510Trigger
