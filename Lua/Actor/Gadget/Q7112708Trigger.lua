require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112708Trigger = class("Q7112708Trigger", GadgetActorProxy)
Q7112708Trigger.defaultAlias = "Q7112708Trigger"
local Q71127ClientConfig = require("Quest/Client/Q71127ClientConfig")

local this
local subIDs = Q71127ClientConfig.SubIDs
local npcs = Q71127ClientConfig.Npcs
local points = Q71127ClientConfig.Points
local datas = Q71127ClientConfig.Datas

function Q7112708Trigger:OnPostDataPrepare()
    print("[MainId: 71127][Trigger: Q7112708Trigger] OnPostDataPrepare")
    this = self
end

function Q7112708Trigger:OnPostComponentPrepare()
    print("[MainId: 71127][Trigger: Q7112708Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71127)
end

function Q7112708Trigger:TriggerIn()
    print("[MainId: 71127][Trigger: Q7112708Trigger] TriggerIn")
end

function Q7112708Trigger:PreTriggerIn()
    print("[MainId: 71127][Trigger: Q7112708Trigger] PreTriggerIn")
end

function Q7112708Trigger:LightUpTriggerIn()
    print("[MainId: 71127][Trigger: Q7112708Trigger] LightUpTriggerIn")
end

function Q7112708Trigger:TriggerOut()
    print("[MainId: 71127][Trigger: Q7112708Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7112708)
    this:DestroySelf()
end

return Q7112708Trigger
