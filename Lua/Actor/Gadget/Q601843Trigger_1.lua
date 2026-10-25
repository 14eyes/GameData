require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601843Trigger_1 = class("Q601843Trigger_1", GadgetActorProxy)
Q601843Trigger_1.defaultAlias = "Q601843Trigger_1"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601843Trigger_1:OnPostDataPrepare()
    print("Q601843Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q601843Trigger_1:OnPostComponentPrepare()
    print("Q601843Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 30, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601843Trigger_1:TriggerIn()
    print("Q601843Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 601843)
    this:DestroySelf()
end

function Q601843Trigger_1:PreTriggerIn()
    print("Q601843Trigger_1 - PreTriggerIn")
end

function Q601843Trigger_1:LightUpTriggerIn()
    print("Q601843Trigger_1 - LightUpTriggerIn")
end

function Q601843Trigger_1:TriggerOut()
    print("Q601843Trigger_1 - TriggerOut")
end

return Q601843Trigger_1
