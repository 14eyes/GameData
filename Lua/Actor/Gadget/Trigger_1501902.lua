require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501902 = class("Trigger_1501902", GadgetActorProxy)
Trigger_1501902.defaultAlias = "Trigger_1501902"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501902:OnPostDataPrepare()
    print("Trigger_1501902 - OnPostDataPrepare")
    this = self
end

function Trigger_1501902:OnPostComponentPrepare()
    print("Trigger_1501902 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(22.877647, 19.975784, 21.43346, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501902:TriggerIn()
    print("Trigger_1501902 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501902)
    this:DestroySelf()
end

function Trigger_1501902:PreTriggerIn()
    print("Trigger_1501902 - PreTriggerIn")
end

function Trigger_1501902:LightUpTriggerIn()
    print("Trigger_1501902 - LightUpTriggerIn")
end

function Trigger_1501902:TriggerOut()
    print("Trigger_1501902 - TriggerOut")
end

return Trigger_1501902
