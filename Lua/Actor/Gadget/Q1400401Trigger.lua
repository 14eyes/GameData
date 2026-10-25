require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400401Trigger = class("Q1400401Trigger", GadgetActorProxy)
Q1400401Trigger.defaultAlias = "Q1400401Trigger"
local Q14004ClientConfig = require("Quest/Client/Q14004ClientConfig")

local this
local subIDs = Q14004ClientConfig.SubIDs
local npcs = Q14004ClientConfig.Npcs
local datas = Q14004ClientConfig.Datas

function Q1400401Trigger:OnPostDataPrepare()
    print("[MainId: 14004][Trigger: Q1400401Trigger] OnPostDataPrepare")
    this = self
end

function Q1400401Trigger:OnPostComponentPrepare()
    print("[MainId: 14004][Trigger: Q1400401Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 9.51846, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400401Trigger:TriggerIn()
    print("[MainId: 14004][Trigger: Q1400401Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400401)
    this:DestroySelf()
end

function Q1400401Trigger:PreTriggerIn()
    print("[MainId: 14004][Trigger: Q1400401Trigger] PreTriggerIn")
end

function Q1400401Trigger:LightUpTriggerIn()
    print("[MainId: 14004][Trigger: Q1400401Trigger] LightUpTriggerIn")
end

function Q1400401Trigger:TriggerOut()
    print("[MainId: 14004][Trigger: Q1400401Trigger] TriggerOut")
end

return Q1400401Trigger
