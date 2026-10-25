require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907403Trigger = class("Q1907403Trigger", GadgetActorProxy)
Q1907403Trigger.defaultAlias = "Q1907403Trigger"
local Q19074ClientConfig = require("Quest/Client/Q19074ClientConfig")

local this
local subIDs = Q19074ClientConfig.SubIDs
local npcs = Q19074ClientConfig.Npcs
local datas = Q19074ClientConfig.Datas

function Q1907403Trigger:OnPostDataPrepare()
    print("[MainId: 19074][Trigger: Q1907403Trigger] OnPostDataPrepare")
    this = self
end

function Q1907403Trigger:OnPostComponentPrepare()
    print("[MainId: 19074][Trigger: Q1907403Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7.965822, 10.61733, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907403Trigger:TriggerIn()
    print("[MainId: 19074][Trigger: Q1907403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1907403)
    this:DestroySelf()
end

function Q1907403Trigger:PreTriggerIn()
    print("[MainId: 19074][Trigger: Q1907403Trigger] PreTriggerIn")
end

function Q1907403Trigger:LightUpTriggerIn()
    print("[MainId: 19074][Trigger: Q1907403Trigger] LightUpTriggerIn")
end

function Q1907403Trigger:TriggerOut()
    print("[MainId: 19074][Trigger: Q1907403Trigger] TriggerOut")
end

return Q1907403Trigger
