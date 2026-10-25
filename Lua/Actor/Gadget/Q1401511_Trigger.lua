require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401511_Trigger = class("Q1401511_Trigger", GadgetActorProxy)
Q1401511_Trigger.defaultAlias = "Q1401511_Trigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401511_Trigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401511_Trigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(75.50928, 74.87943, 18.17225, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401511_Trigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1401511)
    this:DestroySelf()
end

function Q1401511_Trigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] PreTriggerIn")
end

function Q1401511_Trigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] LightUpTriggerIn")
end

function Q1401511_Trigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401511_Trigger] TriggerOut")
end

return Q1401511_Trigger
