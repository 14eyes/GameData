require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2304009Trigger = class("Q2304009Trigger", GadgetActorProxy)
Q2304009Trigger.defaultAlias = "Q2304009Trigger"
local Q23040ClientConfig = require("Quest/Client/Q23040ClientConfig")

local subIDs = Q23040ClientConfig.SubIDs
local npcs = Q23040ClientConfig.Npcs
local datas = Q23040ClientConfig.Datas

function Q2304009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2304009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2304009Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23040"):NarratorOnlyTaskByData(datas.Narrator_2304001)
    self:DestroySelf()
end

function Q2304009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2304009Trigger
