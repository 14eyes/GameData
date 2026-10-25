require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401115Trigger = class("Q7401115Trigger", GadgetActorProxy)
Q7401115Trigger.defaultAlias = "Q7401115Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401115Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401115Trigger] OnPostDataPrepare")
    this = self
end

function Q7401115Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401115Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401115Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401115Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401115)
    this:DestroySelf()
end

function Q7401115Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401115Trigger] PreTriggerIn")
end

function Q7401115Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401115Trigger] LightUpTriggerIn")
end

function Q7401115Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401115Trigger] TriggerOut")
end

return Q7401115Trigger
