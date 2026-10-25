require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112604Trigger = class("Q7112604Trigger", GadgetActorProxy)
Q7112604Trigger.defaultAlias = "Q7112604Trigger"
local Q71126ClientConfig = require("Quest/Client/Q71126ClientConfig")

local this
local subIDs = Q71126ClientConfig.SubIDs
local npcs = Q71126ClientConfig.Npcs
local points = Q71126ClientConfig.Points
local datas = Q71126ClientConfig.Datas

function Q7112604Trigger:OnPostDataPrepare()
    print("[MainId: 71126][Trigger: Q7112604Trigger] OnPostDataPrepare")
    this = self
end

function Q7112604Trigger:OnPostComponentPrepare()
    print("[MainId: 71126][Trigger: Q7112604Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71126)
end

function Q7112604Trigger:TriggerIn()
    print("[MainId: 71126][Trigger: Q7112604Trigger] TriggerIn")
end

function Q7112604Trigger:PreTriggerIn()
    print("[MainId: 71126][Trigger: Q7112604Trigger] PreTriggerIn")
end

function Q7112604Trigger:LightUpTriggerIn()
    print("[MainId: 71126][Trigger: Q7112604Trigger] LightUpTriggerIn")
end

function Q7112604Trigger:TriggerOut()
    print("[MainId: 71126][Trigger: Q7112604Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7112604)
    this:DestroySelf()
end

return Q7112604Trigger
