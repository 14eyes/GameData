require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110710Trigger = class("Q7110710Trigger", GadgetActorProxy)
Q7110710Trigger.defaultAlias = "Q7110710Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110710Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110710Trigger] OnPostDataPrepare")
    this = self
end

function Q7110710Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110710Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110710Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110710Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110710)
    this:DestroySelf()
end

function Q7110710Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110710Trigger] PreTriggerIn")
end

function Q7110710Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110710Trigger] LightUpTriggerIn")
end

function Q7110710Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110710Trigger] TriggerOut")
end

return Q7110710Trigger
