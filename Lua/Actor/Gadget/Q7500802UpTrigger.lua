require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500802UpTrigger = class("Q7500802UpTrigger", GadgetActorProxy)
Q7500802UpTrigger.defaultAlias = "Q7500802UpTrigger"
local Q75008ClientConfig = require("Quest/Client/Q75008ClientConfig")

local this
local subIDs = Q75008ClientConfig.SubIDs
local npcs = Q75008ClientConfig.Npcs
local datas = Q75008ClientConfig.Datas

function Q7500802UpTrigger:OnPostDataPrepare()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] OnPostDataPrepare")
    this = self
end

function Q7500802UpTrigger:OnPostComponentPrepare()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75008)
end

function Q7500802UpTrigger:TriggerIn()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500802)
    this:DestroySelf()
end

function Q7500802UpTrigger:PreTriggerIn()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] PreTriggerIn")
end

function Q7500802UpTrigger:LightUpTriggerIn()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] LightUpTriggerIn")
end

function Q7500802UpTrigger:TriggerOut()
    print("[MainId: 75008][Trigger: Q7500802UpTrigger] TriggerOut")
end

return Q7500802UpTrigger
