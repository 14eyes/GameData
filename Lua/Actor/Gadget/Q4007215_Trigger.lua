require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007215_Trigger = class("Q4007215_Trigger", GadgetActorProxy)
Q4007215_Trigger.defaultAlias = "Q4007215_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007215_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007215_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007215_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007215)
    self:DestroySelf()
end

function Q4007215_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007215_Trigger
