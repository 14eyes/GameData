require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303604Trigger = class("Q2303604Trigger", GadgetActorProxy)
Q2303604Trigger.defaultAlias = "Q2303604Trigger"
local Q23036ClientConfig = require("Quest/Client/Q23036ClientConfig")

local subIDs = Q23036ClientConfig.SubIDs
local npcs = Q23036ClientConfig.Npcs
local datas = Q23036ClientConfig.Datas

function Q2303604Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303604Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303604Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23036"):NarratorOnlyTask(datas.NarratorTable230369901, nil, "")
    self:DestroySelf()
end

function Q2303604Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303604Trigger
