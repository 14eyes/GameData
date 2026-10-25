require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40048Trigger = class("Q40048Trigger", GadgetActorProxy)
Q40048Trigger.defaultAlias = "Q40048Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q40048Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40048Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40048Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40048"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 40048)
end

function Q40048Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40048Trigger
