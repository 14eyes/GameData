require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906231Trigger = class("Q7906231Trigger", GadgetActorProxy)
Q7906231Trigger.defaultAlias = "Q7906231Trigger"
local Q79062ClientConfig = require("Quest/Client/Q79062ClientConfig")

local this
local subIDs = Q79062ClientConfig.SubIDs
local npcs = Q79062ClientConfig.Npcs
local datas = Q79062ClientConfig.Datas

function Q7906231Trigger:OnPostDataPrepare()
    print("[MainId: 79062][Trigger: Q7906231Trigger] OnPostDataPrepare")
    this = self
end

function Q7906231Trigger:OnPostComponentPrepare()
    print("[MainId: 79062][Trigger: Q7906231Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79062)
end

function Q7906231Trigger:TriggerIn()
    print("[MainId: 79062][Trigger: Q7906231Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7906231)
    this:DestroySelf()
end

function Q7906231Trigger:PreTriggerIn()
    print("[MainId: 79062][Trigger: Q7906231Trigger] PreTriggerIn")
end

function Q7906231Trigger:LightUpTriggerIn()
    print("[MainId: 79062][Trigger: Q7906231Trigger] LightUpTriggerIn")
end

function Q7906231Trigger:TriggerOut()
    print("[MainId: 79062][Trigger: Q7906231Trigger] TriggerOut")
end

return Q7906231Trigger
