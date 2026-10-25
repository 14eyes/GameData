require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110205Trigger = class("Q7110205Trigger", GadgetActorProxy)
Q7110205Trigger.defaultAlias = "Q7110205Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110205Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110205Trigger] OnPostDataPrepare")
    this = self
end

function Q7110205Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110205Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110205Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110205Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110205)
    this:DestroySelf()
end

function Q7110205Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110205Trigger] PreTriggerIn")
end

function Q7110205Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110205Trigger] LightUpTriggerIn")
end

function Q7110205Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110205Trigger] TriggerOut")
end

return Q7110205Trigger
