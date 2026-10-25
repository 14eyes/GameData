require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73037Trigger_pullback = class("Q73037Trigger_pullback", GadgetActorProxy)
Q73037Trigger_pullback.defaultAlias = "Q73037Trigger_pullback"
local Q73037ClientConfig = require("Quest/Client/Q73037ClientConfig")

local subIDs = Q73037ClientConfig.SubIDs
local npcs = Q73037ClientConfig.Npcs
local datas = Q73037ClientConfig.Datas

function Q73037Trigger_pullback:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73037Trigger_pullback:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(1, "BigWorld_VanaBossFightArea", 0, false, self.TriggerIn, self.TriggerOut)
end

function Q73037Trigger_pullback:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7303704)
    actorUtils.FinishQuestID(true, 7303705)
    actorUtils.FinishQuestID(true, 7303706)
    actorMgr:GetActor("73037"):TransmitPlayerWithTextByQuestId(7303702, 1, datas.TextmapId, 10)
    self:DestroySelf()
end

function Q73037Trigger_pullback:TriggerOut()
    print("TriggerOut")
end

return Q73037Trigger_pullback
