require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7412701Trigger = class("Q7412701Trigger", GadgetActorProxy)
Q7412701Trigger.defaultAlias = "Q7412701Trigger"
local Q74127ClientConfig = require("Quest/Client/Q74127ClientConfig")

local this
local subIDs = Q74127ClientConfig.SubIDs
local npcs = Q74127ClientConfig.Npcs
local points = Q74127ClientConfig.Points
local datas = Q74127ClientConfig.Datas

function Q7412701Trigger:OnPostDataPrepare()
    print("[MainId: 74127][Trigger: Q7412701Trigger] OnPostDataPrepare")
    this = self
end

function Q7412701Trigger:OnPostComponentPrepare()
    print("[MainId: 74127][Trigger: Q7412701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7412701Trigger:TriggerIn()
    print("[MainId: 74127][Trigger: Q7412701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7417201)
    this:DestroySelf()
end

function Q7412701Trigger:PreTriggerIn()
    print("[MainId: 74127][Trigger: Q7412701Trigger] PreTriggerIn")
end

function Q7412701Trigger:LightUpTriggerIn()
    print("[MainId: 74127][Trigger: Q7412701Trigger] LightUpTriggerIn")
end

function Q7412701Trigger:TriggerOut()
    print("[MainId: 74127][Trigger: Q7412701Trigger] TriggerOut")
end

return Q7412701Trigger
