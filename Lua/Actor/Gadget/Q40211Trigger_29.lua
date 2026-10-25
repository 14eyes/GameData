require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_29 = class("Q40211Trigger_29", GadgetActorProxy)
Q40211Trigger_29.defaultAlias = "Q40211Trigger_29"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_29:OnPostDataPrepare()
    print("Q40211Trigger_29 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_29:OnPostComponentPrepare()
    print("Q40211Trigger_29 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(28, 18, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_29:TriggerIn()
    print("Q40211Trigger_29 - TriggerIn")
    actorUtils.FinishQuestID(false, 4021156)
    this:DestroySelf()
end

function Q40211Trigger_29:PreTriggerIn()
    print("Q40211Trigger_29 - PreTriggerIn")
end

function Q40211Trigger_29:LightUpTriggerIn()
    print("Q40211Trigger_29 - LightUpTriggerIn")
end

function Q40211Trigger_29:TriggerOut()
    print("Q40211Trigger_29 - TriggerOut")
end

return Q40211Trigger_29
