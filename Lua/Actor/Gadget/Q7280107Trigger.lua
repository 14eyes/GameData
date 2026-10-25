require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280107Trigger = class("Q7280107Trigger", GadgetActorProxy)
Q7280107Trigger.defaultAlias = "Q7280107Trigger"
local Q72801ClientConfig = require("Quest/Client/Q72801ClientConfig")

local subIDs = Q72801ClientConfig.SubIDs
local npcs = Q72801ClientConfig.Npcs
local datas = Q72801ClientConfig.Datas

function Q7280107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280107Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72801"):FinishQuestID(false, 7280107)
    self:DestroySelf()
end

function Q7280107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280107Trigger
