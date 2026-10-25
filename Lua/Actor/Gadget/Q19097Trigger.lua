require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19097Trigger = class("Q19097Trigger", GadgetActorProxy)
Q19097Trigger.defaultAlias = "Q19097Trigger"
local Q19097ClientConfig = require("Quest/Client/Q19097ClientConfig")

local this
local subIDs = Q19097ClientConfig.SubIDs
local npcs = Q19097ClientConfig.Npcs
local points = Q19097ClientConfig.Points
local datas = Q19097ClientConfig.Datas

function Q19097Trigger:OnPostDataPrepare()
    print("[MainId: 19097][Trigger: Q19097Trigger] OnPostDataPrepare")
    this = self
end

function Q19097Trigger:OnPostComponentPrepare()
    print("[MainId: 19097][Trigger: Q19097Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19097Trigger:TriggerIn()
    print("[MainId: 19097][Trigger: Q19097Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1909701)
    this:DestroySelf()
end

function Q19097Trigger:PreTriggerIn()
    print("[MainId: 19097][Trigger: Q19097Trigger] PreTriggerIn")
end

function Q19097Trigger:LightUpTriggerIn()
    print("[MainId: 19097][Trigger: Q19097Trigger] LightUpTriggerIn")
end

function Q19097Trigger:TriggerOut()
    print("[MainId: 19097][Trigger: Q19097Trigger] TriggerOut")
end

return Q19097Trigger
