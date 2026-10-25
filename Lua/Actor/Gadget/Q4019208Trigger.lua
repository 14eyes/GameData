require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019208Trigger = class("Q4019208Trigger", GadgetActorProxy)
Q4019208Trigger.defaultAlias = "Q4019208Trigger"
local Q40192ClientConfig = require("Quest/Client/Q40192ClientConfig")

local this
local subIDs = Q40192ClientConfig.SubIDs
local datas = Q40192ClientConfig.Datas
local npcs = Q40192ClientConfig.Npcs
local points = Q40192ClientConfig.Points

function Q4019208Trigger:OnPostDataPrepare()
    print("Q4019208Trigger - OnPostDataPrepare")
    this = self
end

function Q4019208Trigger:OnPostComponentPrepare()
    print("Q4019208Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40192)
end

function Q4019208Trigger:TriggerIn()
    print("Q4019208Trigger - TriggerIn")
end

function Q4019208Trigger:PreTriggerIn()
    print("Q4019208Trigger - PreTriggerIn")
end

function Q4019208Trigger:LightUpTriggerIn()
    print("Q4019208Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40192"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40192"):CreateQuestNpcById(4019208, npcs.Npc1034.id, 0, false, 0)
        actorMgr:GetActor("40192"):RequestInteraction(npcs.Npc1034.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019208Trigger:TriggerOut()
    print("Q4019208Trigger - TriggerOut")
end

return Q4019208Trigger
