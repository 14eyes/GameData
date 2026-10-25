require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger = class("Q12041Trigger", GadgetActorProxy)
Q12041Trigger.defaultAlias = "Q12041Trigger"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn)
end

function Q12041Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12041"):FinishQuestID(false, 1204101)
    self:DestroySelf()
end

return Q12041Trigger
