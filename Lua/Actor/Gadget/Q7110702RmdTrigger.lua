require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110702RmdTrigger = class("Q7110702RmdTrigger", GadgetActorProxy)
Q7110702RmdTrigger.defaultAlias = "Q7110702RmdTrigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110702RmdTrigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] OnPostDataPrepare")
    this = self
end

function Q7110702RmdTrigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110702RmdTrigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] TriggerIn")
    this:DestroySelf()
end

function Q7110702RmdTrigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] PreTriggerIn")
end

function Q7110702RmdTrigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] LightUpTriggerIn")
end

function Q7110702RmdTrigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110702RmdTrigger] TriggerOut")
end

return Q7110702RmdTrigger
