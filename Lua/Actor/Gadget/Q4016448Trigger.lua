require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016448Trigger = class("Q4016448Trigger", GadgetActorProxy)
Q4016448Trigger.defaultAlias = "Q4016448Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016448Trigger:OnPostDataPrepare()
    print("Q4016448Trigger - OnPostDataPrepare")
    this = self
end

function Q4016448Trigger:OnPostComponentPrepare()
    print("Q4016448Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016448Trigger:TriggerIn()
    print("Q4016448Trigger - TriggerIn")
    actorMgr:GetActor("40164"):PlayCutsceneIndex(4016404, function(arg1)
        actorUtils.FinishQuestID(false, 4016448)
    end, nil, nil, false)

    this:DestroySelf()
end

function Q4016448Trigger:PreTriggerIn()
    print("Q4016448Trigger - PreTriggerIn")
end

function Q4016448Trigger:LightUpTriggerIn()
    print("Q4016448Trigger - LightUpTriggerIn")
end

function Q4016448Trigger:TriggerOut()
    print("Q4016448Trigger - TriggerOut")
end

return Q4016448Trigger
