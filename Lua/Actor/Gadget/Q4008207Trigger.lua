require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008207Trigger = class("Q4008207Trigger", GadgetActorProxy)
Q4008207Trigger.defaultAlias = "Q4008207Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008207Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008207Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008207Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40082"):RequestInteraction(npcs.Npc12858Data.alias)
    self:DestroySelf()
end

function Q4008207Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008207Trigger
