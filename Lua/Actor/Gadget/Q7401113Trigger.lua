require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401113Trigger = class("Q7401113Trigger", GadgetActorProxy)
Q7401113Trigger.defaultAlias = "Q7401113Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401113Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401113Trigger] OnPostDataPrepare")
    this = self
end

function Q7401113Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401113Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401113Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401113Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401113)
    this:DestroySelf()
end

function Q7401113Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401113Trigger] PreTriggerIn")
end

function Q7401113Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401113Trigger] LightUpTriggerIn")
end

function Q7401113Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401113Trigger] TriggerOut")
end

return Q7401113Trigger
