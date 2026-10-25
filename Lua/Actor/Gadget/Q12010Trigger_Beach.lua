require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12010Trigger_Beach = class("Q12010Trigger_Beach", GadgetActorProxy)
Q12010Trigger_Beach.defaultAlias = "Q12010Trigger_Beach"
local Q12010ClientConfig = require("Quest/Client/Q12010ClientConfig")

local subIDs = Q12010ClientConfig.SubIDs
local npcs = Q12010ClientConfig.Npcs
local datas = Q12010ClientConfig.Datas

function Q12010Trigger_Beach:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12010Trigger_Beach:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12010Trigger_Beach:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12010"):RequestInteraction(npcs.Npc1035Data.alias)
    self:DestroySelf()
end

function Q12010Trigger_Beach:TriggerOut()
    print("TriggerOut")
end

return Q12010Trigger_Beach
