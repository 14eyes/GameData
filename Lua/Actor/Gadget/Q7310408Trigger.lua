require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310408Trigger = class("Q7310408Trigger", GadgetActorProxy)
Q7310408Trigger.defaultAlias = "Q7310408Trigger"
local Q73104ClientConfig = require("Quest/Client/Q73104ClientConfig")

local subIDs = Q73104ClientConfig.SubIDs
local npcs = Q73104ClientConfig.Npcs
local datas = Q73104ClientConfig.Datas

function Q7310408Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310408Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310408Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73104"):NarratorOnlyTask(datas.NarratorTable731049909, nil, "")
    self:DestroySelf()
end

function Q7310408Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310408Trigger
