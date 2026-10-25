require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302503Trigger = class("Q2302503Trigger", GadgetActorProxy)
Q2302503Trigger.defaultAlias = "Q2302503Trigger"
local Q23025ClientConfig = require("Quest/Client/Q23025ClientConfig")

local subIDs = Q23025ClientConfig.SubIDs
local npcs = Q23025ClientConfig.Npcs
local datas = Q23025ClientConfig.Datas

function Q2302503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23025"):NarratorOnlyTask(datas.NarratorTable03, nil, "")
    self:DestroySelf()
end

function Q2302503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302503Trigger
