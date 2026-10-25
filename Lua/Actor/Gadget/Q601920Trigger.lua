require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601920Trigger = class("Q601920Trigger", GadgetActorProxy)
Q601920Trigger.defaultAlias = "Q601920Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601920Trigger:OnPostDataPrepare()
    print("Q601920Trigger - OnPostDataPrepare")
    this = self
end

function Q601920Trigger:OnPostComponentPrepare()
    print("Q601920Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601920Trigger:TriggerIn()
    print("Q601920Trigger - TriggerIn")
    globalActor:PlayerEnterDungeon(1, 1281, false, nil, 0)
    this:DestroySelf()
end

function Q601920Trigger:PreTriggerIn()
    print("Q601920Trigger - PreTriggerIn")
end

function Q601920Trigger:LightUpTriggerIn()
    print("Q601920Trigger - LightUpTriggerIn")
end

function Q601920Trigger:TriggerOut()
    print("Q601920Trigger - TriggerOut")
end

return Q601920Trigger
