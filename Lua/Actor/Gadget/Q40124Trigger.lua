require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40124Trigger = class("Q40124Trigger", GadgetActorProxy)
Q40124Trigger.defaultAlias = "Q40124Trigger"
local Q40124ClientConfig = require("Quest/Client/Q40124ClientConfig")

local this
local subIDs = Q40124ClientConfig.SubIDs
local npcs = Q40124ClientConfig.Npcs
local datas = Q40124ClientConfig.Datas

function Q40124Trigger:OnPostDataPrepare()
    print("[MainId: 40124][Trigger: Q40124Trigger] OnPostDataPrepare")
    this = self
end

function Q40124Trigger:OnPostComponentPrepare()
    print("[MainId: 40124][Trigger: Q40124Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40124Trigger:TriggerIn()
    print("[MainId: 40124][Trigger: Q40124Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4012417)
    this:DestroySelf()
end

function Q40124Trigger:PreTriggerIn()
    print("[MainId: 40124][Trigger: Q40124Trigger] PreTriggerIn")
end

function Q40124Trigger:LightUpTriggerIn()
    print("[MainId: 40124][Trigger: Q40124Trigger] LightUpTriggerIn")
end

function Q40124Trigger:TriggerOut()
    print("[MainId: 40124][Trigger: Q40124Trigger] TriggerOut")
end

return Q40124Trigger
