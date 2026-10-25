require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019216Trigger = class("Q4019216Trigger", GadgetActorProxy)
Q4019216Trigger.defaultAlias = "Q4019216Trigger"
local Q40192ClientConfig = require("Quest/Client/Q40192ClientConfig")

local this
local subIDs = Q40192ClientConfig.SubIDs
local datas = Q40192ClientConfig.Datas
local npcs = Q40192ClientConfig.Npcs
local points = Q40192ClientConfig.Points

function Q4019216Trigger:OnPostDataPrepare()
    print("Q4019216Trigger - OnPostDataPrepare")
    this = self
end

function Q4019216Trigger:OnPostComponentPrepare()
    print("Q4019216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40192)
end

function Q4019216Trigger:TriggerIn()
    print("Q4019216Trigger - TriggerIn")
    actorMgr:GetActor("40192"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40192"):PlayerEnterDungeonWithData(1506, 1238, 4019205, 2, nil, nil, nil)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019216Trigger:PreTriggerIn()
    print("Q4019216Trigger - PreTriggerIn")
end

function Q4019216Trigger:LightUpTriggerIn()
    print("Q4019216Trigger - LightUpTriggerIn")
end

function Q4019216Trigger:TriggerOut()
    print("Q4019216Trigger - TriggerOut")
end

return Q4019216Trigger
