require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_23 = class("Q40211Trigger_23", GadgetActorProxy)
Q40211Trigger_23.defaultAlias = "Q40211Trigger_23"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_23:OnPostDataPrepare()
    print("Q40211Trigger_23 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_23:OnPostComponentPrepare()
    print("Q40211Trigger_23 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_23:TriggerIn()
    print("Q40211Trigger_23 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021145)
    this:DestroySelf()
end

function Q40211Trigger_23:PreTriggerIn()
    print("Q40211Trigger_23 - PreTriggerIn")
end

function Q40211Trigger_23:LightUpTriggerIn()
    print("Q40211Trigger_23 - LightUpTriggerIn")
end

function Q40211Trigger_23:TriggerOut()
    print("Q40211Trigger_23 - TriggerOut")
end

return Q40211Trigger_23
