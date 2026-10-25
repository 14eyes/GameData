require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013905Trigger = class("Q4013905Trigger", GadgetActorProxy)
Q4013905Trigger.defaultAlias = "Q4013905Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013905Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013905Trigger] OnPostDataPrepare")
    this = self
end

function Q4013905Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013905Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013905Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013905Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013917)
    this:DestroySelf()
end

function Q4013905Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013905Trigger] PreTriggerIn")
end

function Q4013905Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013905Trigger] LightUpTriggerIn")
end

function Q4013905Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013905Trigger] TriggerOut")
end

return Q4013905Trigger
