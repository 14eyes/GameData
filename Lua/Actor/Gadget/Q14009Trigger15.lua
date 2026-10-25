require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger15 = class("Q14009Trigger15", GadgetActorProxy)
Q14009Trigger15.defaultAlias = "Q14009Trigger15"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger15:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger15] OnPostDataPrepare")
    this = self
end

function Q14009Trigger15:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger15] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(140, 38, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger15:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger15] TriggerIn")
end

function Q14009Trigger15:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger15] PreTriggerIn")
end

function Q14009Trigger15:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger15] LightUpTriggerIn")
end

function Q14009Trigger15:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger15] TriggerOut")
    actorUtils.FinishQuestID(true, 1400912)
end

return Q14009Trigger15
