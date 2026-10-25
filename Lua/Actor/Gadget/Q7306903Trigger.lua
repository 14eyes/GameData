require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306903Trigger = class("Q7306903Trigger", GadgetActorProxy)
Q7306903Trigger.defaultAlias = "Q7306903Trigger"
local Q73069ClientConfig = require("Quest/Client/Q73069ClientConfig")

local subIDs = Q73069ClientConfig.SubIDs
local npcs = Q73069ClientConfig.Npcs
local datas = Q73069ClientConfig.Datas

function Q7306903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306903Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73069"):NarratorOnlyTask(datas.Q7306901NarratorTable, nil, "")
    self:DestroySelf()
end

function Q7306903Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306903Trigger
