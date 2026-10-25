require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413126Trigger = class("Q7413126Trigger", GadgetActorProxy)
Q7413126Trigger.defaultAlias = "Q7413126Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413126Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413126Trigger] OnPostDataPrepare")
    this = self
end

function Q7413126Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413126Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(73.60447, 168.066, 52.82764, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413126Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413126Trigger] TriggerIn")
    self:EnterCombatSneakMode(25)
end

function Q7413126Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413126Trigger] PreTriggerIn")
end

function Q7413126Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413126Trigger] LightUpTriggerIn")
end

function Q7413126Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413126Trigger] TriggerOut")
    self:ExitCombatSneakMode()
end

return Q7413126Trigger
