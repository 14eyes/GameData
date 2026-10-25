require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501907 = class("Trigger_1501907", GadgetActorProxy)
Trigger_1501907.defaultAlias = "Trigger_1501907"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501907:OnPostDataPrepare()
    print("Trigger_1501907 - OnPostDataPrepare")
    this = self
end

function Trigger_1501907:OnPostComponentPrepare()
    print("Trigger_1501907 - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501907:TriggerIn()
    print("Trigger_1501907 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501907)
    this:DestroySelf()
end

function Trigger_1501907:PreTriggerIn()
    print("Trigger_1501907 - PreTriggerIn")
end

function Trigger_1501907:LightUpTriggerIn()
    print("Trigger_1501907 - LightUpTriggerIn")
end

function Trigger_1501907:TriggerOut()
    print("Trigger_1501907 - TriggerOut")
end

return Trigger_1501907
