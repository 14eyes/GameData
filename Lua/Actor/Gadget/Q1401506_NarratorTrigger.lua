require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401506_NarratorTrigger = class("Q1401506_NarratorTrigger", GadgetActorProxy)
Q1401506_NarratorTrigger.defaultAlias = "Q1401506_NarratorTrigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401506_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q1401506_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(223.5996, 355.8742, 88.48042, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401506_NarratorTrigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] TriggerIn")
end

function Q1401506_NarratorTrigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] PreTriggerIn")
end

function Q1401506_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] LightUpTriggerIn")
end

function Q1401506_NarratorTrigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401506_NarratorTrigger] TriggerOut")
    this:DestroySelf()
end

return Q1401506_NarratorTrigger
