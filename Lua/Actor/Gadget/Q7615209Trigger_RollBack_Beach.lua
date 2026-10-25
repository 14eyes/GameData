require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615209Trigger_RollBack_Beach = class("Q7615209Trigger_RollBack_Beach", GadgetActorProxy)
Q7615209Trigger_RollBack_Beach.defaultAlias = "Q7615209Trigger_RollBack_Beach"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615209Trigger_RollBack_Beach:OnPostDataPrepare()
    print("Q7615209Trigger_RollBack_Beach - OnPostDataPrepare")
    this = self
end

function Q7615209Trigger_RollBack_Beach:OnPostComponentPrepare()
    print("Q7615209Trigger_RollBack_Beach - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615209Trigger_RollBack_Beach:TriggerIn()
    print("Q7615209Trigger_RollBack_Beach - TriggerIn")
end

function Q7615209Trigger_RollBack_Beach:PreTriggerIn()
    print("Q7615209Trigger_RollBack_Beach - PreTriggerIn")
end

function Q7615209Trigger_RollBack_Beach:LightUpTriggerIn()
    print("Q7615209Trigger_RollBack_Beach - LightUpTriggerIn")
end

function Q7615209Trigger_RollBack_Beach:TriggerOut()
    print("Q7615209Trigger_RollBack_Beach - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7615209})
end

return Q7615209Trigger_RollBack_Beach
