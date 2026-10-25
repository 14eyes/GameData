require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500514Trigger = class("Q7500514Trigger", GadgetActorProxy)
Q7500514Trigger.defaultAlias = "Q7500514Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local points = Q75005ClientConfig.Points
local datas = Q75005ClientConfig.Datas

function Q7500514Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500514Trigger] OnPostDataPrepare")
    this = self
end

function Q7500514Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500514Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500514Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500514Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500514Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500514Trigger] PreTriggerIn")
end

function Q7500514Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500514Trigger] LightUpTriggerIn")
end

function Q7500514Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500514Trigger] TriggerOut")
end

return Q7500514Trigger
