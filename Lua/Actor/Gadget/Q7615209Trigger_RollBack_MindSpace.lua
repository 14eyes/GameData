require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615209Trigger_RollBack_MindSpace = class("Q7615209Trigger_RollBack_MindSpace", GadgetActorProxy)
Q7615209Trigger_RollBack_MindSpace.defaultAlias = "Q7615209Trigger_RollBack_MindSpace"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615209Trigger_RollBack_MindSpace:OnPostDataPrepare()
    print("Q7615209Trigger_RollBack_MindSpace - OnPostDataPrepare")
    this = self
end

function Q7615209Trigger_RollBack_MindSpace:OnPostComponentPrepare()
    print("Q7615209Trigger_RollBack_MindSpace - OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615209Trigger_RollBack_MindSpace:TriggerIn()
    print("Q7615209Trigger_RollBack_MindSpace - TriggerIn")
end

function Q7615209Trigger_RollBack_MindSpace:PreTriggerIn()
    print("Q7615209Trigger_RollBack_MindSpace - PreTriggerIn")
end

function Q7615209Trigger_RollBack_MindSpace:LightUpTriggerIn()
    print("Q7615209Trigger_RollBack_MindSpace - LightUpTriggerIn")
end

function Q7615209Trigger_RollBack_MindSpace:TriggerOut()
    print("Q7615209Trigger_RollBack_MindSpace - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7615210})
end

return Q7615209Trigger_RollBack_MindSpace
