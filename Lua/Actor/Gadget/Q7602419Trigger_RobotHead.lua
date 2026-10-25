require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602419Trigger_RobotHead = class("Q7602419Trigger_RobotHead", GadgetActorProxy)
Q7602419Trigger_RobotHead.defaultAlias = "Q7602419Trigger_RobotHead"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602419Trigger_RobotHead:OnPostDataPrepare()
    print("Q7602419Trigger_RobotHead - OnPostDataPrepare")
    this = self
end

function Q7602419Trigger_RobotHead:OnPostComponentPrepare()
    print("Q7602419Trigger_RobotHead - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602419Trigger_RobotHead:TriggerIn()
    print("Q7602419Trigger_RobotHead - TriggerIn")
    actorUtils.FinishQuestID(false, 7602411)
    this:DestroySelf()
end

function Q7602419Trigger_RobotHead:PreTriggerIn()
    print("Q7602419Trigger_RobotHead - PreTriggerIn")
end

function Q7602419Trigger_RobotHead:LightUpTriggerIn()
    print("Q7602419Trigger_RobotHead - LightUpTriggerIn")
end

function Q7602419Trigger_RobotHead:TriggerOut()
    print("Q7602419Trigger_RobotHead - TriggerOut")
end

return Q7602419Trigger_RobotHead
