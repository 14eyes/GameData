require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008210Trigger = class("Q4008210Trigger", GadgetActorProxy)
Q4008210Trigger.defaultAlias = "Q4008210Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008210Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008210Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008210Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40082"):RequestInteraction(npcs.Npc12855Data.alias)
    self:DestroySelf()
end

function Q4008210Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008210Trigger
