require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110052Trigger = class("Q7110052Trigger", GadgetActorProxy)
Q7110052Trigger.defaultAlias = "Q7110052Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110052Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110052Trigger] OnPostDataPrepare")
    this = self
end

function Q7110052Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110052Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110052Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110052Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110052)
    this:DestroySelf()
end

function Q7110052Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110052Trigger] PreTriggerIn")
end

function Q7110052Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110052Trigger] LightUpTriggerIn")
end

function Q7110052Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110052Trigger] TriggerOut")
end

return Q7110052Trigger
