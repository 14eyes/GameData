require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414009Trigger = class("Q7414009Trigger", GadgetActorProxy)
Q7414009Trigger.defaultAlias = "Q7414009Trigger"
local Q74140ClientConfig = require("Quest/Client/Q74140ClientConfig")

local this
local subIDs = Q74140ClientConfig.SubIDs
local npcs = Q74140ClientConfig.Npcs
local points = Q74140ClientConfig.Points
local datas = Q74140ClientConfig.Datas

function Q7414009Trigger:OnPostDataPrepare()
    print("[MainId: 74140][Trigger: Q7414009Trigger] OnPostDataPrepare")
    this = self
end

function Q7414009Trigger:OnPostComponentPrepare()
    print("[MainId: 74140][Trigger: Q7414009Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414009Trigger:TriggerIn()
    print("[MainId: 74140][Trigger: Q7414009Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414009)
    this:DestroySelf()
end

function Q7414009Trigger:PreTriggerIn()
    print("[MainId: 74140][Trigger: Q7414009Trigger] PreTriggerIn")
end

function Q7414009Trigger:LightUpTriggerIn()
    print("[MainId: 74140][Trigger: Q7414009Trigger] LightUpTriggerIn")
end

function Q7414009Trigger:TriggerOut()
    print("[MainId: 74140][Trigger: Q7414009Trigger] TriggerOut")
end

return Q7414009Trigger
