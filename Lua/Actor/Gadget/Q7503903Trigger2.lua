require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503903Trigger2 = class("Q7503903Trigger2", GadgetActorProxy)
Q7503903Trigger2.defaultAlias = "Q7503903Trigger2"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503903Trigger2:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] OnPostDataPrepare")
    this = self
end

function Q7503903Trigger2:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(32, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503903Trigger2:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] TriggerIn")
    actorMgr:GetActor("75039"):QuestNarratorTask(datas.NarratorWithId_750390302)
    this:DestroySelf()
end

function Q7503903Trigger2:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] PreTriggerIn")
end

function Q7503903Trigger2:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] LightUpTriggerIn")
end

function Q7503903Trigger2:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503903Trigger2] TriggerOut")
end

return Q7503903Trigger2
