require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40123Trigger = class("Q40123Trigger", GadgetActorProxy)
Q40123Trigger.defaultAlias = "Q40123Trigger"
local Q40123ClientConfig = require("Quest/Client/Q40123ClientConfig")

local this
local subIDs = Q40123ClientConfig.SubIDs
local npcs = Q40123ClientConfig.Npcs
local points = Q40123ClientConfig.Points
local datas = Q40123ClientConfig.Datas

function Q40123Trigger:OnPostDataPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger] OnPostDataPrepare")
    this = self
end

function Q40123Trigger:OnPostComponentPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40123Trigger:TriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4012303)
    this:DestroySelf()
end

function Q40123Trigger:PreTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger] PreTriggerIn")
end

function Q40123Trigger:LightUpTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger] LightUpTriggerIn")
end

function Q40123Trigger:TriggerOut()
    print("[MainId: 40123][Trigger: Q40123Trigger] TriggerOut")
end

return Q40123Trigger
