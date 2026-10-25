require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019205Trigger = class("Q4019205Trigger", GadgetActorProxy)
Q4019205Trigger.defaultAlias = "Q4019205Trigger"
local Q40192ClientConfig = require("Quest/Client/Q40192ClientConfig")

local this
local subIDs = Q40192ClientConfig.SubIDs
local datas = Q40192ClientConfig.Datas
local npcs = Q40192ClientConfig.Npcs
local points = Q40192ClientConfig.Points

function Q4019205Trigger:OnPostDataPrepare()
    print("Q4019205Trigger - OnPostDataPrepare")
    this = self
end

function Q4019205Trigger:OnPostComponentPrepare()
    print("Q4019205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40192)
end

function Q4019205Trigger:TriggerIn()
    print("Q4019205Trigger - TriggerIn")
    actorMgr:GetActor("40192"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40192"):RequestInteraction(npcs.Npc15078.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q4019205Trigger:PreTriggerIn()
    print("Q4019205Trigger - PreTriggerIn")
end

function Q4019205Trigger:LightUpTriggerIn()
    print("Q4019205Trigger - LightUpTriggerIn")
end

function Q4019205Trigger:TriggerOut()
    print("Q4019205Trigger - TriggerOut")
end

return Q4019205Trigger
