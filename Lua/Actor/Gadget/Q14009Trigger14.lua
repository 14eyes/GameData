require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger14 = class("Q14009Trigger14", GadgetActorProxy)
Q14009Trigger14.defaultAlias = "Q14009Trigger14"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger14:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger14] OnPostDataPrepare")
    this = self
end

function Q14009Trigger14:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger14] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(120, 25, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger14:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger14] TriggerIn")
    actorUtils.FinishQuestID(false, 1400917)
    this:DestroySelf()
end

function Q14009Trigger14:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger14] PreTriggerIn")
end

function Q14009Trigger14:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger14] LightUpTriggerIn")
end

function Q14009Trigger14:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger14] TriggerOut")
end

return Q14009Trigger14
