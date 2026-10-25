require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7334808Trigger = class("Q7334808Trigger", GadgetActorProxy)
Q7334808Trigger.defaultAlias = "Q7334808Trigger"
local Q73348ClientConfig = require("Quest/Client/Q73348ClientConfig")

local this
local subIDs = Q73348ClientConfig.SubIDs
local npcs = Q73348ClientConfig.Npcs
local points = Q73348ClientConfig.Points
local datas = Q73348ClientConfig.Datas

function Q7334808Trigger:OnPostDataPrepare()
    print("[MainId: 73348][Trigger: Q7334808Trigger] OnPostDataPrepare")
    this = self
end

function Q7334808Trigger:OnPostComponentPrepare()
    print("[MainId: 73348][Trigger: Q7334808Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 16, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7334808Trigger:TriggerIn()
    print("[MainId: 73348][Trigger: Q7334808Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7334808)
    this:DestroySelf()
end

function Q7334808Trigger:PreTriggerIn()
    print("[MainId: 73348][Trigger: Q7334808Trigger] PreTriggerIn")
end

function Q7334808Trigger:LightUpTriggerIn()
    print("[MainId: 73348][Trigger: Q7334808Trigger] LightUpTriggerIn")
end

function Q7334808Trigger:TriggerOut()
    print("[MainId: 73348][Trigger: Q7334808Trigger] TriggerOut")
end

return Q7334808Trigger
