require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger5 = class("Q74183Trigger5", GadgetActorProxy)
Q74183Trigger5.defaultAlias = "Q74183Trigger5"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger5:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger5] OnPostDataPrepare")
    this = self
end

function Q74183Trigger5:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger5] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(103.4, 234.4, 373.3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger5:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger5] TriggerIn")
    actorMgr:GetActor("74183"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
    actorUtils.FinishQuestID(false, 7418308)
    this:DestroySelf()
end

function Q74183Trigger5:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger5] PreTriggerIn")
end

function Q74183Trigger5:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger5] LightUpTriggerIn")
end

function Q74183Trigger5:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger5] TriggerOut")
end

return Q74183Trigger5
