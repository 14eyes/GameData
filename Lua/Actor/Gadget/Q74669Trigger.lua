require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74669Trigger = class("Q74669Trigger", GadgetActorProxy)
Q74669Trigger.defaultAlias = "Q74669Trigger"
local Q74669ClientConfig = require("Quest/Client/Q74669ClientConfig")

local this
local subIDs = Q74669ClientConfig.SubIDs
local npcs = Q74669ClientConfig.Npcs
local points = Q74669ClientConfig.Points
local datas = Q74669ClientConfig.Datas

function Q74669Trigger:OnPostDataPrepare()
    print("[MainId: 74669][Trigger: Q74669Trigger] OnPostDataPrepare")
    this = self
end

function Q74669Trigger:OnPostComponentPrepare()
    print("[MainId: 74669][Trigger: Q74669Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74669Trigger:TriggerIn()
    print("[MainId: 74669][Trigger: Q74669Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7466901)
    this:DestroySelf()
end

function Q74669Trigger:PreTriggerIn()
    print("[MainId: 74669][Trigger: Q74669Trigger] PreTriggerIn")
end

function Q74669Trigger:LightUpTriggerIn()
    print("[MainId: 74669][Trigger: Q74669Trigger] LightUpTriggerIn")
end

function Q74669Trigger:TriggerOut()
    print("[MainId: 74669][Trigger: Q74669Trigger] TriggerOut")
end

return Q74669Trigger
