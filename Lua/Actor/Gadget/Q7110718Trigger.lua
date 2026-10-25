require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110718Trigger = class("Q7110718Trigger", GadgetActorProxy)
Q7110718Trigger.defaultAlias = "Q7110718Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110718Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110718Trigger] OnPostDataPrepare")
    this = self
end

function Q7110718Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110718Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110718Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110718Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110718)
    this:DestroySelf()
end

function Q7110718Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110718Trigger] PreTriggerIn")
end

function Q7110718Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110718Trigger] LightUpTriggerIn")
end

function Q7110718Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110718Trigger] TriggerOut")
end

return Q7110718Trigger
