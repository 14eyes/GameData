require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008215Trigger = class("Q4008215Trigger", GadgetActorProxy)
Q4008215Trigger.defaultAlias = "Q4008215Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008215Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008215Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008215Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008215)
    self:DestroySelf()
end

function Q4008215Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008215Trigger
