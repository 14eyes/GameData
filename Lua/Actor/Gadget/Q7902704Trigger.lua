require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902704Trigger = class("Q7902704Trigger", GadgetActorProxy)
Q7902704Trigger.defaultAlias = "Q7902704Trigger"
local Q79027ClientConfig = require("Quest/Client/Q79027ClientConfig")

local subIDs = Q79027ClientConfig.SubIDs
local npcs = Q79027ClientConfig.Npcs
local gadgets = Q79027ClientConfig.Gadgets
local datas = Q79027ClientConfig.Datas

function Q7902704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(3, "BigWorld_Q7902704_FogArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7902704Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7902704Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902704)
    self:DestroySelf()
end

return Q7902704Trigger
