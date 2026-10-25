require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306209Trigger = class("Q7306209Trigger", GadgetActorProxy)
Q7306209Trigger.defaultAlias = "Q7306209Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306209Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73062"):NarratorOnlyTask(datas.NarratorTable730620901, nil, "")
    self:DestroySelf()
end

function Q7306209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306209Trigger
