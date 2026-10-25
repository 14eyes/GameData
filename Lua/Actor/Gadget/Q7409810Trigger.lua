require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7409810Trigger = class("Q7409810Trigger", GadgetActorProxy)
Q7409810Trigger.defaultAlias = "Q7409810Trigger"
local Q74098ClientConfig = require("Quest/Client/Q74098ClientConfig")

local this
local subIDs = Q74098ClientConfig.SubIDs
local npcs = Q74098ClientConfig.Npcs
local points = Q74098ClientConfig.Points
local datas = Q74098ClientConfig.Datas

function Q7409810Trigger:OnPostDataPrepare()
    print("[MainId: 74098][Trigger: Q7409810Trigger] OnPostDataPrepare")
    this = self
end

function Q7409810Trigger:OnPostComponentPrepare()
    print("[MainId: 74098][Trigger: Q7409810Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7409810Trigger:TriggerIn()
    print("[MainId: 74098][Trigger: Q7409810Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7409810)
    this:DestroySelf()
end

function Q7409810Trigger:PreTriggerIn()
    print("[MainId: 74098][Trigger: Q7409810Trigger] PreTriggerIn")
end

function Q7409810Trigger:LightUpTriggerIn()
    print("[MainId: 74098][Trigger: Q7409810Trigger] LightUpTriggerIn")
end

function Q7409810Trigger:TriggerOut()
    print("[MainId: 74098][Trigger: Q7409810Trigger] TriggerOut")
end

return Q7409810Trigger
