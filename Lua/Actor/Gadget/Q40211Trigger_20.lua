require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_20 = class("Q40211Trigger_20", GadgetActorProxy)
Q40211Trigger_20.defaultAlias = "Q40211Trigger_20"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_20:OnPostDataPrepare()
    print("Q40211Trigger_20 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_20:OnPostComponentPrepare()
    print("Q40211Trigger_20 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_20:TriggerIn()
    print("Q40211Trigger_20 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021142)
    this:DestroySelf()
end

function Q40211Trigger_20:PreTriggerIn()
    print("Q40211Trigger_20 - PreTriggerIn")
end

function Q40211Trigger_20:LightUpTriggerIn()
    print("Q40211Trigger_20 - LightUpTriggerIn")
end

function Q40211Trigger_20:TriggerOut()
    print("Q40211Trigger_20 - TriggerOut")
end

return Q40211Trigger_20
