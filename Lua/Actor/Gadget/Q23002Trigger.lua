require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23002Trigger = class("Q23002Trigger", GadgetActorProxy)
Q23002Trigger.defaultAlias = "Q23002Trigger"
local Q23002ClientConfig = require("Quest/Client/Q23002ClientConfig")

local subIDs = Q23002ClientConfig.SubIDs
local npcs = Q23002ClientConfig.Npcs
local datas = Q23002ClientConfig.Datas

function Q23002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23002Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300202)
    self:DestroySelf()
end

function Q23002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q23002Trigger
