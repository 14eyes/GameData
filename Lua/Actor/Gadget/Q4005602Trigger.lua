require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005602Trigger = class("Q4005602Trigger", GadgetActorProxy)
Q4005602Trigger.defaultAlias = "Q4005602Trigger"
local Q40056ClientConfig = require("Quest/Client/Q40056ClientConfig")

local subIDs = Q40056ClientConfig.SubIDs
local npcs = Q40056ClientConfig.Npcs
local datas = Q40056ClientConfig.Datas

function Q4005602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005602Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005602)
    self:DestroySelf()
end

function Q4005602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005602Trigger
