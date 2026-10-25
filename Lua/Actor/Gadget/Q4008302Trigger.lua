require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008302Trigger = class("Q4008302Trigger", GadgetActorProxy)
Q4008302Trigger.defaultAlias = "Q4008302Trigger"
local Q40083ClientConfig = require("Quest/Client/Q40083ClientConfig")

local subIDs = Q40083ClientConfig.SubIDs
local npcs = Q40083ClientConfig.Npcs
local datas = Q40083ClientConfig.Datas

function Q4008302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008302Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40083"):NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40083)
    self:DestroySelf()
end

function Q4008302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008302Trigger
