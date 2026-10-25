require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016711Trigger = class("Q4016711Trigger", GadgetActorProxy)
Q4016711Trigger.defaultAlias = "Q4016711Trigger"
local Q40167ClientConfig = require("Quest/Client/Q40167ClientConfig")

local this
local subIDs = Q40167ClientConfig.SubIDs
local datas = Q40167ClientConfig.Datas
local npcs = Q40167ClientConfig.Npcs
local points = Q40167ClientConfig.Points

function Q4016711Trigger:OnPostDataPrepare()
    print("Q4016711Trigger - OnPostDataPrepare")
    this = self
end

function Q4016711Trigger:OnPostComponentPrepare()
    print("Q4016711Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40167)
end

function Q4016711Trigger:TriggerIn()
    print("Q4016711Trigger - TriggerIn")
    actorMgr:GetActor("40167"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("40167"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
            actorMgr:GetActor("40167"):CreateQuestNpcById(4016711, npcs.Npc1067.id, 1, false, 0)
            actorMgr:GetActor("40167"):RequestInteraction(npcs.Npc1067.alias, "", true)
            this:DestroySelf()
        end, nil, nil, 0, false, true)
    end)
end

function Q4016711Trigger:PreTriggerIn()
    print("Q4016711Trigger - PreTriggerIn")
end

function Q4016711Trigger:LightUpTriggerIn()
    print("Q4016711Trigger - LightUpTriggerIn")
end

function Q4016711Trigger:TriggerOut()
    print("Q4016711Trigger - TriggerOut")
end

return Q4016711Trigger
