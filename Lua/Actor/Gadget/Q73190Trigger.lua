require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73190Trigger = class("Q73190Trigger", GadgetActorProxy)
Q73190Trigger.defaultAlias = "Q73190Trigger"
local Q73190ClientConfig = require("Quest/Client/Q73190ClientConfig")

local subIDs = Q73190ClientConfig.SubIDs
local npcs = Q73190ClientConfig.Npcs
local datas = Q73190ClientConfig.Datas

function Q73190Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73190Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73190Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7319001)
    self:DestroySelf()
end

function Q73190Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73190Trigger
