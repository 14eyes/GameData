require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600909Trigger_rollback = class("Q600909Trigger_rollback", GadgetActorProxy)
Q600909Trigger_rollback.defaultAlias = "Q600909Trigger_rollback"
local Q6009ClientConfig = require("Quest/Client/Q6009ClientConfig")

local this
local subIDs = Q6009ClientConfig.SubIDs
local datas = Q6009ClientConfig.Datas
local npcs = Q6009ClientConfig.Npcs
local points = Q6009ClientConfig.Points

function Q600909Trigger_rollback:OnPostDataPrepare()
    print("Q600909Trigger_rollback - OnPostDataPrepare")
    this = self
end

function Q600909Trigger_rollback:OnPostComponentPrepare()
    print("Q600909Trigger_rollback - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6009)
end

function Q600909Trigger_rollback:TriggerIn()
    print("Q600909Trigger_rollback - TriggerIn")
    actorMgr:GetActor("6009"):TransmitPlayerWithQuestIdByData(600918, 13, datas.TransmitData600918, nil, nil, nil)
    this:DestroySelf()
end

function Q600909Trigger_rollback:PreTriggerIn()
    print("Q600909Trigger_rollback - PreTriggerIn")
end

function Q600909Trigger_rollback:LightUpTriggerIn()
    print("Q600909Trigger_rollback - LightUpTriggerIn")
end

function Q600909Trigger_rollback:TriggerOut()
    print("Q600909Trigger_rollback - TriggerOut")
end

return Q600909Trigger_rollback
