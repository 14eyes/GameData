require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223903Trigger = class("Q7223903Trigger", GadgetActorProxy)
Q7223903Trigger.defaultAlias = "Q7223903Trigger"
local Q72239ClientConfig = require("Quest/Client/Q72239ClientConfig")

local subIDs = Q72239ClientConfig.SubIDs
local npcs = Q72239ClientConfig.Npcs
local datas = Q72239ClientConfig.Datas

function Q7223903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223903Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72239"):NarratorOnlyTask(datas.NarratorTable_7223903, nil, "")
    self:DestroySelf()
end

function Q7223903Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223903Trigger
