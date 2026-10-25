require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010803Trigger = class("Q4010803Trigger", GadgetActorProxy)
Q4010803Trigger.defaultAlias = "Q4010803Trigger"
local Q40108ClientConfig = require("Quest/Client/Q40108ClientConfig")

local this
local subIDs = Q40108ClientConfig.SubIDs
local npcs = Q40108ClientConfig.Npcs
local points = Q40108ClientConfig.Points
local datas = Q40108ClientConfig.Datas

function Q4010803Trigger:OnPostDataPrepare()
    print("[MainId: 40108][Trigger: Q4010803Trigger] OnPostDataPrepare")
    this = self
end

function Q4010803Trigger:OnPostComponentPrepare()
    print("[MainId: 40108][Trigger: Q4010803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010803Trigger:TriggerIn()
    print("[MainId: 40108][Trigger: Q4010803Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4010803)
    this:DestroySelf()
end

function Q4010803Trigger:PreTriggerIn()
    print("[MainId: 40108][Trigger: Q4010803Trigger] PreTriggerIn")
end

function Q4010803Trigger:LightUpTriggerIn()
    print("[MainId: 40108][Trigger: Q4010803Trigger] LightUpTriggerIn")
end

function Q4010803Trigger:TriggerOut()
    print("[MainId: 40108][Trigger: Q4010803Trigger] TriggerOut")
end

return Q4010803Trigger
