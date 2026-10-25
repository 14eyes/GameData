require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300007Trigger = class("Q300007Trigger", GadgetActorProxy)
Q300007Trigger.defaultAlias = "Q300007Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300007Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300007)
    self:DestroySelf()
end

function Q300007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300007Trigger
