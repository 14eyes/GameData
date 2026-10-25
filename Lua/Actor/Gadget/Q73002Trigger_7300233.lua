require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger_7300233 = class("Q73002Trigger_7300233", GadgetActorProxy)
Q73002Trigger_7300233.defaultAlias = "Q73002Trigger_7300233"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger_7300233:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger_7300233:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger_7300233:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300233)
    self:DestroySelf()
end

function Q73002Trigger_7300233:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger_7300233
