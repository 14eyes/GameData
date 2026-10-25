require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405325Trigger = class("Q7405325Trigger", GadgetActorProxy)
Q7405325Trigger.defaultAlias = "Q7405325Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405325Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405325Trigger] OnPostDataPrepare")
    this = self
end

function Q7405325Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405325Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405325Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405325Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405325)
    this:DestroySelf()
end

function Q7405325Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405325Trigger] PreTriggerIn")
end

function Q7405325Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405325Trigger] LightUpTriggerIn")
end

function Q7405325Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405325Trigger] TriggerOut")
end

return Q7405325Trigger
