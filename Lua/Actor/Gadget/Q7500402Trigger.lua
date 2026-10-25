require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500402Trigger = class("Q7500402Trigger", GadgetActorProxy)
Q7500402Trigger.defaultAlias = "Q7500402Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500402Trigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500402Trigger] OnPostDataPrepare")
    this = self
end

function Q7500402Trigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500402Trigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500402Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500402)
    this:DestroySelf()
end

function Q7500402Trigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500402Trigger] PreTriggerIn")
end

function Q7500402Trigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500402Trigger] LightUpTriggerIn")
end

function Q7500402Trigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500402Trigger] TriggerOut")
end

return Q7500402Trigger
