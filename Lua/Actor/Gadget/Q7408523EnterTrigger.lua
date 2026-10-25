require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408523EnterTrigger = class("Q7408523EnterTrigger", GadgetActorProxy)
Q7408523EnterTrigger.defaultAlias = "Q7408523EnterTrigger"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408523EnterTrigger:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7408523EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408523EnterTrigger:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408523)
    this:DestroySelf()
end

function Q7408523EnterTrigger:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] PreTriggerIn")
end

function Q7408523EnterTrigger:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] LightUpTriggerIn")
end

function Q7408523EnterTrigger:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408523EnterTrigger] TriggerOut")
end

return Q7408523EnterTrigger
