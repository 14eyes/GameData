require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q120180401Trigger = class("Q120180401Trigger", GadgetActorProxy)
Q120180401Trigger.defaultAlias = "Q120180401Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q120180401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q120180401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q120180401Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12018"):NarratorOnlyTaskByData(datas.NarratorWithId120180401)
    self:DestroySelf()
end

function Q120180401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q120180401Trigger
