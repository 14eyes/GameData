require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112703Trigger = class("Q7112703Trigger", GadgetActorProxy)
Q7112703Trigger.defaultAlias = "Q7112703Trigger"
local Q71127ClientConfig = require("Quest/Client/Q71127ClientConfig")

local this
local subIDs = Q71127ClientConfig.SubIDs
local npcs = Q71127ClientConfig.Npcs
local points = Q71127ClientConfig.Points
local datas = Q71127ClientConfig.Datas

function Q7112703Trigger:OnPostDataPrepare()
    print("[MainId: 71127][Trigger: Q7112703Trigger] OnPostDataPrepare")
    this = self
end

function Q7112703Trigger:OnPostComponentPrepare()
    print("[MainId: 71127][Trigger: Q7112703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71127)
end

function Q7112703Trigger:TriggerIn()
    print("[MainId: 71127][Trigger: Q7112703Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7112703)
    this:DestroySelf()
end

function Q7112703Trigger:PreTriggerIn()
    print("[MainId: 71127][Trigger: Q7112703Trigger] PreTriggerIn")
end

function Q7112703Trigger:LightUpTriggerIn()
    print("[MainId: 71127][Trigger: Q7112703Trigger] LightUpTriggerIn")
end

function Q7112703Trigger:TriggerOut()
    print("[MainId: 71127][Trigger: Q7112703Trigger] TriggerOut")
end

return Q7112703Trigger
