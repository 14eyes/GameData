require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019109Trigger = class("Q4019109Trigger", GadgetActorProxy)
Q4019109Trigger.defaultAlias = "Q4019109Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019109Trigger:OnPostDataPrepare()
    print("Q4019109Trigger - OnPostDataPrepare")
    this = self
end

function Q4019109Trigger:OnPostComponentPrepare()
    print("Q4019109Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019109Trigger:TriggerIn()
    print("Q4019109Trigger - TriggerIn")
end

function Q4019109Trigger:PreTriggerIn()
    print("Q4019109Trigger - PreTriggerIn")
end

function Q4019109Trigger:LightUpTriggerIn()
    print("Q4019109Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40191"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40191"):CreateQuestNpcById(4019109, npcs.Npc3024.id, 0, false, 0)
        actorMgr:GetActor("40191"):RequestInteraction(npcs.Npc3024.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019109Trigger:TriggerOut()
    print("Q4019109Trigger - TriggerOut")
end

return Q4019109Trigger
