require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010814Trigger = class("Q4010814Trigger", GadgetActorProxy)
Q4010814Trigger.defaultAlias = "Q4010814Trigger"
local Q40108ClientConfig = require("Quest/Client/Q40108ClientConfig")

local this
local subIDs = Q40108ClientConfig.SubIDs
local npcs = Q40108ClientConfig.Npcs
local points = Q40108ClientConfig.Points
local datas = Q40108ClientConfig.Datas

function Q4010814Trigger:OnPostDataPrepare()
    print("[MainId: 40108][Trigger: Q4010814Trigger] OnPostDataPrepare")
    this = self
end

function Q4010814Trigger:OnPostComponentPrepare()
    print("[MainId: 40108][Trigger: Q4010814Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010814Trigger:TriggerIn()
    print("[MainId: 40108][Trigger: Q4010814Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4010814)
    this:DestroySelf()
end

function Q4010814Trigger:PreTriggerIn()
    print("[MainId: 40108][Trigger: Q4010814Trigger] PreTriggerIn")
end

function Q4010814Trigger:LightUpTriggerIn()
    print("[MainId: 40108][Trigger: Q4010814Trigger] LightUpTriggerIn")
end

function Q4010814Trigger:TriggerOut()
    print("[MainId: 40108][Trigger: Q4010814Trigger] TriggerOut")
end

return Q4010814Trigger
