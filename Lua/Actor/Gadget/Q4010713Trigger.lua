require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010713Trigger = class("Q4010713Trigger", GadgetActorProxy)
Q4010713Trigger.defaultAlias = "Q4010713Trigger"
local Q40107ClientConfig = require("Quest/Client/Q40107ClientConfig")

local this
local subIDs = Q40107ClientConfig.SubIDs
local npcs = Q40107ClientConfig.Npcs
local points = Q40107ClientConfig.Points
local datas = Q40107ClientConfig.Datas

function Q4010713Trigger:OnPostDataPrepare()
    print("[MainId: 40107][Trigger: Q4010713Trigger] OnPostDataPrepare")
    this = self
end

function Q4010713Trigger:OnPostComponentPrepare()
    print("[MainId: 40107][Trigger: Q4010713Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(48, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010713Trigger:TriggerIn()
    print("[MainId: 40107][Trigger: Q4010713Trigger] TriggerIn")
    actorMgr:GetActor("40107"):NarratorOnlyTaskByData(datas.NarratorWithId4010703)
    this:DestroySelf()
end

function Q4010713Trigger:PreTriggerIn()
    print("[MainId: 40107][Trigger: Q4010713Trigger] PreTriggerIn")
end

function Q4010713Trigger:LightUpTriggerIn()
    print("[MainId: 40107][Trigger: Q4010713Trigger] LightUpTriggerIn")
end

function Q4010713Trigger:TriggerOut()
    print("[MainId: 40107][Trigger: Q4010713Trigger] TriggerOut")
end

return Q4010713Trigger
