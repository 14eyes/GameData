require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408129Trigger = class("Q7408129Trigger", GadgetActorProxy)
Q7408129Trigger.defaultAlias = "Q7408129Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408129Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408129Trigger] OnPostDataPrepare")
    this = self
end

function Q7408129Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408129Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 12.29, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408129Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408129Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408127)
    this:DestroySelf()
end

function Q7408129Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408129Trigger] PreTriggerIn")
end

function Q7408129Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408129Trigger] LightUpTriggerIn")
end

function Q7408129Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408129Trigger] TriggerOut")
end

return Q7408129Trigger
