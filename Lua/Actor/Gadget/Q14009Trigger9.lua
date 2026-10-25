require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger9 = class("Q14009Trigger9", GadgetActorProxy)
Q14009Trigger9.defaultAlias = "Q14009Trigger9"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger9:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger9] OnPostDataPrepare")
    this = self
end

function Q14009Trigger9:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger9] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger9:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger9] TriggerIn")
    actorMgr:GetActor("14009"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    this:DestroySelf()
end

function Q14009Trigger9:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger9] PreTriggerIn")
end

function Q14009Trigger9:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger9] LightUpTriggerIn")
end

function Q14009Trigger9:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger9] TriggerOut")
end

return Q14009Trigger9
