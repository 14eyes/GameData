require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610112Trigger = class("Q7610112Trigger", GadgetActorProxy)
Q7610112Trigger.defaultAlias = "Q7610112Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610112Trigger:OnPostDataPrepare()
    print("Q7610112Trigger - OnPostDataPrepare")
    this = self
end

function Q7610112Trigger:OnPostComponentPrepare()
    print("Q7610112Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610112Trigger:TriggerIn()
    print("Q7610112Trigger - TriggerIn")
    actorMgr:GetActor("76101"):PlayCutsceneIndex(7610112, function(arg1)
        actorUtils.FinishQuestID(false, 7610112)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7610112Trigger:PreTriggerIn()
    print("Q7610112Trigger - PreTriggerIn")
end

function Q7610112Trigger:LightUpTriggerIn()
    print("Q7610112Trigger - LightUpTriggerIn")
end

function Q7610112Trigger:TriggerOut()
    print("Q7610112Trigger - TriggerOut")
end

return Q7610112Trigger
