require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414010Trigger = class("Q7414010Trigger", GadgetActorProxy)
Q7414010Trigger.defaultAlias = "Q7414010Trigger"
local Q74140ClientConfig = require("Quest/Client/Q74140ClientConfig")

local this
local subIDs = Q74140ClientConfig.SubIDs
local npcs = Q74140ClientConfig.Npcs
local points = Q74140ClientConfig.Points
local datas = Q74140ClientConfig.Datas

function Q7414010Trigger:OnPostDataPrepare()
    print("[MainId: 74140][Trigger: Q7414010Trigger] OnPostDataPrepare")
    this = self
end

function Q7414010Trigger:OnPostComponentPrepare()
    print("[MainId: 74140][Trigger: Q7414010Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414010Trigger:TriggerIn()
    print("[MainId: 74140][Trigger: Q7414010Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414010)
    this:DestroySelf()
end

function Q7414010Trigger:PreTriggerIn()
    print("[MainId: 74140][Trigger: Q7414010Trigger] PreTriggerIn")
end

function Q7414010Trigger:LightUpTriggerIn()
    print("[MainId: 74140][Trigger: Q7414010Trigger] LightUpTriggerIn")
end

function Q7414010Trigger:TriggerOut()
    print("[MainId: 74140][Trigger: Q7414010Trigger] TriggerOut")
end

return Q7414010Trigger
