require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300001Trigger = class("Q7300001Trigger", GadgetActorProxy)
Q7300001Trigger.defaultAlias = "Q7300001Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q7300001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7300001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73000"):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q7300001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7300001Trigger
