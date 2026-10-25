require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013907Trigger = class("Q4013907Trigger", GadgetActorProxy)
Q4013907Trigger.defaultAlias = "Q4013907Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013907Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013907Trigger] OnPostDataPrepare")
    this = self
end

function Q4013907Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013907Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013907Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013907Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013907)
    this:DestroySelf()
end

function Q4013907Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013907Trigger] PreTriggerIn")
end

function Q4013907Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013907Trigger] LightUpTriggerIn")
end

function Q4013907Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013907Trigger] TriggerOut")
end

return Q4013907Trigger
