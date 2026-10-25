require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902702Trigger = class("Q7902702Trigger", GadgetActorProxy)
Q7902702Trigger.defaultAlias = "Q7902702Trigger"
local Q79027ClientConfig = require("Quest/Client/Q79027ClientConfig")

local subIDs = Q79027ClientConfig.SubIDs
local npcs = Q79027ClientConfig.Npcs
local gadgets = Q79027ClientConfig.Gadgets
local datas = Q79027ClientConfig.Datas

function Q7902702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(1, "BigWorld_Q7902702_FogArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7902702Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7902702Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902702)
    self:DestroySelf()
end

return Q7902702Trigger
