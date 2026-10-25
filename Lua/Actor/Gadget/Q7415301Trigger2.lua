require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415301Trigger2 = class("Q7415301Trigger2", GadgetActorProxy)
Q7415301Trigger2.defaultAlias = "Q7415301Trigger2"
local Q74153ClientConfig = require("Quest/Client/Q74153ClientConfig")

local this
local subIDs = Q74153ClientConfig.SubIDs
local npcs = Q74153ClientConfig.Npcs
local datas = Q74153ClientConfig.Datas

function Q7415301Trigger2:OnPostDataPrepare()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] OnPostDataPrepare")
    this = self
end

function Q7415301Trigger2:OnPostComponentPrepare()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415301Trigger2:TriggerIn()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] TriggerIn")
    actorMgr:GetActor("74153"):RequestInteraction(npcs.Npc21258Data.alias, "", true)
    this:DestroySelf()
end

function Q7415301Trigger2:PreTriggerIn()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] PreTriggerIn")
end

function Q7415301Trigger2:LightUpTriggerIn()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] LightUpTriggerIn")
end

function Q7415301Trigger2:TriggerOut()
    print("[MainId: 74153][Trigger: Q7415301Trigger2] TriggerOut")
end

return Q7415301Trigger2
