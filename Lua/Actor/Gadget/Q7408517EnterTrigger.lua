require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408517EnterTrigger = class("Q7408517EnterTrigger", GadgetActorProxy)
Q7408517EnterTrigger.defaultAlias = "Q7408517EnterTrigger"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408517EnterTrigger:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7408517EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4.98, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408517EnterTrigger:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408517)
    this:DestroySelf()
end

function Q7408517EnterTrigger:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] PreTriggerIn")
end

function Q7408517EnterTrigger:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] LightUpTriggerIn")
end

function Q7408517EnterTrigger:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408517EnterTrigger] TriggerOut")
end

return Q7408517EnterTrigger
