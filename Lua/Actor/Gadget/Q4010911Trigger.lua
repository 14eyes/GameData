require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010911Trigger = class("Q4010911Trigger", GadgetActorProxy)
Q4010911Trigger.defaultAlias = "Q4010911Trigger"
local Q40109ClientConfig = require("Quest/Client/Q40109ClientConfig")

local this
local subIDs = Q40109ClientConfig.SubIDs
local npcs = Q40109ClientConfig.Npcs
local points = Q40109ClientConfig.Points
local datas = Q40109ClientConfig.Datas

function Q4010911Trigger:OnPostDataPrepare()
    print("[MainId: 40109][Trigger: Q4010911Trigger] OnPostDataPrepare")
    this = self
end

function Q4010911Trigger:OnPostComponentPrepare()
    print("[MainId: 40109][Trigger: Q4010911Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010911Trigger:TriggerIn()
    print("[MainId: 40109][Trigger: Q4010911Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4010911)
    this:DestroySelf()
end

function Q4010911Trigger:PreTriggerIn()
    print("[MainId: 40109][Trigger: Q4010911Trigger] PreTriggerIn")
end

function Q4010911Trigger:LightUpTriggerIn()
    print("[MainId: 40109][Trigger: Q4010911Trigger] LightUpTriggerIn")
end

function Q4010911Trigger:TriggerOut()
    print("[MainId: 40109][Trigger: Q4010911Trigger] TriggerOut")
end

return Q4010911Trigger
