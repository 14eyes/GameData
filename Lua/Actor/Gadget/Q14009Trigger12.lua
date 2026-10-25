require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger12 = class("Q14009Trigger12", GadgetActorProxy)
Q14009Trigger12.defaultAlias = "Q14009Trigger12"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger12:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger12] OnPostDataPrepare")
    this = self
end

function Q14009Trigger12:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger12] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 40, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger12:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger12] TriggerIn")
    actorMgr:GetActor("14009"):RequestInteraction(npcs.Npc1070Data.alias, "", true)
    this:DestroySelf()
end

function Q14009Trigger12:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger12] PreTriggerIn")
end

function Q14009Trigger12:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger12] LightUpTriggerIn")
end

function Q14009Trigger12:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger12] TriggerOut")
end

return Q14009Trigger12
