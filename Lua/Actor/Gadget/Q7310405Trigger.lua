require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310405Trigger = class("Q7310405Trigger", GadgetActorProxy)
Q7310405Trigger.defaultAlias = "Q7310405Trigger"
local Q73104ClientConfig = require("Quest/Client/Q73104ClientConfig")

local subIDs = Q73104ClientConfig.SubIDs
local npcs = Q73104ClientConfig.Npcs
local datas = Q73104ClientConfig.Datas

function Q7310405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310405Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73104"):NarratorOnlyTask(datas.NarratorTable731049905, nil, "")
    self:DestroySelf()
end

function Q7310405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310405Trigger
