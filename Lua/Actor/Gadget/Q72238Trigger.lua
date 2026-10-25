require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72238Trigger = class("Q72238Trigger", GadgetActorProxy)
Q72238Trigger.defaultAlias = "Q72238Trigger"
local Q72238ClientConfig = require("Quest/Client/Q72238ClientConfig")

local subIDs = Q72238ClientConfig.SubIDs
local npcs = Q72238ClientConfig.Npcs
local datas = Q72238ClientConfig.Datas

function Q72238Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72238Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72238Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72238"):RequestInteraction(npcs.NPC20353Data.alias)
    self:DestroySelf()
end

function Q72238Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72238Trigger
