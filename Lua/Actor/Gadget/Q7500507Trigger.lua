require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500507Trigger = class("Q7500507Trigger", GadgetActorProxy)
Q7500507Trigger.defaultAlias = "Q7500507Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local points = Q75005ClientConfig.Points
local datas = Q75005ClientConfig.Datas

function Q7500507Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500507Trigger] OnPostDataPrepare")
    this = self
end

function Q7500507Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500507Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500507Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500507Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500507)
    this:DestroySelf()
end

function Q7500507Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500507Trigger] PreTriggerIn")
end

function Q7500507Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500507Trigger] LightUpTriggerIn")
end

function Q7500507Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500507Trigger] TriggerOut")
end

return Q7500507Trigger
