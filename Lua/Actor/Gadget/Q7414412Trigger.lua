require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414412Trigger = class("Q7414412Trigger", GadgetActorProxy)
Q7414412Trigger.defaultAlias = "Q7414412Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414412Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414412Trigger] OnPostDataPrepare")
    this = self
end

function Q7414412Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414412Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414412Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7414412Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger] PreTriggerIn")
end

function Q7414412Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger] LightUpTriggerIn")
end

function Q7414412Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414412Trigger] TriggerOut")
end

return Q7414412Trigger
