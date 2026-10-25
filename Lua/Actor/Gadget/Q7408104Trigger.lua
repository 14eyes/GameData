require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408104Trigger = class("Q7408104Trigger", GadgetActorProxy)
Q7408104Trigger.defaultAlias = "Q7408104Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408104Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408104Trigger] OnPostDataPrepare")
    this = self
end

function Q7408104Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6.572478, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408104Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408104Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408104)
    this:DestroySelf()
end

function Q7408104Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408104Trigger] PreTriggerIn")
end

function Q7408104Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408104Trigger] LightUpTriggerIn")
end

function Q7408104Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408104Trigger] TriggerOut")
end

return Q7408104Trigger
