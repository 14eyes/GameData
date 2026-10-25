require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003102Trigger = class("Q4003102Trigger", GadgetActorProxy)
Q4003102Trigger.defaultAlias = "Q4003102Trigger"
local Q40031ClientConfig = require("Quest/Client/Q40031ClientConfig")

local subIDs = Q40031ClientConfig.SubIDs
local npcs = Q40031ClientConfig.Npcs
local datas = Q40031ClientConfig.Datas

function Q4003102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40031"):NarratorOnlyTaskByData(datas.NarratorWithIdQ4003102)
    self:DestroySelf()
end

function Q4003102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003102Trigger
