require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7183003Trigger = class("Q7183003Trigger", GadgetActorProxy)
Q7183003Trigger.defaultAlias = "Q7183003Trigger"
local Q71830ClientConfig = require("Quest/Client/Q71830ClientConfig")

local subIDs = Q71830ClientConfig.SubIDs
local npcs = Q71830ClientConfig.Npcs
local datas = Q71830ClientConfig.Datas

function Q7183003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7183003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7183003Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71830"):NarratorOnlyTask(datas.NarratorTable, nil, "tag")
    self:DestroySelf()
end

function Q7183003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7183003Trigger
