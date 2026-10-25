require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501909 = class("Trigger_1501909", GadgetActorProxy)
Trigger_1501909.defaultAlias = "Trigger_1501909"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501909:OnPostDataPrepare()
    print("Trigger_1501909 - OnPostDataPrepare")
    this = self
end

function Trigger_1501909:OnPostComponentPrepare()
    print("Trigger_1501909 - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501909:TriggerIn()
    print("Trigger_1501909 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501909)
    this:DestroySelf()
end

function Trigger_1501909:PreTriggerIn()
    print("Trigger_1501909 - PreTriggerIn")
end

function Trigger_1501909:LightUpTriggerIn()
    print("Trigger_1501909 - LightUpTriggerIn")
end

function Trigger_1501909:TriggerOut()
    print("Trigger_1501909 - TriggerOut")
end

return Trigger_1501909
