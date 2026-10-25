require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_13 = class("Q40211Trigger_13", GadgetActorProxy)
Q40211Trigger_13.defaultAlias = "Q40211Trigger_13"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_13:OnPostDataPrepare()
    print("Q40211Trigger_13 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_13:OnPostComponentPrepare()
    print("Q40211Trigger_13 - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_13:TriggerIn()
    print("Q40211Trigger_13 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021160)
    this:DestroySelf()
end

function Q40211Trigger_13:PreTriggerIn()
    print("Q40211Trigger_13 - PreTriggerIn")
end

function Q40211Trigger_13:LightUpTriggerIn()
    print("Q40211Trigger_13 - LightUpTriggerIn")
end

function Q40211Trigger_13:TriggerOut()
    print("Q40211Trigger_13 - TriggerOut")
end

return Q40211Trigger_13
