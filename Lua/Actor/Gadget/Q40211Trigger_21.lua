require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_21 = class("Q40211Trigger_21", GadgetActorProxy)
Q40211Trigger_21.defaultAlias = "Q40211Trigger_21"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_21:OnPostDataPrepare()
    print("Q40211Trigger_21 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_21:OnPostComponentPrepare()
    print("Q40211Trigger_21 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_21:TriggerIn()
    print("Q40211Trigger_21 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021143)
    this:DestroySelf()
end

function Q40211Trigger_21:PreTriggerIn()
    print("Q40211Trigger_21 - PreTriggerIn")
end

function Q40211Trigger_21:LightUpTriggerIn()
    print("Q40211Trigger_21 - LightUpTriggerIn")
end

function Q40211Trigger_21:TriggerOut()
    print("Q40211Trigger_21 - TriggerOut")
end

return Q40211Trigger_21
