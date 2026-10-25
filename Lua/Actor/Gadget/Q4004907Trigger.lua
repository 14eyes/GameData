require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004907Trigger = class("Q4004907Trigger", GadgetActorProxy)
Q4004907Trigger.defaultAlias = "Q4004907Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004907Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004907Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14.10322, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004907Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40049"):FinishQuestID(false, 4004907)
    self:DestroySelf()
end

function Q4004907Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004907Trigger
