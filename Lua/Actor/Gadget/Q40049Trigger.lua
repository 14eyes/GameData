require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40049Trigger = class("Q40049Trigger", GadgetActorProxy)
Q40049Trigger.defaultAlias = "Q40049Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q40049Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40049Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40049Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40049"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 40049)
end

function Q40049Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40049Trigger
