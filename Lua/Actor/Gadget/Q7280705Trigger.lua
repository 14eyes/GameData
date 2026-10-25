require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280705Trigger = class("Q7280705Trigger", GadgetActorProxy)
Q7280705Trigger.defaultAlias = "Q7280705Trigger"
local Q72807ClientConfig = require("Quest/Client/Q72807ClientConfig")

local subIDs = Q72807ClientConfig.SubIDs
local npcs = Q72807ClientConfig.Npcs
local datas = Q72807ClientConfig.Datas

function Q7280705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280705Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72807"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q7280705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280705Trigger
