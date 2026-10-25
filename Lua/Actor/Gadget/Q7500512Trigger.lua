require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500512Trigger = class("Q7500512Trigger", GadgetActorProxy)
Q7500512Trigger.defaultAlias = "Q7500512Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local points = Q75005ClientConfig.Points
local datas = Q75005ClientConfig.Datas

function Q7500512Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500512Trigger] OnPostDataPrepare")
    this = self
end

function Q7500512Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500512Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500512Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500512Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500512)
    this:DestroySelf()
end

function Q7500512Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500512Trigger] PreTriggerIn")
end

function Q7500512Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500512Trigger] LightUpTriggerIn")
end

function Q7500512Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500512Trigger] TriggerOut")
end

return Q7500512Trigger
