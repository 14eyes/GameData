require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73277Trigger4 = class("Q73277Trigger4", GadgetActorProxy)
Q73277Trigger4.defaultAlias = "Q73277Trigger4"
local Q73277ClientConfig = require("Quest/Client/Q73277ClientConfig")

local subIDs = Q73277ClientConfig.SubIDs
local datas = Q73277ClientConfig.Datas

function Q73277Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73277Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(200, 10, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73277Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7327701)
    actorMgr:GetActor("73277"):TransmitPlayerWithTextByQuestId(7327701, 1, datas.TextmapId_Empty, 1)
    self:DestroySelf()
end

function Q73277Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q73277Trigger4
