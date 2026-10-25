require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902705Trigger = class("Q7902705Trigger", GadgetActorProxy)
Q7902705Trigger.defaultAlias = "Q7902705Trigger"
local Q79027ClientConfig = require("Quest/Client/Q79027ClientConfig")

local subIDs = Q79027ClientConfig.SubIDs
local npcs = Q79027ClientConfig.Npcs
local gadgets = Q79027ClientConfig.Gadgets
local datas = Q79027ClientConfig.Datas

function Q7902705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(4, "BigWorld_Q7902705_ThunderArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7902705Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7902705Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902705)
    self:DestroySelf()
end

return Q7902705Trigger
