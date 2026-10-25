require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503903Trigger = class("Q7503903Trigger", GadgetActorProxy)
Q7503903Trigger.defaultAlias = "Q7503903Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503903Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503903Trigger] OnPostDataPrepare")
    this = self
end

function Q7503903Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503903Trigger] OnPostComponentPrepare")
end

function Q7503903Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger] TriggerIn")
end

function Q7503903Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger] PreTriggerIn")
end

function Q7503903Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger] LightUpTriggerIn")
end

function Q7503903Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503903Trigger] TriggerOut")
end

return Q7503903Trigger
