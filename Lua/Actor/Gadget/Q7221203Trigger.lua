require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7221203Trigger = class("Q7221203Trigger", GadgetActorProxy)
Q7221203Trigger.defaultAlias = "Q7221203Trigger"
local Q72212ClientConfig = require("Quest/Client/Q72212ClientConfig")

local subIDs = Q72212ClientConfig.SubIDs
local npcs = Q72212ClientConfig.Npcs
local datas = Q72212ClientConfig.Datas

function Q7221203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7221203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7221203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72212"):FinishQuestID(false, 7221203)
    self:DestroySelf()
end

function Q7221203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7221203Trigger
