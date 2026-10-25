require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger2 = class("Q14039Trigger2", GadgetActorProxy)
Q14039Trigger2.defaultAlias = "Q14039Trigger2"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger2:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger2] OnPostDataPrepare")
    this = self
end

function Q14039Trigger2:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger2:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 1403907)
    this:DestroySelf()
end

function Q14039Trigger2:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger2] PreTriggerIn")
end

function Q14039Trigger2:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger2] LightUpTriggerIn")
end

function Q14039Trigger2:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger2] TriggerOut")
end

return Q14039Trigger2
