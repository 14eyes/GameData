require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401218Trigger = class("Q401218Trigger", GadgetActorProxy)
Q401218Trigger.defaultAlias = "Q401218Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401218Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401218Trigger] OnPostDataPrepare")
    this = self
end

function Q401218Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401218Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 24, 16, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401218Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401218Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401218)
    this:DestroySelf()
end

function Q401218Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401218Trigger] PreTriggerIn")
end

function Q401218Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401218Trigger] LightUpTriggerIn")
end

function Q401218Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401218Trigger] TriggerOut")
end

return Q401218Trigger
