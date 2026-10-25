require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger6 = class("Q14009Trigger6", GadgetActorProxy)
Q14009Trigger6.defaultAlias = "Q14009Trigger6"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger6:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger6] OnPostDataPrepare")
    this = self
end

function Q14009Trigger6:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger6] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9, 14, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger6:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger6] TriggerIn")
    actorMgr:GetActor("14009"):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1400904, nil, 14009, 0)
    this:DestroySelf()
end

function Q14009Trigger6:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger6] PreTriggerIn")
end

function Q14009Trigger6:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger6] LightUpTriggerIn")
end

function Q14009Trigger6:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger6] TriggerOut")
end

return Q14009Trigger6
