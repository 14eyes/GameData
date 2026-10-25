require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300005Trigger = class("Q300005Trigger", GadgetActorProxy)
Q300005Trigger.defaultAlias = "Q300005Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300005Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300005)
    self:DestroySelf()
end

function Q300005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300005Trigger
