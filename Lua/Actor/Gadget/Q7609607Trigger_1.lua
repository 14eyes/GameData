require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609607Trigger_1 = class("Q7609607Trigger_1", GadgetActorProxy)
Q7609607Trigger_1.defaultAlias = "Q7609607Trigger_1"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609607Trigger_1:OnPostDataPrepare()
    print("Q7609607Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7609607Trigger_1:OnPostComponentPrepare()
    print("Q7609607Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 25, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609607Trigger_1:TriggerIn()
    print("Q7609607Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7609607)
    this:DestroySelf()
end

function Q7609607Trigger_1:PreTriggerIn()
    print("Q7609607Trigger_1 - PreTriggerIn")
end

function Q7609607Trigger_1:LightUpTriggerIn()
    print("Q7609607Trigger_1 - LightUpTriggerIn")
end

function Q7609607Trigger_1:TriggerOut()
    print("Q7609607Trigger_1 - TriggerOut")
end

return Q7609607Trigger_1
