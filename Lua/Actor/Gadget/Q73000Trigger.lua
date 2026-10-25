require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73000Trigger = class("Q73000Trigger", GadgetActorProxy)
Q73000Trigger.defaultAlias = "Q73000Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q73000Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73000Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(150, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73000Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73000"):NarratorOnlyTask(datas.NarratorTable7, nil, "")
    self:DestroySelf()
end

function Q73000Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73000Trigger
