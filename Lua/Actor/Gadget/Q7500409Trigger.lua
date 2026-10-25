require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500409Trigger = class("Q7500409Trigger", GadgetActorProxy)
Q7500409Trigger.defaultAlias = "Q7500409Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500409Trigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500409Trigger] OnPostDataPrepare")
    this = self
end

function Q7500409Trigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500409Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(42.163, 39.2181, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500409Trigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500409Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500409)
    actorUtils.FinishQuestID(false, 7500415)
    this:DestroySelf()
end

function Q7500409Trigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500409Trigger] PreTriggerIn")
end

function Q7500409Trigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500409Trigger] LightUpTriggerIn")
end

function Q7500409Trigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500409Trigger] TriggerOut")
end

return Q7500409Trigger
