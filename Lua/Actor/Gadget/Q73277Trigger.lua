require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73277Trigger = class("Q73277Trigger", GadgetActorProxy)
Q73277Trigger.defaultAlias = "Q73277Trigger"
local Q73277ClientConfig = require("Quest/Client/Q73277ClientConfig")

local subIDs = Q73277ClientConfig.SubIDs
local datas = Q73277ClientConfig.Datas

function Q73277Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73277Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(1, "BigWorld_VanaBossFightArea", 0, false, self.TriggerIn, self.TriggerOut)
end

function Q73277Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73277"):TransmitPlayerWithTextByQuestId(7327701, 1, datas.TextmapId_Empty, 1)
end

function Q73277Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73277Trigger
