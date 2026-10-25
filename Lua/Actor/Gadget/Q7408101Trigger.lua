require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408101Trigger = class("Q7408101Trigger", GadgetActorProxy)
Q7408101Trigger.defaultAlias = "Q7408101Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408101Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408101Trigger] OnPostDataPrepare")
    this = self
end

function Q7408101Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(77.87763, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408101Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408101Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408101)
    this:DestroySelf()
end

function Q7408101Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408101Trigger] PreTriggerIn")
end

function Q7408101Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408101Trigger] LightUpTriggerIn")
end

function Q7408101Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408101Trigger] TriggerOut")
end

return Q7408101Trigger
