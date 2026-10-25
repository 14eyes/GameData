require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503424_EnterTrigger = class("Q7503424_EnterTrigger", GadgetActorProxy)
Q7503424_EnterTrigger.defaultAlias = "Q7503424_EnterTrigger"
local Q75034ClientConfig = require("Quest/Client/Q75034ClientConfig")

local this
local subIDs = Q75034ClientConfig.SubIDs
local npcs = Q75034ClientConfig.Npcs
local datas = Q75034ClientConfig.Datas

function Q7503424_EnterTrigger:OnPostDataPrepare()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7503424_EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75034)
end

function Q7503424_EnterTrigger:TriggerIn()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7503424)
    this:DestroySelf()
end

function Q7503424_EnterTrigger:PreTriggerIn()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] PreTriggerIn")
end

function Q7503424_EnterTrigger:LightUpTriggerIn()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] LightUpTriggerIn")
end

function Q7503424_EnterTrigger:TriggerOut()
    print("[MainId: 75034][Trigger: Q7503424_EnterTrigger] TriggerOut")
end

return Q7503424_EnterTrigger
