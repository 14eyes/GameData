require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019108Trigger = class("Q4019108Trigger", GadgetActorProxy)
Q4019108Trigger.defaultAlias = "Q4019108Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019108Trigger:OnPostDataPrepare()
    print("Q4019108Trigger - OnPostDataPrepare")
    this = self
end

function Q4019108Trigger:OnPostComponentPrepare()
    print("Q4019108Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019108Trigger:TriggerIn()
    print("Q4019108Trigger - TriggerIn")
end

function Q4019108Trigger:PreTriggerIn()
    print("Q4019108Trigger - PreTriggerIn")
end

function Q4019108Trigger:LightUpTriggerIn()
    print("Q4019108Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40191"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40191"):CreateQuestNpcById(4019108, npcs.Npc15078.id, 0, false, 0)
        actorMgr:GetActor("40191"):RequestInteraction(npcs.Npc15078.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)

    actorMgr:GetActor("40191"):BanCrowdNpc(1202, 1, nil, true)
end

function Q4019108Trigger:TriggerOut()
    print("Q4019108Trigger - TriggerOut")
end

return Q4019108Trigger
