require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500802DownTrigger = class("Q7500802DownTrigger", GadgetActorProxy)
Q7500802DownTrigger.defaultAlias = "Q7500802DownTrigger"
local Q75008ClientConfig = require("Quest/Client/Q75008ClientConfig")

local this
local subIDs = Q75008ClientConfig.SubIDs
local npcs = Q75008ClientConfig.Npcs
local datas = Q75008ClientConfig.Datas

function Q7500802DownTrigger:OnPostDataPrepare()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] OnPostDataPrepare")
    this = self
end

function Q7500802DownTrigger:OnPostComponentPrepare()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(300, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75008)
end

function Q7500802DownTrigger:TriggerIn()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] TriggerIn")
end

function Q7500802DownTrigger:PreTriggerIn()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] PreTriggerIn")
end

function Q7500802DownTrigger:LightUpTriggerIn()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] LightUpTriggerIn")
end

function Q7500802DownTrigger:TriggerOut()
    print("[MainId: 75008][Trigger: Q7500802DownTrigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7500802)
    this:DestroySelf()
end

return Q7500802DownTrigger
