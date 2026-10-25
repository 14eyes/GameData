require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger1 = class("Q14039Trigger1", GadgetActorProxy)
Q14039Trigger1.defaultAlias = "Q14039Trigger1"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger1:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger1] OnPostDataPrepare")
    this = self
end

function Q14039Trigger1:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger1:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger1] TriggerIn")
    actorMgr:GetActor("14039"):QuestNarratorTask(datas.Narrator_1403901)
    this:DestroySelf()
end

function Q14039Trigger1:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger1] PreTriggerIn")
end

function Q14039Trigger1:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger1] LightUpTriggerIn")
end

function Q14039Trigger1:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger1] TriggerOut")
end

return Q14039Trigger1
