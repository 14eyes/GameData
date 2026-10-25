require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902703Trigger = class("Q7902703Trigger", GadgetActorProxy)
Q7902703Trigger.defaultAlias = "Q7902703Trigger"
local Q79027ClientConfig = require("Quest/Client/Q79027ClientConfig")

local subIDs = Q79027ClientConfig.SubIDs
local npcs = Q79027ClientConfig.Npcs
local gadgets = Q79027ClientConfig.Gadgets
local datas = Q79027ClientConfig.Datas

function Q7902703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(2, "BigWorld_Q7902703_FogArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7902703Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7902703Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902703)
    self:DestroySelf()
end

return Q7902703Trigger
