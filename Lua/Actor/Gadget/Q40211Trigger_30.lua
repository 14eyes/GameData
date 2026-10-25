require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_30 = class("Q40211Trigger_30", GadgetActorProxy)
Q40211Trigger_30.defaultAlias = "Q40211Trigger_30"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_30:OnPostDataPrepare()
    print("Q40211Trigger_30 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_30:OnPostComponentPrepare()
    print("Q40211Trigger_30 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 10, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_30:TriggerIn()
    print("Q40211Trigger_30 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021135)
    this:DestroySelf()
end

function Q40211Trigger_30:PreTriggerIn()
    print("Q40211Trigger_30 - PreTriggerIn")
end

function Q40211Trigger_30:LightUpTriggerIn()
    print("Q40211Trigger_30 - LightUpTriggerIn")
end

function Q40211Trigger_30:TriggerOut()
    print("Q40211Trigger_30 - TriggerOut")
end

return Q40211Trigger_30
