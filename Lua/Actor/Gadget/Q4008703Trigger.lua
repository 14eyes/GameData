require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008703Trigger = class("Q4008703Trigger", GadgetActorProxy)
Q4008703Trigger.defaultAlias = "Q4008703Trigger"
local Q40087ClientConfig = require("Quest/Client/Q40087ClientConfig")

local subIDs = Q40087ClientConfig.SubIDs
local datas = Q40087ClientConfig.Datas

function Q4008703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008703Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40087"):NarratorOnlyTaskByData(datas.NarratorWithId02)
    actorUtils.FinishQuestID(false, 4008703)
    self:DestroySelf()
end

function Q4008703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008703Trigger
