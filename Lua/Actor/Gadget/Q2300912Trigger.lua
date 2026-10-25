require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300912Trigger = class("Q2300912Trigger", GadgetActorProxy)
Q2300912Trigger.defaultAlias = "Q2300912Trigger"
local Q23009ClientConfig = require("Quest/Client/Q23009ClientConfig")

local subIDs = Q23009ClientConfig.SubIDs
local npcs = Q23009ClientConfig.Npcs
local datas = Q23009ClientConfig.Datas

function Q2300912Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300912Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300912Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23009"):NarratorOnlyTask(datas.NarratorTable2300912IN, nil, "")
    self:DestroySelf()
end

function Q2300912Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300912Trigger
