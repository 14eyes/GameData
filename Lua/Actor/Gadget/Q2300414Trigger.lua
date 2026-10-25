require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300414Trigger = class("Q2300414Trigger", GadgetActorProxy)
Q2300414Trigger.defaultAlias = "Q2300414Trigger"
local Q23004ClientConfig = require("Quest/Client/Q23004ClientConfig")

local subIDs = Q23004ClientConfig.SubIDs
local npcs = Q23004ClientConfig.Npcs
local datas = Q23004ClientConfig.Datas

function Q2300414Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300414Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300414Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23004"):NarratorOnlyTask(datas.NarratorTable05, nil, "")
    self:DestroySelf()
end

function Q2300414Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300414Trigger
