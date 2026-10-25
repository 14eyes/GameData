require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger_BlackScreen = class("Q74183Trigger_BlackScreen", GadgetActorProxy)
Q74183Trigger_BlackScreen.defaultAlias = "Q74183Trigger_BlackScreen"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger_BlackScreen:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] OnPostDataPrepare")
    this = self
end

function Q74183Trigger_BlackScreen:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(103.4, 234, 373, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74183)
end

function Q74183Trigger_BlackScreen:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] TriggerIn")
    actorMgr:GetActor("74183"):ShowBlackScreenWithDialogText(0.5, 1.5, 0, nil, nil, nil, 0, false, true)
    this:DestroySelf()
end

function Q74183Trigger_BlackScreen:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] PreTriggerIn")
end

function Q74183Trigger_BlackScreen:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] LightUpTriggerIn")
end

function Q74183Trigger_BlackScreen:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger_BlackScreen] TriggerOut")
end

return Q74183Trigger_BlackScreen
