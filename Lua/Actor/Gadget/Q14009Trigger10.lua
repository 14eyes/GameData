require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger10 = class("Q14009Trigger10", GadgetActorProxy)
Q14009Trigger10.defaultAlias = "Q14009Trigger10"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger10:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger10] OnPostDataPrepare")
    this = self
end

function Q14009Trigger10:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger10] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger10:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger10] TriggerIn")
    actorMgr:GetActor("14009"):RequestInteraction(npcs.Npc1078Data.alias, "", true)
    this:DestroySelf()
end

function Q14009Trigger10:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger10] PreTriggerIn")
end

function Q14009Trigger10:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger10] LightUpTriggerIn")
end

function Q14009Trigger10:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger10] TriggerOut")
end

return Q14009Trigger10
