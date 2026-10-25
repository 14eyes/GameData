require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40135Trigger = class("Q40135Trigger", GadgetActorProxy)
Q40135Trigger.defaultAlias = "Q40135Trigger"
local Q40135ClientConfig = require("Quest/Client/Q40135ClientConfig")

local this
local subIDs = Q40135ClientConfig.SubIDs
local npcs = Q40135ClientConfig.Npcs
local points = Q40135ClientConfig.Points
local datas = Q40135ClientConfig.Datas

function Q40135Trigger:OnPostDataPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger] OnPostDataPrepare")
    this = self
end

function Q40135Trigger:OnPostComponentPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40135Trigger:TriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013512)
    this:DestroySelf()
end

function Q40135Trigger:PreTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger] PreTriggerIn")
end

function Q40135Trigger:LightUpTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger] LightUpTriggerIn")
end

function Q40135Trigger:TriggerOut()
    print("[MainId: 40135][Trigger: Q40135Trigger] TriggerOut")
end

return Q40135Trigger
