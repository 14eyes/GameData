require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110737Trigger = class("Q7110737Trigger", GadgetActorProxy)
Q7110737Trigger.defaultAlias = "Q7110737Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110737Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110737Trigger] OnPostDataPrepare")
    this = self
end

function Q7110737Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110737Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110737Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110737Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110737)
    this:DestroySelf()
end

function Q7110737Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110737Trigger] PreTriggerIn")
end

function Q7110737Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110737Trigger] LightUpTriggerIn")
end

function Q7110737Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110737Trigger] TriggerOut")
end

return Q7110737Trigger
