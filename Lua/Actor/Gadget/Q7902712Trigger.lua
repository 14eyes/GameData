require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902712Trigger = class("Q7902712Trigger", GadgetActorProxy)
Q7902712Trigger.defaultAlias = "Q7902712Trigger"
local Q79027ClientConfig = require("Quest/Client/Q79027ClientConfig")

local subIDs = Q79027ClientConfig.SubIDs
local npcs = Q79027ClientConfig.Npcs
local gadgets = Q79027ClientConfig.Gadgets
local datas = Q79027ClientConfig.Datas

function Q7902712Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902712Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(5, "BigWorld_Q7902702_FogArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7902712Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7902712Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902712)
    self:DestroySelf()
end

return Q7902712Trigger
