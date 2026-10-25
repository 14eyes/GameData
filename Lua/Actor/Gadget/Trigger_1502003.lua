require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1502003 = class("Trigger_1502003", GadgetActorProxy)
Trigger_1502003.defaultAlias = "Trigger_1502003"
local Q15020ClientConfig = require("Quest/Client/Q15020ClientConfig")

local this
local subIDs = Q15020ClientConfig.SubIDs
local datas = Q15020ClientConfig.Datas
local npcs = Q15020ClientConfig.Npcs
local points = Q15020ClientConfig.Points

function Trigger_1502003:OnPostDataPrepare()
    print("Trigger_1502003 - OnPostDataPrepare")
    this = self
end

function Trigger_1502003:OnPostComponentPrepare()
    print("Trigger_1502003 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15020)
end

function Trigger_1502003:TriggerIn()
    print("Trigger_1502003 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502003)
    this:DestroySelf()
end

function Trigger_1502003:PreTriggerIn()
    print("Trigger_1502003 - PreTriggerIn")
end

function Trigger_1502003:LightUpTriggerIn()
    print("Trigger_1502003 - LightUpTriggerIn")
end

function Trigger_1502003:TriggerOut()
    print("Trigger_1502003 - TriggerOut")
end

return Trigger_1502003
