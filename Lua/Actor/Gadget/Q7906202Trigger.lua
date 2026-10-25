require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906202Trigger = class("Q7906202Trigger", GadgetActorProxy)
Q7906202Trigger.defaultAlias = "Q7906202Trigger"
local Q79062ClientConfig = require("Quest/Client/Q79062ClientConfig")

local this
local subIDs = Q79062ClientConfig.SubIDs
local npcs = Q79062ClientConfig.Npcs
local datas = Q79062ClientConfig.Datas

function Q7906202Trigger:OnPostDataPrepare()
    print("[MainId: 79062][Trigger: Q7906202Trigger] OnPostDataPrepare")
    this = self
end

function Q7906202Trigger:OnPostComponentPrepare()
    print("[MainId: 79062][Trigger: Q7906202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79062)
end

function Q7906202Trigger:TriggerIn()
    print("[MainId: 79062][Trigger: Q7906202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7906202)
    this:DestroySelf()
end

function Q7906202Trigger:PreTriggerIn()
    print("[MainId: 79062][Trigger: Q7906202Trigger] PreTriggerIn")
end

function Q7906202Trigger:LightUpTriggerIn()
    print("[MainId: 79062][Trigger: Q7906202Trigger] LightUpTriggerIn")
end

function Q7906202Trigger:TriggerOut()
    print("[MainId: 79062][Trigger: Q7906202Trigger] TriggerOut")
end

return Q7906202Trigger
