require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609905Trigger = class("Q7609905Trigger", GadgetActorProxy)
Q7609905Trigger.defaultAlias = "Q7609905Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609905Trigger:OnPostDataPrepare()
    print("Q7609905Trigger - OnPostDataPrepare")
    this = self
end

function Q7609905Trigger:OnPostComponentPrepare()
    print("Q7609905Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609905Trigger:TriggerIn()
    print("Q7609905Trigger - TriggerIn")
    actorMgr:GetActor("76099"):PlayCutsceneIndex(7609905, function(arg1)
        actorUtils.FinishQuestID(false, 7609905)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7609905Trigger:PreTriggerIn()
    print("Q7609905Trigger - PreTriggerIn")
end

function Q7609905Trigger:LightUpTriggerIn()
    print("Q7609905Trigger - LightUpTriggerIn")
end

function Q7609905Trigger:TriggerOut()
    print("Q7609905Trigger - TriggerOut")
end

return Q7609905Trigger
