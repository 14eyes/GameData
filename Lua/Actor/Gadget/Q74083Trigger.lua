require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74083Trigger = class("Q74083Trigger", GadgetActorProxy)
Q74083Trigger.defaultAlias = "Q74083Trigger"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q74083Trigger:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q74083Trigger] OnPostDataPrepare")
    this = self
end

function Q74083Trigger:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q74083Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(160, 60, true, {x = 0.0, y = 17.0, z = 15.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74083Trigger:TriggerIn()
    print("[MainId: 74083][Trigger: Q74083Trigger] TriggerIn")
    actorMgr:GetActor("74083"):NarratorOnlyTaskByData(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q74083Trigger:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q74083Trigger] PreTriggerIn")
end

function Q74083Trigger:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q74083Trigger] LightUpTriggerIn")
end

function Q74083Trigger:TriggerOut()
    print("[MainId: 74083][Trigger: Q74083Trigger] TriggerOut")
end

return Q74083Trigger
