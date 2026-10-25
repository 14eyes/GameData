require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019206Trigger = class("Q4019206Trigger", GadgetActorProxy)
Q4019206Trigger.defaultAlias = "Q4019206Trigger"
local Q40192ClientConfig = require("Quest/Client/Q40192ClientConfig")

local this
local subIDs = Q40192ClientConfig.SubIDs
local datas = Q40192ClientConfig.Datas
local npcs = Q40192ClientConfig.Npcs
local points = Q40192ClientConfig.Points

function Q4019206Trigger:OnPostDataPrepare()
    print("Q4019206Trigger - OnPostDataPrepare")
    this = self
end

function Q4019206Trigger:OnPostComponentPrepare()
    print("Q4019206Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40192)
end

function Q4019206Trigger:TriggerIn()
    print("Q4019206Trigger - TriggerIn")
end

function Q4019206Trigger:PreTriggerIn()
    print("Q4019206Trigger - PreTriggerIn")
end

function Q4019206Trigger:LightUpTriggerIn()
    print("Q4019206Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40192"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40192"):RequestInteraction(npcs.Npc1034.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019206Trigger:TriggerOut()
    print("Q4019206Trigger - TriggerOut")
end

return Q4019206Trigger
