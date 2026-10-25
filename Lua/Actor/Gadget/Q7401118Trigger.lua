require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401118Trigger = class("Q7401118Trigger", GadgetActorProxy)
Q7401118Trigger.defaultAlias = "Q7401118Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401118Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401118Trigger] OnPostDataPrepare")
    this = self
end

function Q7401118Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401118Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401118Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401118Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401118)
    this:DestroySelf()
end

function Q7401118Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401118Trigger] PreTriggerIn")
end

function Q7401118Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401118Trigger] LightUpTriggerIn")
end

function Q7401118Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401118Trigger] TriggerOut")
end

return Q7401118Trigger
