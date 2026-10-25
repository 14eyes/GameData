require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300915Trigger = class("Q2300915Trigger", GadgetActorProxy)
Q2300915Trigger.defaultAlias = "Q2300915Trigger"
local Q23009ClientConfig = require("Quest/Client/Q23009ClientConfig")

local subIDs = Q23009ClientConfig.SubIDs
local npcs = Q23009ClientConfig.Npcs
local datas = Q23009ClientConfig.Datas

function Q2300915Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300915Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300915Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23009"):NarratorOnlyTask(datas.NarratorTable2300915IN, nil, "")
    self:DestroySelf()
end

function Q2300915Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300915Trigger
