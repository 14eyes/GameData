require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger13 = class("Q14009Trigger13", GadgetActorProxy)
Q14009Trigger13.defaultAlias = "Q14009Trigger13"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger13:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger13] OnPostDataPrepare")
    this = self
end

function Q14009Trigger13:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger13] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 10, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger13:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger13] TriggerIn")
    actorMgr:GetActor("14009"):RequestInteraction(npcs.Npc1078Data.alias, "", true)
    this:DestroySelf()
end

function Q14009Trigger13:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger13] PreTriggerIn")
end

function Q14009Trigger13:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger13] LightUpTriggerIn")
end

function Q14009Trigger13:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger13] TriggerOut")
end

return Q14009Trigger13
