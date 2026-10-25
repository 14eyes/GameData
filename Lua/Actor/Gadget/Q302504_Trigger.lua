require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302504_Trigger = class("Q302504_Trigger", GadgetActorProxy)
Q302504_Trigger.defaultAlias = "Q302504_Trigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302504_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302504_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302504_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302504)
    self:DestroySelf()
end

function Q302504_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302504_Trigger
