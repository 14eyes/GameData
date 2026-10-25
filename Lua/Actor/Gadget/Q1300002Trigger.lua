require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300002Trigger = class("Q1300002Trigger", GadgetActorProxy)
Q1300002Trigger.defaultAlias = "Q1300002Trigger"
local Q13000ClientConfig = require("Quest/Client/Q13000ClientConfig")

local subIDs = Q13000ClientConfig.SubIDs
local npcs = Q13000ClientConfig.Npcs
local datas = Q13000ClientConfig.Datas

function Q1300002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13000"):RequestInteraction(npcs.Npc1050Data.alias)
    self:DestroySelf()
end

function Q1300002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300002Trigger
