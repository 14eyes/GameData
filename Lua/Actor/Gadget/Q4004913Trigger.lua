require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004913Trigger = class("Q4004913Trigger", GadgetActorProxy)
Q4004913Trigger.defaultAlias = "Q4004913Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004913Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004913Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7.068366, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004913Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40049"):FinishQuestID(false, 4004913)
    self:DestroySelf()
end

function Q4004913Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004913Trigger
