require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401117Trigger = class("Q7401117Trigger", GadgetActorProxy)
Q7401117Trigger.defaultAlias = "Q7401117Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401117Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401117Trigger] OnPostDataPrepare")
    this = self
end

function Q7401117Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401117Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401117Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401117Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401117)
    this:DestroySelf()
end

function Q7401117Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401117Trigger] PreTriggerIn")
end

function Q7401117Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401117Trigger] LightUpTriggerIn")
end

function Q7401117Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401117Trigger] TriggerOut")
end

return Q7401117Trigger
