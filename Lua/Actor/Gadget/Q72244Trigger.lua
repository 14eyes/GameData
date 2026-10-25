require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72244Trigger = class("Q72244Trigger", GadgetActorProxy)
Q72244Trigger.defaultAlias = "Q72244Trigger"
local Q72244ClientConfig = require("Quest/Client/Q72244ClientConfig")

local subIDs = Q72244ClientConfig.SubIDs
local npcs = Q72244ClientConfig.Npcs
local datas = Q72244ClientConfig.Datas

function Q72244Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72244Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.378459, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72244Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72244"):NarratorOnlyTask(datas.paimeng7224410, nil, "")
    self:DestroySelf()
end

function Q72244Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72244Trigger
