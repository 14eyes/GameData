require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710209Trigger_HidePaimon = class("Q7710209Trigger_HidePaimon", GadgetActorProxy)
Q7710209Trigger_HidePaimon.defaultAlias = "Q7710209Trigger_HidePaimon"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710209Trigger_HidePaimon:OnPostDataPrepare()
    print("Q7710209Trigger_HidePaimon - OnPostDataPrepare")
    this = self
end

function Q7710209Trigger_HidePaimon:OnPostComponentPrepare()
    print("Q7710209Trigger_HidePaimon - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710209Trigger_HidePaimon:TriggerIn()
    print("Q7710209Trigger_HidePaimon - TriggerIn")
    globalActor:DisablePaimonInProfilePage(datas.HandWriteTable)
    this:DestroySelf()
end

function Q7710209Trigger_HidePaimon:PreTriggerIn()
    print("Q7710209Trigger_HidePaimon - PreTriggerIn")
end

function Q7710209Trigger_HidePaimon:LightUpTriggerIn()
    print("Q7710209Trigger_HidePaimon - LightUpTriggerIn")
end

function Q7710209Trigger_HidePaimon:TriggerOut()
    print("Q7710209Trigger_HidePaimon - TriggerOut")
end

return Q7710209Trigger_HidePaimon
