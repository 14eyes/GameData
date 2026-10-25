require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7417803Trigger = class("Q7417803Trigger", GadgetActorProxy)
Q7417803Trigger.defaultAlias = "Q7417803Trigger"
local Q74178ClientConfig = require("Quest/Client/Q74178ClientConfig")

local this
local subIDs = Q74178ClientConfig.SubIDs
local npcs = Q74178ClientConfig.Npcs
local datas = Q74178ClientConfig.Datas

function Q7417803Trigger:OnPostDataPrepare()
    print("[MainId: 74178][Trigger: Q7417803Trigger] OnPostDataPrepare")
    this = self
end

function Q7417803Trigger:OnPostComponentPrepare()
    print("[MainId: 74178][Trigger: Q7417803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7417803Trigger:TriggerIn()
    print("[MainId: 74178][Trigger: Q7417803Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7417803)
    this:DestroySelf()
end

function Q7417803Trigger:PreTriggerIn()
    print("[MainId: 74178][Trigger: Q7417803Trigger] PreTriggerIn")
end

function Q7417803Trigger:LightUpTriggerIn()
    print("[MainId: 74178][Trigger: Q7417803Trigger] LightUpTriggerIn")
end

function Q7417803Trigger:TriggerOut()
    print("[MainId: 74178][Trigger: Q7417803Trigger] TriggerOut")
end

return Q7417803Trigger
