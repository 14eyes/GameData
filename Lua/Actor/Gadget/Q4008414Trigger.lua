require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008414Trigger = class("Q4008414Trigger", GadgetActorProxy)
Q4008414Trigger.defaultAlias = "Q4008414Trigger"
local Q40084ClientConfig = require("Quest/Client/Q40084ClientConfig")

local subIDs = Q40084ClientConfig.SubIDs
local npcs = Q40084ClientConfig.Npcs
local datas = Q40084ClientConfig.Datas

function Q4008414Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008414Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008414Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40084"):RequestInteraction(npcs.Npc12861Data.alias)
    self:DestroySelf()
end

function Q4008414Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008414Trigger
